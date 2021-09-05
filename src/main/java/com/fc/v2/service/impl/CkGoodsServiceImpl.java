package com.fc.v2.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Arrays;
import java.util.Map;
import java.util.stream.Collectors;

import com.fc.v2.common.base.GoodsInfo;
import com.fc.v2.service.ICkGoodsService;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.fc.v2.common.support.ConvertUtil;
import com.fc.v2.mapper.auto.CkGoodsMapper;
import com.fc.v2.model.auto.CkGoods;
import cn.hutool.core.bean.BeanUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

/**
 * 仓库信息Service业务层处理
 *
 * @author fuce
 * @date 2021-08-29 15:25:51
 */
@Service
public class CkGoodsServiceImpl extends ServiceImpl<CkGoodsMapper, CkGoods> implements ICkGoodsService {

    private static final Logger logger = LoggerFactory.getLogger(CkGoodsServiceImpl.class);

    @Autowired
    private CkGoodsMapper ckGoodsMapper;
                                                                                                                                                                    /**
     * 查询仓库信息
     *
     * @param id
     * @return CkGoods
     */
    @Override
    public CkGoods selectCkGoodsById(Long id) {
        return this.baseMapper.selectById(id);
    }

    /**
     * 查询仓库信息列表
     *
     * @param queryWrapper
     * @return CkGoods集合
     */
    @Override
    public List<CkGoods> selectCkGoodsList(Wrapper<CkGoods> queryWrapper) {
        return this.baseMapper.selectList(queryWrapper);
    }

    /**
     * 查询仓库信息列表
     *
     * @param ckGoods
     * @return CkGoods集合
     */
    @Override
    public List<CkGoods> selectCkGoodsList(CkGoods ckGoods) {
		Map<String, Object> map = BeanUtil.beanToMap(ckGoods, true, true);
		QueryWrapper<CkGoods> queryWrapper = new QueryWrapper<CkGoods>();
		queryWrapper.allEq(map,false);
		return this.baseMapper.selectList(queryWrapper);
    }

    /**
     * 新增仓库信息
     *
     * @param ckGoods
     * @return 结果
     */
    @Override
    public int insertCkGoods(CkGoods ckGoods) {
        ckGoods.setGoodsName(
                StringUtils.join(
                        ckGoods.getGoodsNo(),"-",
                        ckGoods.getGoodsRow(),"-",
                        ckGoods.getGoodsCell(),"-",
                        ckGoods.getGoodsLocal())
        );
        return this.baseMapper.insert(ckGoods);
    }

    /**
     * 修改仓库信息
     *
     * @param ckGoods
     * @return 结果
     */
    @Override
    public int updateCkGoods (CkGoods  ckGoods) {
        ckGoods.setGoodsName(
                StringUtils.join(
                        ckGoods.getGoodsNo(),"-",
                        ckGoods.getGoodsRow(),"-",
                        ckGoods.getGoodsCell(),"-",
                        ckGoods.getGoodsLocal())
        );
        return this.baseMapper.updateById(ckGoods);
    }

    /**
     * 批量删除仓库信息
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteCkGoodsByIds(String ids) {
        return this.baseMapper.deleteBatchIds(Arrays.asList(ConvertUtil.toStrArray(ids)));
    }

    /**
     * 删除仓库信息信息
     *
     * @param id
     * @return 结果
     */
    @Override
    public int deleteCkGoodsById(Long id) {
        return this.baseMapper.deleteById(id);
    }

    /**
     * 修改权限状态展示或者不展示
     *
     * @param ckGoods
     * @return
     */
    @Override
    public int updateVisible(CkGoods ckGoods) {
        return this.baseMapper.updateById(ckGoods);
    }

    @Override
    public GoodsInfo getGoodsInfo() {
        List<CkGoods> goodsList = this.selectCkGoodsList(new CkGoods());
        List<String> goodsNo = goodsList.stream().map(goods->goods.getGoodsNo()).distinct().collect(Collectors.toList());
        String no = goodsNo.get(0);

        GoodsInfo goodsInfo = new GoodsInfo();
        goodsInfo.setGoodsNo(no);

        List<String> goodsRowList = goodsList.stream()
                .filter(goods->goods.getGoodsNo().equals(no))
                .map(goods->goods.getGoodsRow()).distinct()
                .collect(Collectors.toList());
        List<GoodsInfo.GoodsRow> goodsRows = new ArrayList<>(goodsRowList.size());
        GoodsInfo.GoodsRow goodsRow = new GoodsInfo.GoodsRow();
        for (String row : goodsRowList) {
            if (Integer.valueOf(row) % 3 == 1) {
                List<GoodsInfo.GoodsCell> leftGoodsCells = getGoodsCells(goodsList, no, row);
                goodsRow.setLeftGoodsCells(leftGoodsCells);
                goodsRow.setGoodsRow(row);
            } else if (Integer.valueOf(row) % 3 == 2) {
                List<GoodsInfo.GoodsCell> centerGoodsCells = getGoodsCells(goodsList, no, row);
                goodsRow.setCenterGoodsCells(centerGoodsCells);
            } else {
                List<GoodsInfo.GoodsCell> rightGoodsCells = getGoodsCells(goodsList, no, row);
                goodsRow.setRightGoodsCells(rightGoodsCells);
                goodsRows.add(goodsRow);
                goodsRow = new GoodsInfo.GoodsRow();
            }
        }

        goodsInfo.setGoodsRows(goodsRows);
        return goodsInfo;
    }

    private List<GoodsInfo.GoodsCell> getGoodsCells(List<CkGoods> goodsList, String no, String row) {
        List<String> goodsCellList = goodsList.stream()
                .filter(goods -> goods.getGoodsNo().equals(no) && goods.getGoodsRow().equals(row))
                .map(goods->goods.getGoodsCell()).distinct()
                .collect(Collectors.toList());

        List<GoodsInfo.GoodsCell> goodsCells = new ArrayList<>(goodsCellList.size());
        goodsCellList.forEach(cell->{
            GoodsInfo.GoodsCell goodsCell = new GoodsInfo.GoodsCell();
            goodsCell.setGoodsCell(cell);

            List<String> goodsLocalList = goodsList.stream()
                    .filter(goods -> goods.getGoodsNo().equals(no)
                            && goods.getGoodsRow().equals(row)
                            && goods.getGoodsCell().equals(cell))
                    .map(goods->goods.getGoodsLocal()).distinct()
                    .collect(Collectors.toList());
            List<GoodsInfo.GoodsLocal> goodsLocals = new ArrayList<>(goodsLocalList.size());
            goodsLocalList.forEach(local->{

                List<CkGoods> ckGoodsList = goodsList.stream()
                        .filter(goods -> goods.getGoodsNo().equals(no)
                                && goods.getGoodsRow().equals(row)
                                && goods.getGoodsCell().equals(cell))
                        .collect(Collectors.toList());

                CkGoods ckGoods;
                if (ObjectUtils.isEmpty(ckGoodsList)) {
                    String goodsName = new StringBuffer(no).append("-")
                            .append(cell).append("-")
                            .append(row).append("-")
                            .append(local).toString();
                    QueryWrapper<CkGoods> queryWrapper = new QueryWrapper<>();
                    queryWrapper.eq("goods_name",goodsName);
                    ckGoods = this.getOne(queryWrapper);
                } else {
                    ckGoods = ckGoodsList.get(0);
                }
                if (ObjectUtils.isEmpty(ckGoods)) {
                    return;
                }
                GoodsInfo.GoodsLocal goodsLocal = new GoodsInfo.GoodsLocal();
                goodsLocal.setGoodsLocal(ckGoods.getGoodsName());
                goodsLocal.setFull(ObjectUtils.isEmpty(ckGoods.getFull())? false : ckGoods.getFull() == 1);
                goodsLocals.add(goodsLocal);
            });
            goodsCell.setGoodsLocals(goodsLocals);
            goodsCells.add(goodsCell);

        });
        return goodsCells;
    }

    @Override
    public GoodsInfo getGoodsInfoByNames(List<String> names) {
        GoodsInfo goodsInfo = getGoodsInfo();
        names.forEach(name->{
            String [] nameStr = name.split("-");
            List<GoodsInfo.GoodsRow> rowList = goodsInfo.getGoodsRows().stream()
                    .filter(row->(Integer.valueOf(nameStr[1]) > 3 ? Integer.valueOf(nameStr[1])/3 : Integer.valueOf(nameStr[1]))
                            == Integer.valueOf(row.getGoodsRow()))
                    .collect(Collectors.toList());
            rowList.forEach(row->{
                List<GoodsInfo.GoodsCell> leftCellList = row.getLeftGoodsCells().stream()
                        .filter(cell->nameStr[2].equals(cell.getGoodsCell()))
                        .collect(Collectors.toList());

                List<GoodsInfo.GoodsCell> centerCellList = row.getCenterGoodsCells().stream()
                        .filter(cell->nameStr[2].equals(cell.getGoodsCell()))
                        .collect(Collectors.toList());

                List<GoodsInfo.GoodsCell> rightCellList = row.getRightGoodsCells().stream()
                        .filter(cell->nameStr[2].equals(cell.getGoodsCell()))
                        .collect(Collectors.toList());

                setCheck(leftCellList, nameStr[3]);
                setCheck(centerCellList, nameStr[3]);
                setCheck(rightCellList, nameStr[3]);
            });
        });
        return goodsInfo;
    }

    private void setCheck(List<GoodsInfo.GoodsCell> leftCellList, String s) {
        leftCellList.forEach(cell -> {

            List<GoodsInfo.GoodsLocal> localList = cell.getGoodsLocals().stream()
                    .filter(local -> s.equals(local.getGoodsLocal().split("-")[local.getGoodsLocal().split("-").length - 1]))
                    .collect(Collectors.toList());
            localList.forEach(local -> {
                local.setCheck(true);
            });
        });
    }
}
