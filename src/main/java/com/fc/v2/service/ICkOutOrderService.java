package com.fc.v2.service;

import com.fc.v2.model.auto.CkOutOrder;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * 出库单Service接口
 *
 * @author ben
 * @date 2021-09-01 21:59:02
*/
public interface ICkOutOrderService extends IService<CkOutOrder>{
																																		
	/**
	 * 查询出库单
	 *
	 * @param id
	 * @return CkOutOrder
	 */
	public CkOutOrder selectCkOutOrderById(Long id);

	/**
	 * 查询出库单列表
	 *
	 * @param queryWrapper
	 * @return CkOutOrder集合
	 */
	public List<CkOutOrder> selectCkOutOrderList(Wrapper<CkOutOrder> queryWrapper);

	/**
	 * 查询出库单列表
	 *
	 * @param ckOutOrder
	 * @return CkOutOrder集合
	 */
	public List<CkOutOrder> selectCkOutOrderList(CkOutOrder ckOutOrder);

	/**
	 * 新增出库单
	 *
	 * @param ckOutOrder
	 * @return 结果
	 */
	public int insertCkOutOrder(CkOutOrder ckOutOrder);

	/**
	 * 修改出库单
	 *
	 * @param ckOutOrder
	 * @return 结果
	 */
	public int updateCkOutOrder(CkOutOrder  ckOutOrder);

	/**
	 * 批量删除出库单
	 *
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	public int deleteCkOutOrderByIds(String ids);

	/**
	 * 删除出库单信息
	 *
	 * @param id
	 * @return 结果
	 */
	public int deleteCkOutOrderById(Long id);

	/**
	 * 修改权限状态展示或者不展示
	 * @param ckOutOrder
	 * @return
	 */
	public int updateVisible(CkOutOrder ckOutOrder);
}
