package com.fc.v2.mapper.auto;

import com.fc.v2.model.auto.CkMaterialType;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * 物资类别Mapper接口
 *
 * @author ben
 * @date 2021-08-29 16:04:03
 */
public interface CkMaterialTypeMapper extends BaseMapper<CkMaterialType>
{
                                                                                                                                        
    /**
     * 查询物资类别列表
     *
     * @param ckMaterialType
     * @return CkMaterialType集合
     */
    public List<CkMaterialType> selectCkMaterialTypeList(CkMaterialType ckMaterialType);


    List<CkMaterialType> getall();
}