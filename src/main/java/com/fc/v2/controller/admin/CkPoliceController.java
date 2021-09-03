package com.fc.v2.controller.admin;

import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.fc.v2.common.base.BaseController;
import com.fc.v2.common.domain.AjaxResult;
import com.fc.v2.common.domain.ResultTable;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.model.auto.CkPolice;
import com.fc.v2.service.ICkPoliceService;
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
 * 携行库人员 Controller
 *
 * @author ben
 * @date 2021-08-29 15:18:44
 */
@Api(value = "携行库人员")
@Controller
@RequestMapping("/CkPoliceController")
public class CkPoliceController extends BaseController {

    private String prefix = "admin/ckPolice";

    @Autowired
    private ICkPoliceService ckPoliceService;


    /**
     * 携行库人员页面展示
     *
     * @param model
     * @return String
     */
    @ApiOperation(value = "分页跳转", notes = "分页跳转")
    @GetMapping("/view")
    @RequiresPermissions("system:ckPolice:view")
    public String view(ModelMap model) {
        return prefix + "/list";
    }

    /**
     * list集合
     *
     * @param tablepar
     * @return ResultTable
     */
    //@Log(title = "携行库人员", action = "111")
    @ApiOperation(value = "分页跳转", notes = "分页跳转")
    @GetMapping("/list")
    @RequiresPermissions("system:ckPolice:list")
    @ResponseBody
    public ResultTable list(Tablepar tablepar) {
        QueryWrapper<CkPolice> queryWrapper = new QueryWrapper<CkPolice>();

        if (StrUtil.isNotEmpty(tablepar.getSearchText())) {
            queryWrapper.like("自定义", tablepar.getSearchText());
        }

        if (StrUtil.isNotEmpty(tablepar.getOrderByColumn())) {
            queryWrapper.orderByAsc(tablepar.getOrderByColumn());
        }

        PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());

        PageInfo<CkPolice> page = new PageInfo<CkPolice>(ckPoliceService.selectCkPoliceList(queryWrapper));
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
     * @param ckPolice
     * @return
     */
    //@Log(title = "携行库人员新增", action = "111")
    @ApiOperation(value = "新增", notes = "新增")
    @PostMapping("/add")
    @RequiresPermissions("system:ckPolice:add")
    @ResponseBody
    public AjaxResult add(CkPolice ckPolice) {
		return toAjax(ckPoliceService.insertCkPolice(ckPolice));
    }

    /**
     * 携行库人员删除
     *
     * @param ids
     * @return
     */
    //@Log(title = "携行库人员删除", action = "111")
    @ApiOperation(value = "删除", notes = "删除")
    @DeleteMapping("/remove")
    @RequiresPermissions("system:ckPolice:remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
		return toAjax(ckPoliceService.deleteCkPoliceByIds(ids));
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
        map.put("CkPolice", ckPoliceService.selectCkPoliceById(id));
        return prefix + "/edit";
    }

    /**
     * 修改保存
     *
     * @param ckPolice
     * @return
     */
    //@Log(title = "携行库人员修改", action = "111")
    @ApiOperation(value = "修改保存", notes = "修改保存")
    @RequiresPermissions("system:ckPolice:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(CkPolice ckPolice) {
        return toAjax(ckPoliceService.updateCkPolice(ckPolice));
    }


    /**
     * 修改状态
     *
     * @param ckPolice
     * @return
     */
    @PutMapping("/updateVisible")
    @ResponseBody
    public AjaxResult updateVisible(@RequestBody CkPolice ckPolice) {
        return toAjax(ckPoliceService.updateVisible(ckPolice));
    }
}
