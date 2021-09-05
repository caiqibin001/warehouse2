package com.fc.v2.controller.admin;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.fc.v2.common.base.BaseController;
import com.fc.v2.common.domain.ResultTable;
import com.fc.v2.mapper.auto.CkReserverMapper;
import com.fc.v2.mapper.auto.TSysDictDataMapper;
import com.fc.v2.model.VO.RrfidVo;
import com.fc.v2.model.auto.CkReserver;
import com.fc.v2.model.auto.TSysDictData;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import java.util.*;
import java.util.concurrent.*;
import java.util.stream.Collectors;

@Api(value = "RFID扫描入口战备物资")
@Controller
@RequestMapping("/InReserverController")
public class InReserverController extends BaseController {

    private String prefix = "admin/ckReserver";
    @Autowired
    private RestTemplate restTemplate;
    @Autowired
    private CkReserverMapper ckReserverMapper;

    @Autowired
    private TSysDictDataMapper tSysDictDataMapper;

    private volatile static List<CkReserver> inReserverList;
    //单例构建缓存
    public static List<CkReserver> getInReserverList() {
        if (inReserverList == null) {
            synchronized (InReserverController.class) {
                if (inReserverList == null) {
                    synchronized (InReserverController.class) {
                        inReserverList = new ArrayList<>();
                    }
                }
            }
        }
        return inReserverList;
    }

    public List<String> getInReaderNameList() {
        QueryWrapper<TSysDictData> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("dictType","inReaderNames");
        List<TSysDictData> tSysDictDataList = tSysDictDataMapper.selectList(queryWrapper);
        List<String> list = tSysDictDataList.stream().map(tSysDictData->tSysDictData.getDictValue()).collect(Collectors.toList());
        if (ObjectUtils.isEmpty(list)) {
            list = new ArrayList<>(1);
            list.add("1/192.168.222.100");
        }
        return list;
    }

    public String getInReaderURL() {
        String inReaderURL = "http://192.168.222.221:10090/midwareevent";
        QueryWrapper<TSysDictData> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("dictType","inReaderURL");
        TSysDictData tSysDictData = tSysDictDataMapper.selectOne(queryWrapper);
        inReaderURL = tSysDictData.getDictValue();
        return inReaderURL;
    }

    @ApiOperation(value = "入库页面", notes = "入库页面")
    @GetMapping("/in")
    @RequiresPermissions("system:ckReserver:in")
    public String view(ModelMap model) {

        CompletableFuture c = CompletableFuture.runAsync(()->{
            getInReserver();
            try {
                Thread.sleep(200);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        });

        try {
            Thread.sleep(3000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        InReserverController.getInReserverList().clear();
        c.cancel(true);
        return prefix + "/in";
    }

    @ApiOperation(value = "分页跳转", notes = "分页跳转")
    @GetMapping("/inReserverlist")
    @RequiresPermissions("system:ckReserver:inReserverlist")
    @ResponseBody
    public ResultTable getInReserverVO() {
        return dataTable(InReserverController.getInReserverList());
    }

    public void getInReserver(){
        getInReaderNameList().forEach(inReaderName -> {
            RrfidVo rfidVo = getRrfidVo(inReaderName,getInReaderURL());
            if (rfidVo.getErr_code().equals("0")) {
                rfidVo.getMsg_data().forEach(data -> {
                    QueryWrapper<CkReserver> queryWrapper = new QueryWrapper<>();
                    queryWrapper.eq("rfid",data.getEpc());
                    CkReserver ckReserver = ckReserverMapper.selectOne(queryWrapper);
                    InReserverController.getInReserverList().add(ckReserver);
                });
            }
        });
    }

    private RrfidVo getRrfidVo(String inReaderName, String inReaderURL) {
        Map<String,Object> map = new HashMap<>();
        map.put("msg_data",inReaderName);
        map.put("msg_type",63);
        HttpHeaders httpHeaders = new HttpHeaders();
        httpHeaders.set("Content-Type","application/json");
        HttpEntity requestEntity = new HttpEntity(map,httpHeaders);
        return restTemplate.postForObject(inReaderURL, requestEntity,RrfidVo.class);
    }


}
