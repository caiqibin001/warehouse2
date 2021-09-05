package com.fc.v2.service.impl;

import java.util.List;
import java.util.Arrays;
import java.util.Map;

import com.fc.v2.mapper.auto.CkGoodsMapper;
import com.fc.v2.mapper.auto.CkMaterialTypeMapper;
import com.fc.v2.model.auto.*;
import com.fc.v2.service.ICkReserverService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.fc.v2.common.support.ConvertUtil;
import com.fc.v2.mapper.auto.CkReserverMapper;
import cn.hutool.core.bean.BeanUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

/**
 * 战备物资Service业务层处理
 *
 * @author ben
 * @date 2021-08-29 15:18:31
 */
@Service
public class CkReserverServiceImpl extends ServiceImpl<CkReserverMapper, CkReserver> implements ICkReserverService {

    private static final Logger logger = LoggerFactory.getLogger(CkReserverServiceImpl.class);

    @Autowired
    private CkReserverMapper ckReserverMapper;
    @Autowired
    private CkGoodsMapper ckGoodsMapper;
    @Autowired
    private CkMaterialTypeMapper ckMaterialTypeMapper;

                                                                                                                                                                                            /**
     * 查询战备物资
     *
     * @param id
     * @return CkReserver
     */
    @Override
    public CkReserver selectCkReserverById(Long id) {
        return this.baseMapper.selectById(id);
    }

    /**
     * 查询战备物资列表
     *
     * @param queryWrapper
     * @return CkReserver集合
     */
    @Override
    public List<CkReserver> selectCkReserverList(Wrapper<CkReserver> queryWrapper) {
        List<CkReserver> reserverList = this.baseMapper.selectList(queryWrapper);
//        reserverList.forEach(ckReserver -> {
//            ckReserver.setMaterialType(ckMaterialTypeMapper.selectById(ckReserver.getMaterialType()));
//        });
        return reserverList;
    }

    /**
     * 查询战备物资列表
     *
     * @param ckReserver
     * @return CkReserver集合
     */
    @Override
    public List<CkReserver> selectCkReserverList(CkReserver ckReserver) {
		Map<String, Object> map = BeanUtil.beanToMap(ckReserver, true, true);
		QueryWrapper<CkReserver> queryWrapper = new QueryWrapper<CkReserver>();
		queryWrapper.allEq(map,false);
		return this.baseMapper.selectList(queryWrapper);
    }

    /**
     * 新增战备物资
     *
     * @param ckReserver
     * @return 结果
     */
    @Override
    public int insertCkReserver(CkReserver ckReserver) {
        ckReserver.setStatus(Status.ING);

        QueryWrapper<CkGoods> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByAsc("goods_name");
        queryWrapper.eq("full",false);
        queryWrapper.last("limit 1");
        List<CkGoods> goodsList = ckGoodsMapper.selectList(queryWrapper);
        ckReserver.setGoodsName(goodsList.get(0).getGoodsName());
        return this.baseMapper.insert(ckReserver);
    }

    /**
     * 修改战备物资
     *
     * @param ckReserver
     * @return 结果
     */
    @Override
    public int updateCkReserver (CkReserver  ckReserver) {
        return this.baseMapper.updateById(ckReserver);
    }

    /**
     * 批量删除战备物资
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteCkReserverByIds(String ids) {
        return this.baseMapper.deleteBatchIds(Arrays.asList(ConvertUtil.toStrArray(ids)));
    }

    /**
     * 删除战备物资信息
     *
     * @param id
     * @return 结果
     */
    @Override
    public int deleteCkReserverById(Long id) {
        return this.baseMapper.deleteById(id);
    }

    /**
     * 修改权限状态展示或者不展示
     *
     * @param ckReserver
     * @return
     */
    @Override
    public int updateVisible(CkReserver ckReserver) {
        return this.baseMapper.updateById(ckReserver);
    }
}
