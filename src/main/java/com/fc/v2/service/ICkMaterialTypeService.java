package com.fc.v2.service;

import com.fc.v2.model.auto.CkMaterialType;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * 物资类别Service接口
 *
 * @author ben
 * @date 2021-08-29 16:04:03
*/
public interface ICkMaterialTypeService extends IService<CkMaterialType>{
																																		
	/**
	 * 查询物资类别
	 *
	 * @param id
	 * @return CkMaterialType
	 */
	public CkMaterialType selectCkMaterialTypeById(Long id);

	/**
	 * 查询物资类别列表
	 *
	 * @param queryWrapper
	 * @return CkMaterialType集合
	 */
	public List<CkMaterialType> selectCkMaterialTypeList(Wrapper<CkMaterialType> queryWrapper);

	/**
	 * 查询物资类别列表
	 *
	 * @param ckMaterialType
	 * @return CkMaterialType集合
	 */
	public List<CkMaterialType> selectCkMaterialTypeList(CkMaterialType ckMaterialType);

	/**
	 * 新增物资类别
	 *
	 * @param ckMaterialType
	 * @return 结果
	 */
	public int insertCkMaterialType(CkMaterialType ckMaterialType);

	/**
	 * 修改物资类别
	 *
	 * @param ckMaterialType
	 * @return 结果
	 */
	public int updateCkMaterialType(CkMaterialType  ckMaterialType);

	/**
	 * 批量删除物资类别
	 *
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	public int deleteCkMaterialTypeByIds(String ids);

	/**
	 * 删除物资类别信息
	 *
	 * @param id
	 * @return 结果
	 */
	public int deleteCkMaterialTypeById(Long id);

	/**
	 * 修改权限状态展示或者不展示
	 * @param ckMaterialType
	 * @return
	 */
	public int updateVisible(CkMaterialType ckMaterialType);

    List<CkMaterialType> getall();
}
