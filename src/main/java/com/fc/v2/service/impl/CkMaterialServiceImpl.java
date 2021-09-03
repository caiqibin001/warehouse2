package com.fc.v2.service.impl;

import java.util.List;
import java.util.Arrays;
import java.util.Map;
import java.util.stream.Collectors;

import com.fc.v2.mapper.auto.CkMaterialTypeMapper;
import com.fc.v2.model.auto.CkMaterialType;
import com.fc.v2.service.ICkMaterialService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.fc.v2.common.support.ConvertUtil;
import com.fc.v2.mapper.auto.CkMaterialMapper;
import com.fc.v2.model.auto.CkMaterial;
import cn.hutool.core.bean.BeanUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.util.ObjectUtils;

/**
 * 物资信息Service业务层处理
 *
 * @author ben
 * @date 2021-08-29 18:10:10
 */
@Service
public class CkMaterialServiceImpl extends ServiceImpl<CkMaterialMapper, CkMaterial> implements ICkMaterialService {

    private static final Logger logger = LoggerFactory.getLogger(CkMaterialServiceImpl.class);

    @Autowired
    private CkMaterialMapper ckMaterialMapper;
    @Autowired
    private CkMaterialTypeMapper ckMaterialTypeMapper;
                                                                                                                                            /**
     * 查询物资信息
     *
     * @param id
     * @return CkMaterial
     */
    @Override
    public CkMaterial selectCkMaterialById(Long id) {
        return this.baseMapper.selectById(id);
    }

    /**
     * 查询物资信息列表
     *
     * @param queryWrapper
     * @return CkMaterial集合
     */
    @Override
    public List<CkMaterial> selectCkMaterialList(Wrapper<CkMaterial> queryWrapper) {
        List<CkMaterial> list = this.baseMapper.selectList(queryWrapper);
        list.stream().filter(ckMaterial -> !ObjectUtils.isEmpty(ckMaterial.getTypeId()))
                .collect(Collectors.toList())
                .forEach(ckMaterial -> {
            ckMaterial.setType(ckMaterialTypeMapper.selectById(ckMaterial.getTypeId()).getName());
        });
        return list;
    }

    /**
     * 查询物资信息列表
     *
     * @param ckMaterial
     * @return CkMaterial集合
     */
    @Override
    public List<CkMaterial> selectCkMaterialList(CkMaterial ckMaterial) {
		Map<String, Object> map = BeanUtil.beanToMap(ckMaterial, true, true);
		QueryWrapper<CkMaterial> queryWrapper = new QueryWrapper<CkMaterial>();
		queryWrapper.allEq(map,false);
		return this.baseMapper.selectList(queryWrapper);
    }

    /**
     * 新增物资信息
     *
     * @param ckMaterial
     * @return 结果
     */
    @Override
    public int insertCkMaterial(CkMaterial ckMaterial) {
        return this.baseMapper.insert(ckMaterial);
    }

    /**
     * 修改物资信息
     *
     * @param ckMaterial
     * @return 结果
     */
    @Override
    public int updateCkMaterial (CkMaterial  ckMaterial) {
        return this.baseMapper.updateById(ckMaterial);
    }

    /**
     * 批量删除物资信息
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteCkMaterialByIds(String ids) {
        return this.baseMapper.deleteBatchIds(Arrays.asList(ConvertUtil.toStrArray(ids)));
    }

    /**
     * 删除物资信息信息
     *
     * @param id
     * @return 结果
     */
    @Override
    public int deleteCkMaterialById(Long id) {
        return this.baseMapper.deleteById(id);
    }

    /**
     * 修改权限状态展示或者不展示
     *
     * @param ckMaterial
     * @return
     */
    @Override
    public int updateVisible(CkMaterial ckMaterial) {
        return this.baseMapper.updateById(ckMaterial);
    }
}
