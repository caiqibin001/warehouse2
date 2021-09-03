package com.fc.v2.service.impl;

import java.util.List;
import java.util.Arrays;
import java.util.Map;

import com.fc.v2.service.ICkOutOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.fc.v2.common.support.ConvertUtil;
import com.fc.v2.mapper.auto.CkOutOrderMapper;
import com.fc.v2.model.auto.CkOutOrder;
import cn.hutool.core.bean.BeanUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

/**
 * 出库单Service业务层处理
 *
 * @author ben
 * @date 2021-09-01 21:59:02
 */
@Service
public class CkOutOrderServiceImpl extends ServiceImpl<CkOutOrderMapper, CkOutOrder> implements ICkOutOrderService {

    private static final Logger logger = LoggerFactory.getLogger(CkOutOrderServiceImpl.class);

    @Autowired
    private CkOutOrderMapper ckOutOrderMapper;
                                                                                                                                            /**
     * 查询出库单
     *
     * @param id
     * @return CkOutOrder
     */
    @Override
    public CkOutOrder selectCkOutOrderById(Long id) {
        return this.baseMapper.selectById(id);
    }

    /**
     * 查询出库单列表
     *
     * @param queryWrapper
     * @return CkOutOrder集合
     */
    @Override
    public List<CkOutOrder> selectCkOutOrderList(Wrapper<CkOutOrder> queryWrapper) {
        return this.baseMapper.selectList(queryWrapper);
    }

    /**
     * 查询出库单列表
     *
     * @param ckOutOrder
     * @return CkOutOrder集合
     */
    @Override
    public List<CkOutOrder> selectCkOutOrderList(CkOutOrder ckOutOrder) {
		Map<String, Object> map = BeanUtil.beanToMap(ckOutOrder, true, true);
		QueryWrapper<CkOutOrder> queryWrapper = new QueryWrapper<CkOutOrder>();
		queryWrapper.allEq(map,false);
		return this.baseMapper.selectList(queryWrapper);
    }

    /**
     * 新增出库单
     *
     * @param ckOutOrder
     * @return 结果
     */
    @Override
    public int insertCkOutOrder(CkOutOrder ckOutOrder) {
        return this.baseMapper.insert(ckOutOrder);
    }

    /**
     * 修改出库单
     *
     * @param ckOutOrder
     * @return 结果
     */
    @Override
    public int updateCkOutOrder (CkOutOrder  ckOutOrder) {
        return this.baseMapper.updateById(ckOutOrder);
    }

    /**
     * 批量删除出库单
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteCkOutOrderByIds(String ids) {
        return this.baseMapper.deleteBatchIds(Arrays.asList(ConvertUtil.toStrArray(ids)));
    }

    /**
     * 删除出库单信息
     *
     * @param id
     * @return 结果
     */
    @Override
    public int deleteCkOutOrderById(Long id) {
        return this.baseMapper.deleteById(id);
    }

    /**
     * 修改权限状态展示或者不展示
     *
     * @param ckOutOrder
     * @return
     */
    @Override
    public int updateVisible(CkOutOrder ckOutOrder) {
        return this.baseMapper.updateById(ckOutOrder);
    }
}
