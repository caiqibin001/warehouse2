package com.fc.v2.mapper.auto;

import com.fc.v2.model.auto.CkGoods;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * 仓库信息Mapper接口
 *
 * @author fuce
 * @date 2021-08-29 15:25:51
 */
public interface CkGoodsMapper extends BaseMapper<CkGoods>
{
                                                                                                                                                                
    /**
     * 查询仓库信息列表
     *
     * @param ckGoods
     * @return CkGoods集合
     */
    public List<CkGoods> selectCkGoodsList(CkGoods ckGoods);
}