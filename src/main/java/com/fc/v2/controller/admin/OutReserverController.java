package com.fc.v2.controller.admin;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.fc.v2.common.base.BaseController;
import com.fc.v2.common.domain.ResultTable;
import com.fc.v2.mapper.auto.CkReserverMapper;
import com.fc.v2.mapper.auto.TSysDictDataMapper;
import com.fc.v2.model.VO.RrfidVo;
import com.fc.v2.model.auto.CkReserver;
import com.fc.v2.model.auto.Status;
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

import javax.accessibility.AccessibleKeyBinding;
import java.util.*;
import java.util.concurrent.CompletableFuture;
import java.util.stream.Collectors;

@Api(value = "RFID扫描出口战备物资")
@Controller
@RequestMapping("/OutReserverController")
public class OutReserverController extends BaseController {

    private String prefix = "admin/ckReserver";
    @Autowired
    private RestTemplate restTemplate;
    @Autowired
    private CkReserverMapper ckReserverMapper;
    @Autowired
    private TSysDictDataMapper tSysDictDataMapper;
    //rfid缓存区，待出库容器
    private volatile static Set<CkReserver> outReserverList;
    //单例构建缓存
    public static Set<CkReserver> getOutReserverList() {
        if (outReserverList == null) {
            synchronized (OutReserverController.class) {
                if (outReserverList == null) {
                    synchronized (OutReserverController.class) {
                        outReserverList = new HashSet<>();
                    }
                }
            }
        }
        return outReserverList;
    }

    /**
     * 初始化出库页面
     * 从数据库中查询待出库的列表到缓存中
     * @return
     */
    @ApiOperation(value = "出库页面", notes = "出库页面")
    @GetMapping("/out")
    public String view() {
        OutReserverController.getOutReserverList().clear();
        CompletableFuture.runAsync(()->{
            QueryWrapper<CkReserver> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("status", Status.OUTING);
            List<CkReserver> ckReserverList = ckReserverMapper.selectList(queryWrapper);
            OutReserverController.getOutReserverList().addAll(ckReserverList);
        });

        return prefix + "/out";
    }

    /**
     * 300毫秒调用一次刷新此页面获取最新数据，以及入库数据
     * @return
     */
    @ApiOperation(value = "分页跳转", notes = "分页跳转")
    @GetMapping("/outReserverlist")
    @ResponseBody
    public ResultTable getOutReserverVO() {
        Map map = new HashMap();
        map.put("outReserverList",OutReserverController.getOutReserverList());
        List<String> goodsNameList = OutReserverController.getOutReserverList()
                .stream().map(reserver -> reserver.getGoodsName())
                .collect(Collectors.toList());
        map.put("goodsNameList",goodsNameList);

        getOutReserver();
        return dataTable(map);
    }

    public void getOutReserver(){
        getOutReaderNameList().forEach(outReaderName -> {
            RrfidVo rfidVo = getRrfidVo(outReaderName,getOutReaderURL());
            if (!ObjectUtils.isEmpty(rfidVo) && rfidVo.getErr_code().equals("0")) {
                rfidVo.getMsg_data().forEach(data -> {
                    OutReserverController.getOutReserverList().forEach(ckReserver -> {
                        if (ckReserver.getRfid().equals(data.getEpc())) {
                            synchronized (OutReserverController.class) {
                                OutReserverController.getOutReserverList().remove(ckReserver);
                                ckReserver.setStatus(Status.OUT);
                                ckReserverMapper.updateById(ckReserver);
                            }
                        }
                    });
                });
            }
        });
    }

    private RrfidVo getRrfidVo(String OutReaderName, String OutReaderURL) {
//        Map<String,Object> map = new HashMap<>();
//        map.put("msg_data",OutReaderName);
//        map.put("msg_type",63);
//        HttpHeaders httpHeaders = new HttpHeaders();
//        httpHeaders.set("Content-Type","application/json");
//        HttpEntity requestEntity = new HttpEntity(map,httpHeaders);
//        return restTemplate.postForObject(OutReaderURL, requestEntity,RrfidVo.class);
        return null;//mock
    }


    /**
     * 从字典获取出库读卡器名称
     * @return
     */
    public List<String> getOutReaderNameList() {
        QueryWrapper<TSysDictData> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("dict_type","outReaderNames");
        List<TSysDictData> tSysDictDataList = tSysDictDataMapper.selectList(queryWrapper);
        List<String> list = tSysDictDataList.stream().map(tSysDictData -> tSysDictData.getDictValue()).collect(Collectors.toList());
        if (ObjectUtils.isEmpty(list)) {
            list = new ArrayList<>(1);
            list.add("1/192.168.222.100");
        }
        return list;
    }

    /**
     * 从字典获取服务器地址进行读取rfid
     * @return
     */
    public String getOutReaderURL() {
        String OutReaderURL = "http://192.168.222.221:10090/midwareevent";
        QueryWrapper<TSysDictData> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("dict_type","readerURL");
        TSysDictData tSysDictData = tSysDictDataMapper.selectOne(queryWrapper);
        if (!ObjectUtils.isEmpty(tSysDictData)) {
            OutReaderURL = tSysDictData.getDictValue();
        }
        return OutReaderURL;
    }


}
