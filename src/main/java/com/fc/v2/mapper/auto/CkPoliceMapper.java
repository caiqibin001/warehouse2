package com.fc.v2.mapper.auto;

import com.fc.v2.model.auto.CkPolice;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * 携行库人员Mapper接口
 *
 * @author ben
 * @date 2021-08-29 15:18:44
 */
public interface CkPoliceMapper extends BaseMapper<CkPolice>
{
                                                                                                                                                    
    /**
     * 查询携行库人员列表
     *
     * @param ckPolice
     * @return CkPolice集合
     */
    public List<CkPolice> selectCkPoliceList(CkPolice ckPolice);
}