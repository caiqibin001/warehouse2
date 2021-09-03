package com.fc.v2.controller.admin;

import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.fc.v2.common.base.BaseController;
import com.fc.v2.common.domain.AjaxResult;
import com.fc.v2.common.domain.ResultTable;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.model.auto.CkMaterial;
import com.fc.v2.service.ICkMaterialService;
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
 * 物资信息 Controller
 *
 * @author ben
 * @date 2021-08-29 18:10:10
 */
@Api(value = "物资信息")
@Controller
@RequestMapping("/CkMaterialController")
public class CkMaterialController extends BaseController {

    private String prefix = "admin/ckMaterial";

    @Autowired
    private ICkMaterialService ckMaterialService;


    /**
     * 物资信息页面展示
     *
     * @param model
     * @return String
     */
    @ApiOperation(value = "分页跳转", notes = "分页跳转")
    @GetMapping("/view")
    @RequiresPermissions("system:ckMaterial:view")
    public String view(ModelMap model) {
        return prefix + "/list";
    }

    /**
     * list集合
     *
     * @param tablepar
     * @return ResultTable
     */
    //@Log(title = "物资信息", action = "111")
    @ApiOperation(value = "分页跳转", notes = "分页跳转")
    @GetMapping("/list")
    @RequiresPermissions("system:ckMaterial:list")
    @ResponseBody
    public ResultTable list(Tablepar tablepar) {
        QueryWrapper<CkMaterial> queryWrapper = new QueryWrapper<CkMaterial>();

        if (StrUtil.isNotEmpty(tablepar.getSearchText())) {
            queryWrapper.like("自定义", tablepar.getSearchText());
        }

        if (StrUtil.isNotEmpty(tablepar.getOrderByColumn())) {
            queryWrapper.orderByAsc(tablepar.getOrderByColumn());
        }

        PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());

        PageInfo<CkMaterial> page = new PageInfo<CkMaterial>(ckMaterialService.selectCkMaterialList(queryWrapper));
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
     * @param ckMaterial
     * @return
     */
    //@Log(title = "物资信息新增", action = "111")
    @ApiOperation(value = "新增", notes = "新增")
    @PostMapping("/add")
    @RequiresPermissions("system:ckMaterial:add")
    @ResponseBody
    public AjaxResult add(CkMaterial ckMaterial) {
		return toAjax(ckMaterialService.insertCkMaterial(ckMaterial));
    }

    /**
     * 物资信息删除
     *
     * @param ids
     * @return
     */
    //@Log(title = "物资信息删除", action = "111")
    @ApiOperation(value = "删除", notes = "删除")
    @DeleteMapping("/remove")
    @RequiresPermissions("system:ckMaterial:remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
		return toAjax(ckMaterialService.deleteCkMaterialByIds(ids));
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
        map.put("CkMaterial", ckMaterialService.selectCkMaterialById(id));
        return prefix + "/edit";
    }

    /**
     * 修改保存
     *
     * @param ckMaterial
     * @return
     */
    //@Log(title = "物资信息修改", action = "111")
    @ApiOperation(value = "修改保存", notes = "修改保存")
    @RequiresPermissions("system:ckMaterial:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(CkMaterial ckMaterial) {
        return toAjax(ckMaterialService.updateCkMaterial(ckMaterial));
    }


    /**
     * 修改状态
     *
     * @param ckMaterial
     * @return
     */
    @PutMapping("/updateVisible")
    @ResponseBody
    public AjaxResult updateVisible(@RequestBody CkMaterial ckMaterial) {
        return toAjax(ckMaterialService.updateVisible(ckMaterial));
    }
}
