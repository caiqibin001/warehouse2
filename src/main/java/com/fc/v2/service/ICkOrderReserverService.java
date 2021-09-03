package com.fc.v2.service;

import com.fc.v2.model.auto.CkOrderReserver;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * 出库单关联表Service接口
 *
 * @author ben
 * @date 2021-09-01 21:50:55
*/
public interface ICkOrderReserverService extends IService<CkOrderReserver>{
																																					
	/**
	 * 查询出库单关联表
	 *
	 * @param id
	 * @return CkOrderReserver
	 */
	public CkOrderReserver selectCkOrderReserverById(Long id);

	/**
	 * 查询出库单关联表列表
	 *
	 * @param queryWrapper
	 * @return CkOrderReserver集合
	 */
	public List<CkOrderReserver> selectCkOrderReserverList(Wrapper<CkOrderReserver> queryWrapper);

	/**
	 * 查询出库单关联表列表
	 *
	 * @param ckOrderReserver
	 * @return CkOrderReserver集合
	 */
	public List<CkOrderReserver> selectCkOrderReserverList(CkOrderReserver ckOrderReserver);

	/**
	 * 新增出库单关联表
	 *
	 * @param ckOrderReserver
	 * @return 结果
	 */
	public int insertCkOrderReserver(CkOrderReserver ckOrderReserver);

	/**
	 * 修改出库单关联表
	 *
	 * @param ckOrderReserver
	 * @return 结果
	 */
	public int updateCkOrderReserver(CkOrderReserver  ckOrderReserver);

	/**
	 * 批量删除出库单关联表
	 *
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	public int deleteCkOrderReserverByIds(String ids);

	/**
	 * 删除出库单关联表信息
	 *
	 * @param id
	 * @return 结果
	 */
	public int deleteCkOrderReserverById(Long id);

	/**
	 * 修改权限状态展示或者不展示
	 * @param ckOrderReserver
	 * @return
	 */
	public int updateVisible(CkOrderReserver ckOrderReserver);
}
