package com.fc.v2.controller.admin;

import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.fc.v2.common.base.BaseController;
import com.fc.v2.common.domain.AjaxResult;
import com.fc.v2.common.domain.ResultTable;
import com.fc.v2.model.auto.CkMaterial;
import com.fc.v2.model.auto.Status;
import com.fc.v2.model.auto.TSysCity;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.model.auto.CkReserver;
import com.fc.v2.service.ICkMaterialService;
import com.fc.v2.service.ICkReserverService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 战备物资 Controller
 *
 * @author ben
 * @date 2021-08-29 15:18:31
 */
@Api(value = "战备物资")
@Controller
@RequestMapping("/CkReserverController")
public class CkReserverController extends BaseController {

    private String prefix = "admin/ckReserver";

    @Autowired
    private ICkReserverService ckReserverService;
    @Autowired
    private ICkMaterialService ckMaterialService;

    @ApiOperation(value = "rfid查询", notes = "rfid查询")
    @GetMapping("/getByRfid")
    public ResultTable getReserverByRfid(@RequestParam String rfid) {
        QueryWrapper<CkReserver> queryWrapper = new QueryWrapper<CkReserver>();
        queryWrapper.eq("rfid",rfid);
        return dataTable(ckReserverService.selectCkReserverList(queryWrapper).get(0));
    }

    @ApiOperation(value = "确认入库", notes = "确认入库")
    @PostMapping("/saveByRfid")
    @ResponseBody
    public AjaxResult saveByRfid(@RequestBody CkReserver ckReserver) {
        ckReserver.setStatus(Status.IN);
        return toAjax(ckReserverService.updateCkReserver(ckReserver));
    }

    @ApiOperation(value = "根据条件查询列表", notes = "根据条件查询列表")
    @PostMapping("/selectReservers")
    @ResponseBody
    public ResultTable selectReservers(CkReserver ckReserver) {
        List<CkReserver> reserverList = ckReserverService.selectCkReserverList(ckReserver);
        return dataTable(reserverList);
    }
    /**
     * 战备物资页面展示
     *
     * @param model
     * @return String
     */
    @ApiOperation(value = "分页跳转", notes = "分页跳转")
    @GetMapping("/view")
    @RequiresPermissions("system:ckReserver:view")
    public String view(ModelMap model) {
        return prefix + "/list";
    }

    /**
     * list集合
     *
     * @param tablepar
     * @return ResultTable
     */
    //@Log(title = "战备物资", action = "111")
    @ApiOperation(value = "分页跳转", notes = "分页跳转")
    @GetMapping("/list")
    @RequiresPermissions("system:ckReserver:list")
    @ResponseBody
    public ResultTable list(Tablepar tablepar) {
        QueryWrapper<CkReserver> queryWrapper = new QueryWrapper<CkReserver>();

        if (StrUtil.isNotEmpty(tablepar.getSearchText())) {
            queryWrapper.like("rfid", tablepar.getSearchText());
        }
        if (!ObjectUtils.isEmpty(tablepar.getStatus())) {
            queryWrapper.like("status", tablepar.getSearchText());
        }

        queryWrapper.orderByDesc("createTime");


        PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());

        PageInfo<CkReserver> page = new PageInfo<CkReserver>(ckReserverService.selectCkReserverList(queryWrapper));
        return pageTable(page.getList(), page.getTotal());

    }

    /**
     * 新增跳转
     *
     * @param modelMap
     * @return
     */
    @ApiOperation(value = "新增跳转", notes = "新增跳转")
    @GetMapping("/add")
    public String add(ModelMap modelMap) {
        return prefix + "/add";
    }


    @ApiOperation(value = "根据物资类型查询", notes = "根据物资类型查询")
    @GetMapping("/getMaterial")
    @ResponseBody
    public List<CkMaterial> getMaterial(String typeId) {
        QueryWrapper<CkMaterial> queryWrapper = new QueryWrapper<CkMaterial>();
        queryWrapper.eq("type_id", typeId);
        return ckMaterialService.selectCkMaterialList(queryWrapper);

    }

    /**
     * 新增保存
     *
     * @param ckReserver
     * @return
     */
    //@Log(title = "战备物资新增", action = "111")
    @ApiOperation(value = "新增", notes = "新增")
    @PostMapping("/add")
    @RequiresPermissions("system:ckReserver:add")
    @ResponseBody
    public AjaxResult add(CkReserver ckReserver) {
		return toAjax(ckReserverService.insertCkReserver(ckReserver));
    }

    /**
     * 战备物资删除
     *
     * @param ids
     * @return
     */
    //@Log(title = "战备物资删除", action = "111")
    @ApiOperation(value = "删除", notes = "删除")
    @DeleteMapping("/remove")
    @RequiresPermissions("system:ckReserver:remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
		return toAjax(ckReserverService.deleteCkReserverByIds(ids));
    }


    /**
     * 修改跳转
     *
     * @param id
     * @param map
     * @return
     */
    @ApiOperation(value = "修改跳转", notes = "修改跳转")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap map) {
        map.put("CkReserver", ckReserverService.selectCkReserverById(id));
        return prefix + "/edit";
    }

    /**
     * 修改保存
     *
     * @param ckReserver
     * @return
     */
    //@Log(title = "战备物资修改", action = "111")
    @ApiOperation(value = "修改保存", notes = "修改保存")
    @RequiresPermissions("system:ckReserver:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(CkReserver ckReserver) {
        return toAjax(ckReserverService.updateCkReserver(ckReserver));
    }


    /**
     * 修改状态
     *
     * @param ckReserver
     * @return
     */
    @PutMapping("/updateVisible")
    @ResponseBody
    public AjaxResult updateVisible(@RequestBody CkReserver ckReserver) {
        return toAjax(ckReserverService.updateVisible(ckReserver));
    }
}
