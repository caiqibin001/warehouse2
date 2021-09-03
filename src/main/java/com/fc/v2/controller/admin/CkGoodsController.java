package com.fc.v2.controller.admin;

import cn.hutool.core.util.ObjectUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.json.JSONString;
import com.alibaba.fastjson.JSONArray;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.fc.v2.common.base.BaseController;
import com.fc.v2.common.base.GoodsInfo;
import com.fc.v2.common.domain.AjaxResult;
import com.fc.v2.common.domain.ResultTable;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.model.auto.CkGoods;
import com.fc.v2.service.ICkGoodsService;
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

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * 仓库信息 Controller
 *
 * @author fuce
 * @date 2021-08-29 15:25:51
 */
@Api(value = "仓库信息")
@Controller
@RequestMapping("/CkGoodsController")
public class CkGoodsController extends BaseController {

    private String prefix = "admin/ckGoods";

    @Autowired
    private ICkGoodsService ckGoodsService;

    @ApiOperation(value = "获取地图位置", notes = "获取地图位置")
    @GetMapping("/goodsInfo")
    @ResponseBody
    public ResultTable getGoodsInfo() {
        GoodsInfo goodsInfo = ckGoodsService.getGoodsInfo();
        return dataTable(goodsInfo);
    }

    @ApiOperation(value = "获取地图位置", notes = "获取地图位置")
    @PostMapping("/getGoodsInfoByNames")
    @ResponseBody
    public ResultTable getGoodsInfoByNames(@RequestBody List<String> names) {
        GoodsInfo goodsInfo = ckGoodsService.getGoodsInfoByNames(names);
        return dataTable(goodsInfo);
    }

    /**
     * 仓库信息页面展示
     *
     * @param model
     * @return String
     */
    @ApiOperation(value = "分页跳转", notes = "分页跳转")
    @GetMapping("/view")
    @RequiresPermissions("system:ckGoods:view")
    public String view(ModelMap model) {
        return prefix + "/list";
    }

    /**
     * list集合
     *
     * @param tablepar
     * @return ResultTable
     */
    //@Log(title = "仓库信息", action = "111")
    @ApiOperation(value = "分页跳转", notes = "分页跳转")
    @GetMapping("/list")
    @RequiresPermissions("system:ckGoods:list")
    @ResponseBody
    public ResultTable list(Tablepar tablepar) {
        QueryWrapper<CkGoods> queryWrapper = new QueryWrapper<CkGoods>();

        if (StrUtil.isNotEmpty(tablepar.getSearchText())) {
            queryWrapper.like("自定义", tablepar.getSearchText());
        }

        if (StrUtil.isNotEmpty(tablepar.getOrderByColumn())) {
            queryWrapper.orderByAsc(tablepar.getOrderByColumn());
        }

        PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());

        PageInfo<CkGoods> page = new PageInfo<CkGoods>(ckGoodsService.selectCkGoodsList(queryWrapper));
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
     * @param ckGoods
     * @return
     */
    //@Log(title = "仓库信息新增", action = "111")
    @ApiOperation(value = "新增", notes = "新增")
    @PostMapping("/add")
    @RequiresPermissions("system:ckGoods:add")
    @ResponseBody
    public AjaxResult add(CkGoods ckGoods) {
		return toAjax(ckGoodsService.insertCkGoods(ckGoods));
    }

    /**
     * 仓库信息删除
     *
     * @param ids
     * @return
     */
    //@Log(title = "仓库信息删除", action = "111")
    @ApiOperation(value = "删除", notes = "删除")
    @DeleteMapping("/remove")
    @RequiresPermissions("system:ckGoods:remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
		return toAjax(ckGoodsService.deleteCkGoodsByIds(ids));
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
        map.put("CkGoods", ckGoodsService.selectCkGoodsById(id));
        return prefix + "/edit";
    }

    /**
     * 修改保存
     *
     * @param ckGoods
     * @return
     */
    //@Log(title = "仓库信息修改", action = "111")
    @ApiOperation(value = "修改保存", notes = "修改保存")
    @RequiresPermissions("system:ckGoods:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(CkGoods ckGoods) {
        return toAjax(ckGoodsService.updateCkGoods(ckGoods));
    }


    /**
     * 修改状态
     *
     * @param ckGoods
     * @return
     */
    @PutMapping("/updateVisible")
    @ResponseBody
    public AjaxResult updateVisible(@RequestBody CkGoods ckGoods) {
        return toAjax(ckGoodsService.updateVisible(ckGoods));
    }
}
