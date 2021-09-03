package com.fc.v2.service.impl;

import java.util.List;
import java.util.Arrays;
import java.util.Map;

import com.fc.v2.model.auto.TSysPermission;
import com.fc.v2.service.ICkMaterialTypeService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.fc.v2.common.support.ConvertUtil;
import com.fc.v2.mapper.auto.CkMaterialTypeMapper;
import com.fc.v2.model.auto.CkMaterialType;
import cn.hutool.core.bean.BeanUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

/**
 * 物资类别Service业务层处理
 *
 * @author ben
 * @date 2021-08-29 16:04:03
 */
@Service
public class CkMaterialTypeServiceImpl extends ServiceImpl<CkMaterialTypeMapper, CkMaterialType> implements ICkMaterialTypeService {

    private static final Logger logger = LoggerFactory.getLogger(CkMaterialTypeServiceImpl.class);

    @Autowired
    private CkMaterialTypeMapper ckMaterialTypeMapper;
                                                                                                                                            /**
     * 查询物资类别
     *
     * @param id
     * @return CkMaterialType
     */
    @Override
    public CkMaterialType selectCkMaterialTypeById(Long id) {
        return this.baseMapper.selectById(id);
    }

    /**
     * 查询物资类别列表
     *
     * @param queryWrapper
     * @return CkMaterialType集合
     */
    @Override
    public List<CkMaterialType> selectCkMaterialTypeList(Wrapper<CkMaterialType> queryWrapper) {
        return this.baseMapper.selectList(queryWrapper);
    }

    /**
     * 查询物资类别列表
     *
     * @param ckMaterialType
     * @return CkMaterialType集合
     */
    @Override
    public List<CkMaterialType> selectCkMaterialTypeList(CkMaterialType ckMaterialType) {
		Map<String, Object> map = BeanUtil.beanToMap(ckMaterialType, true, true);
		QueryWrapper<CkMaterialType> queryWrapper = new QueryWrapper<CkMaterialType>();
		queryWrapper.allEq(map,false);
		return this.baseMapper.selectList(queryWrapper);
    }

    /**
     * 新增物资类别
     *
     * @param ckMaterialType
     * @return 结果
     */
    @Override
    public int insertCkMaterialType(CkMaterialType ckMaterialType) {
        return this.baseMapper.insert(ckMaterialType);
    }

    /**
     * 修改物资类别
     *
     * @param ckMaterialType
     * @return 结果
     */
    @Override
    public int updateCkMaterialType (CkMaterialType  ckMaterialType) {
        return this.baseMapper.updateById(ckMaterialType);
    }

    /**
     * 批量删除物资类别
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteCkMaterialTypeByIds(String ids) {
        return this.baseMapper.deleteBatchIds(Arrays.asList(ConvertUtil.toStrArray(ids)));
    }

    /**
     * 删除物资类别信息
     *
     * @param id
     * @return 结果
     */
    @Override
    public int deleteCkMaterialTypeById(Long id) {
        return this.baseMapper.deleteById(id);
    }

    /**
     * 修改权限状态展示或者不展示
     *
     * @param ckMaterialType
     * @return
     */
    @Override
    public int updateVisible(CkMaterialType ckMaterialType) {
        return this.baseMapper.updateById(ckMaterialType);
    }

    @Override
    public List<CkMaterialType> getall() {
        return this.ckMaterialTypeMapper.getall();
    }
}
