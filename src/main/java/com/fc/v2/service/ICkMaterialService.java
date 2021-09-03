package com.fc.v2.service;

import com.fc.v2.model.auto.CkMaterial;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * 物资信息Service接口
 *
 * @author ben
 * @date 2021-08-29 18:10:10
*/
public interface ICkMaterialService extends IService<CkMaterial>{
																																		
	/**
	 * 查询物资信息
	 *
	 * @param id
	 * @return CkMaterial
	 */
	public CkMaterial selectCkMaterialById(Long id);

	/**
	 * 查询物资信息列表
	 *
	 * @param queryWrapper
	 * @return CkMaterial集合
	 */
	public List<CkMaterial> selectCkMaterialList(Wrapper<CkMaterial> queryWrapper);

	/**
	 * 查询物资信息列表
	 *
	 * @param ckMaterial
	 * @return CkMaterial集合
	 */
	public List<CkMaterial> selectCkMaterialList(CkMaterial ckMaterial);

	/**
	 * 新增物资信息
	 *
	 * @param ckMaterial
	 * @return 结果
	 */
	public int insertCkMaterial(CkMaterial ckMaterial);

	/**
	 * 修改物资信息
	 *
	 * @param ckMaterial
	 * @return 结果
	 */
	public int updateCkMaterial(CkMaterial  ckMaterial);

	/**
	 * 批量删除物资信息
	 *
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	public int deleteCkMaterialByIds(String ids);

	/**
	 * 删除物资信息信息
	 *
	 * @param id
	 * @return 结果
	 */
	public int deleteCkMaterialById(Long id);

	/**
	 * 修改权限状态展示或者不展示
	 * @param ckMaterial
	 * @return
	 */
	public int updateVisible(CkMaterial ckMaterial);
}
