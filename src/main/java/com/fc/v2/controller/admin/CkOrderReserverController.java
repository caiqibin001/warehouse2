package com.fc.v2.controller.admin;

import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.fc.v2.common.base.BaseController;
import com.fc.v2.common.domain.AjaxResult;
import com.fc.v2.common.domain.ResultTable;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.model.auto.CkOrderReserver;
import com.fc.v2.service.ICkOrderReserverService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

/**
 * 出库单关联表 Controller
 *
 * @author ben
 * @date 2021-09-01 21:50:55
 */
@Api(value = "出库单关联表")
@Controller
@RequestMapping("/CkOrderReserverController")
public class CkOrderReserverController extends BaseController {

    private String prefix = "admin/ckOrderReserver";

    @Autowired
    private ICkOrderReserverService ckOrderReserverService;


    /**
     * 出库单关联表页面展示
     *
     * @param model
     * @return String
     */
    @ApiOperation(value = "分页跳转", notes = "分页跳转")
    @GetMapping("/view")
    @RequiresPermissions("system:ckOrderReserver:view")
    public String view(ModelMap model) {
        return prefix + "/list";
    }

    /**
     * list集合
     *
     * @param tablepar
     * @return ResultTable
     */
    //@Log(title = "出库单关联表", action = "111")
    @ApiOperation(value = "分页跳转", notes = "分页跳转")
    @GetMapping("/list")
    @RequiresPermissions("system:ckOrderReserver:list")
    @ResponseBody
    public ResultTable list(Tablepar tablepar) {
        QueryWrapper<CkOrderReserver> queryWrapper = new QueryWrapper<CkOrderReserver>();

        if (StrUtil.isNotEmpty(tablepar.getSearchText())) {
            queryWrapper.like("自定义", tablepar.getSearchText());
        }

        if (StrUtil.isNotEmpty(tablepar.getOrderByColumn())) {
            queryWrapper.orderByAsc(tablepar.getOrderByColumn());
        }

        PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());

        PageInfo<CkOrderReserver> page = new PageInfo<CkOrderReserver>(ckOrderReserverService.selectCkOrderReserverList(queryWrapper));
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

    /**
     * 新增保存
     *
     * @param ckOrderReserver
     * @return
     */
    //@Log(title = "出库单关联表新增", action = "111")
    @ApiOperation(value = "新增", notes = "新增")
    @PostMapping("/add")
    @RequiresPermissions("system:ckOrderReserver:add")
    @ResponseBody
    public AjaxResult add(CkOrderReserver ckOrderReserver) {
		return toAjax(ckOrderReserverService.insertCkOrderReserver(ckOrderReserver));
    }

    /**
     * 出库单关联表删除
     *
     * @param ids
     * @return
     */
    //@Log(title = "出库单关联表删除", action = "111")
    @ApiOperation(value = "删除", notes = "删除")
    @DeleteMapping("/remove")
    @RequiresPermissions("system:ckOrderReserver:remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
		return toAjax(ckOrderReserverService.deleteCkOrderReserverByIds(ids));
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
        map.put("CkOrderReserver", ckOrderReserverService.selectCkOrderReserverById(id));
        return prefix + "/edit";
    }

    /**
     * 修改保存
     *
     * @param ckOrderReserver
     * @return
     */
    //@Log(title = "出库单关联表修改", action = "111")
    @ApiOperation(value = "修改保存", notes = "修改保存")
    @RequiresPermissions("system:ckOrderReserver:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(CkOrderReserver ckOrderReserver) {
        return toAjax(ckOrderReserverService.updateCkOrderReserver(ckOrderReserver));
    }


    /**
     * 修改状态
     *
     * @param ckOrderReserver
     * @return
     */
    @PutMapping("/updateVisible")
    @ResponseBody
    public AjaxResult updateVisible(@RequestBody CkOrderReserver ckOrderReserver) {
        return toAjax(ckOrderReserverService.updateVisible(ckOrderReserver));
    }
}
