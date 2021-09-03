package com.fc.v2.mapper.auto;

import com.fc.v2.model.auto.CkOrderReserver;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * 出库单关联表Mapper接口
 *
 * @author ben
 * @date 2021-09-01 21:50:55
 */
public interface CkOrderReserverMapper extends BaseMapper<CkOrderReserver>
{
                                                                                                                                                    
    /**
     * 查询出库单关联表列表
     *
     * @param ckOrderReserver
     * @return CkOrderReserver集合
     */
    public List<CkOrderReserver> selectCkOrderReserverList(CkOrderReserver ckOrderReserver);
}