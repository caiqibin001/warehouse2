package com.fc.v2.mapper.auto;

import com.fc.v2.model.auto.CkOutOrder;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * 出库单Mapper接口
 *
 * @author ben
 * @date 2021-09-01 21:59:02
 */
public interface CkOutOrderMapper extends BaseMapper<CkOutOrder>
{
                                                                                                                                        
    /**
     * 查询出库单列表
     *
     * @param ckOutOrder
     * @return CkOutOrder集合
     */
    public List<CkOutOrder> selectCkOutOrderList(CkOutOrder ckOutOrder);
}