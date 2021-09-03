package com.fc.v2.service;

import com.fc.v2.model.auto.CkPolice;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * 携行库人员Service接口
 *
 * @author ben
 * @date 2021-08-29 15:18:44
*/
public interface ICkPoliceService extends IService<CkPolice>{
																																					
	/**
	 * 查询携行库人员
	 *
	 * @param id
	 * @return CkPolice
	 */
	public CkPolice selectCkPoliceById(Long id);

	/**
	 * 查询携行库人员列表
	 *
	 * @param queryWrapper
	 * @return CkPolice集合
	 */
	public List<CkPolice> selectCkPoliceList(Wrapper<CkPolice> queryWrapper);

	/**
	 * 查询携行库人员列表
	 *
	 * @param ckPolice
	 * @return CkPolice集合
	 */
	public List<CkPolice> selectCkPoliceList(CkPolice ckPolice);

	/**
	 * 新增携行库人员
	 *
	 * @param ckPolice
	 * @return 结果
	 */
	public int insertCkPolice(CkPolice ckPolice);

	/**
	 * 修改携行库人员
	 *
	 * @param ckPolice
	 * @return 结果
	 */
	public int updateCkPolice(CkPolice  ckPolice);

	/**
	 * 批量删除携行库人员
	 *
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	public int deleteCkPoliceByIds(String ids);

	/**
	 * 删除携行库人员信息
	 *
	 * @param id
	 * @return 结果
	 */
	public int deleteCkPoliceById(Long id);

	/**
	 * 修改权限状态展示或者不展示
	 * @param ckPolice
	 * @return
	 */
	public int updateVisible(CkPolice ckPolice);
}
