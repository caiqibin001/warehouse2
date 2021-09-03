package com.fc.v2.mapper.auto;

import com.fc.v2.model.auto.CkReserver;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * 战备物资Mapper接口
 *
 * @author ben
 * @date 2021-08-29 15:18:31
 */
public interface CkReserverMapper extends BaseMapper<CkReserver>
{
                                                                                                                                                                                        
    /**
     * 查询战备物资列表
     *
     * @param ckReserver
     * @return CkReserver集合
     */
    public List<CkReserver> selectCkReserverList(CkReserver ckReserver);
}