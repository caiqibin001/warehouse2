package com.fc.v2.service.impl;

import java.util.List;
import java.util.Arrays;
import java.util.Map;

import com.fc.v2.service.ICkPoliceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.fc.v2.common.support.ConvertUtil;
import com.fc.v2.mapper.auto.CkPoliceMapper;
import com.fc.v2.model.auto.CkPolice;
import cn.hutool.core.bean.BeanUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

/**
 * 携行库人员Service业务层处理
 *
 * @author ben
 * @date 2021-08-29 15:18:44
 */
@Service
public class CkPoliceServiceImpl extends ServiceImpl<CkPoliceMapper, CkPolice> implements ICkPoliceService {

    private static final Logger logger = LoggerFactory.getLogger(CkPoliceServiceImpl.class);

    @Autowired
    private CkPoliceMapper ckPoliceMapper;
                                                                                                                                                        /**
     * 查询携行库人员
     *
     * @param id
     * @return CkPolice
     */
    @Override
    public CkPolice selectCkPoliceById(Long id) {
        return this.baseMapper.selectById(id);
    }

    /**
     * 查询携行库人员列表
     *
     * @param queryWrapper
     * @return CkPolice集合
     */
    @Override
    public List<CkPolice> selectCkPoliceList(Wrapper<CkPolice> queryWrapper) {
        return this.baseMapper.selectList(queryWrapper);
    }

    /**
     * 查询携行库人员列表
     *
     * @param ckPolice
     * @return CkPolice集合
     */
    @Override
    public List<CkPolice> selectCkPoliceList(CkPolice ckPolice) {
		Map<String, Object> map = BeanUtil.beanToMap(ckPolice, true, true);
		QueryWrapper<CkPolice> queryWrapper = new QueryWrapper<CkPolice>();
		queryWrapper.allEq(map,false);
		return this.baseMapper.selectList(queryWrapper);
    }

    /**
     * 新增携行库人员
     *
     * @param ckPolice
     * @return 结果
     */
    @Override
    public int insertCkPolice(CkPolice ckPolice) {
        return this.baseMapper.insert(ckPolice);
    }

    /**
     * 修改携行库人员
     *
     * @param ckPolice
     * @return 结果
     */
    @Override
    public int updateCkPolice (CkPolice  ckPolice) {
        return this.baseMapper.updateById(ckPolice);
    }

    /**
     * 批量删除携行库人员
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteCkPoliceByIds(String ids) {
        return this.baseMapper.deleteBatchIds(Arrays.asList(ConvertUtil.toStrArray(ids)));
    }

    /**
     * 删除携行库人员信息
     *
     * @param id
     * @return 结果
     */
    @Override
    public int deleteCkPoliceById(Long id) {
        return this.baseMapper.deleteById(id);
    }

    /**
     * 修改权限状态展示或者不展示
     *
     * @param ckPolice
     * @return
     */
    @Override
    public int updateVisible(CkPolice ckPolice) {
        return this.baseMapper.updateById(ckPolice);
    }
}
