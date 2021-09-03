package com.fc.v2.mapper.auto;

import com.fc.v2.model.auto.CkMaterial;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * 物资信息Mapper接口
 *
 * @author ben
 * @date 2021-08-29 18:10:10
 */
public interface CkMaterialMapper extends BaseMapper<CkMaterial>
{
                                                                                                                                        
    /**
     * 查询物资信息列表
     *
     * @param ckMaterial
     * @return CkMaterial集合
     */
    public List<CkMaterial> selectCkMaterialList(CkMaterial ckMaterial);
}