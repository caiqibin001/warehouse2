package com.fc.v2.controller.admin;

import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.fc.v2.common.base.BaseController;
import com.fc.v2.common.domain.AjaxResult;
import com.fc.v2.common.domain.ResuTree;
import com.fc.v2.common.domain.ResultTable;
import com.fc.v2.model.auto.TSysPermission;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.model.auto.CkMaterialType;
import com.fc.v2.service.ICkMaterialTypeService;
import com.fc.v2.util.StringUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 物资类别 Controller
 *
 * @author ben
 * @date 2021-08-29 16:04:03
 */
@Api(value = "物资类别")
@Controller
@RequestMapping("/CkMaterialTypeController")
public class CkMaterialTypeController extends BaseController {

    private String prefix = "admin/ckMaterialType";

    @Autowired
    private ICkMaterialTypeService ckMaterialTypeService;


    /**
     * 物资类别页面展示
     *
     * @param model
     * @return String
     */
    @ApiOperation(value = "分页跳转", notes = "分页跳转")
    @GetMapping("/view")
    @RequiresPermissions("system:ckMaterialType:view")
    public String view(ModelMap model) {
        return prefix + "/list";
    }

    /**
     * list集合
     *
     * @return ResultTable
     */
    //@Log(title = "物资类别", action = "111")
    @ApiOperation(value = "分页跳转", notes = "分页跳转")
    @PostMapping("/list")
    @RequiresPermissions("system:ckMaterialType:list")
    @ResponseBody
    public ResultTable list(CkMaterialType ckMaterialType) {
        QueryWrapper<CkMaterialType> queryWrapper = new QueryWrapper<CkMaterialType>();

        queryWrapper.like(StringUtils.isNotEmpty(ckMaterialType.getName()), "name", ckMaterialType.getName());

        queryWrapper.orderByAsc("order_num");

        return treeTable(ckMaterialTypeService.selectCkMaterialTypeList(queryWrapper));

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
     * @param ckMaterialType
     * @return
     */
    //@Log(title = "物资类别新增", action = "111")
    @ApiOperation(value = "新增", notes = "新增")
    @PostMapping("/add")
    @RequiresPermissions("system:ckMaterialType:add")
    @ResponseBody
    public AjaxResult add(CkMaterialType ckMaterialType) {
		return toAjax(ckMaterialTypeService.insertCkMaterialType(ckMaterialType));
    }

    /**
     * 物资类别删除
     *
     * @param ids
     * @return
     */
    //@Log(title = "物资类别删除", action = "111")
    @ApiOperation(value = "删除", notes = "删除")
    @DeleteMapping("/remove")
    @RequiresPermissions("system:ckMaterialType:remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
		return toAjax(ckMaterialTypeService.deleteCkMaterialTypeByIds(ids));
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
        map.put("CkMaterialType", ckMaterialTypeService.selectCkMaterialTypeById(id));
        return prefix + "/edit";
    }

    /**
     * 修改保存
     *
     * @param ckMaterialType
     * @return
     */
    //@Log(title = "物资类别修改", action = "111")
    @ApiOperation(value = "修改保存", notes = "修改保存")
    @RequiresPermissions("system:ckMaterialType:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(CkMaterialType ckMaterialType) {
        return toAjax(ckMaterialTypeService.updateCkMaterialType(ckMaterialType));
    }


    /**
     * 修改状态
     *
     * @param ckMaterialType
     * @return
     */
    @PutMapping("/updateVisible")
    @ResponseBody
    public AjaxResult updateVisible(@RequestBody CkMaterialType ckMaterialType) {
        return toAjax(ckMaterialTypeService.updateVisible(ckMaterialType));
    }

    @GetMapping("/selectParent")
    @ResponseBody
    public ResuTree selectParent() {
        List<CkMaterialType> list = ckMaterialTypeService.getall();
        CkMaterialType basePower = new CkMaterialType();
        basePower.setName("顶层类别");
        basePower.setId(0L);
        basePower.setPid(-1L);
        list.add(basePower);
        return dataTree(list);
    }

}
