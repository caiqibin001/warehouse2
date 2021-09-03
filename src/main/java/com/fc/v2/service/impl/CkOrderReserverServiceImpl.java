package com.fc.v2.service.impl;

import java.util.List;
import java.util.Arrays;
import java.util.Map;

import com.fc.v2.service.ICkOrderReserverService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.fc.v2.common.support.ConvertUtil;
import com.fc.v2.mapper.auto.CkOrderReserverMapper;
import com.fc.v2.model.auto.CkOrderReserver;
import cn.hutool.core.bean.BeanUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

/**
 * 出库单关联表Service业务层处理
 *
 * @author ben
 * @date 2021-09-01 21:50:55
 */
@Service
public class CkOrderReserverServiceImpl extends ServiceImpl<CkOrderReserverMapper, CkOrderReserver> implements ICkOrderReserverService {

    private static final Logger logger = LoggerFactory.getLogger(CkOrderReserverServiceImpl.class);

    @Autowired
    private CkOrderReserverMapper ckOrderReserverMapper;
                                                                                                                                                        /**
     * 查询出库单关联表
     *
     * @param id
     * @return CkOrderReserver
     */
    @Override
    public CkOrderReserver selectCkOrderReserverById(Long id) {
        return this.baseMapper.selectById(id);
    }

    /**
     * 查询出库单关联表列表
     *
     * @param queryWrapper
     * @return CkOrderReserver集合
     */
    @Override
    public List<CkOrderReserver> selectCkOrderReserverList(Wrapper<CkOrderReserver> queryWrapper) {
        return this.baseMapper.selectList(queryWrapper);
    }

    /**
     * 查询出库单关联表列表
     *
     * @param ckOrderReserver
     * @return CkOrderReserver集合
     */
    @Override
    public List<CkOrderReserver> selectCkOrderReserverList(CkOrderReserver ckOrderReserver) {
		Map<String, Object> map = BeanUtil.beanToMap(ckOrderReserver, true, true);
		QueryWrapper<CkOrderReserver> queryWrapper = new QueryWrapper<CkOrderReserver>();
		queryWrapper.allEq(map,false);
		return this.baseMapper.selectList(queryWrapper);
    }

    /**
     * 新增出库单关联表
     *
     * @param ckOrderReserver
     * @return 结果
     */
    @Override
    public int insertCkOrderReserver(CkOrderReserver ckOrderReserver) {
        return this.baseMapper.insert(ckOrderReserver);
    }

    /**
     * 修改出库单关联表
     *
     * @param ckOrderReserver
     * @return 结果
     */
    @Override
    public int updateCkOrderReserver (CkOrderReserver  ckOrderReserver) {
        return this.baseMapper.updateById(ckOrderReserver);
    }

    /**
     * 批量删除出库单关联表
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteCkOrderReserverByIds(String ids) {
        return this.baseMapper.deleteBatchIds(Arrays.asList(ConvertUtil.toStrArray(ids)));
    }

    /**
     * 删除出库单关联表信息
     *
     * @param id
     * @return 结果
     */
    @Override
    public int deleteCkOrderReserverById(Long id) {
        return this.baseMapper.deleteById(id);
    }

    /**
     * 修改权限状态展示或者不展示
     *
     * @param ckOrderReserver
     * @return
     */
    @Override
    public int updateVisible(CkOrderReserver ckOrderReserver) {
        return this.baseMapper.updateById(ckOrderReserver);
    }
}
