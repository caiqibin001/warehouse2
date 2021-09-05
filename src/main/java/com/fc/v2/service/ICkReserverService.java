package com.fc.v2.service;

import com.fc.v2.model.auto.CkReserver;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * 战备物资Service接口
 *
 * @author ben
 * @date 2021-08-29 15:18:31
*/
public interface ICkReserverService extends IService<CkReserver>{
																																														
	/**
	 * 查询战备物资
	 *
	 * @param id
	 * @return CkReserver
	 */
	public CkReserver selectCkReserverById(Long id);

	/**
	 * 查询战备物资列表
	 *
	 * @param queryWrapper
	 * @return CkReserver集合
	 */
	public List<CkReserver> selectCkReserverList(Wrapper<CkReserver> queryWrapper);

	/**
	 * 查询战备物资列表
	 *
	 * @param ckReserver
	 * @return CkReserver集合
	 */
	public List<CkReserver> selectCkReserverList(CkReserver ckReserver);

	/**
	 * 新增战备物资
	 *
	 * @param ckReserver
	 * @return 结果
	 */
	public int insertCkReserver(CkReserver ckReserver) throws Exception;

	/**
	 * 修改战备物资
	 *
	 * @param ckReserver
	 * @return 结果
	 */
	public int updateCkReserver(CkReserver  ckReserver);

	/**
	 * 批量删除战备物资
	 *
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	public int deleteCkReserverByIds(String ids);

	/**
	 * 删除战备物资信息
	 *
	 * @param id
	 * @return 结果
	 */
	public int deleteCkReserverById(Long id);

	/**
	 * 修改权限状态展示或者不展示
	 * @param ckReserver
	 * @return
	 */
	public int updateVisible(CkReserver ckReserver);
}
