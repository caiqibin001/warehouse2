package com.fc.v2.service;

import com.fc.v2.common.base.GoodsInfo;
import com.fc.v2.model.auto.CkGoods;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * 仓库信息Service接口
 *
 * @author fuce
 * @date 2021-08-29 15:25:51
*/
public interface ICkGoodsService extends IService<CkGoods>{
																																								
	/**
	 * 查询仓库信息
	 *
	 * @param id
	 * @return CkGoods
	 */
	public CkGoods selectCkGoodsById(Long id);

	/**
	 * 查询仓库信息列表
	 *
	 * @param queryWrapper
	 * @return CkGoods集合
	 */
	public List<CkGoods> selectCkGoodsList(Wrapper<CkGoods> queryWrapper);

	/**
	 * 查询仓库信息列表
	 *
	 * @param ckGoods
	 * @return CkGoods集合
	 */
	public List<CkGoods> selectCkGoodsList(CkGoods ckGoods);

	/**
	 * 新增仓库信息
	 *
	 * @param ckGoods
	 * @return 结果
	 */
	public int insertCkGoods(CkGoods ckGoods);

	/**
	 * 修改仓库信息
	 *
	 * @param ckGoods
	 * @return 结果
	 */
	public int updateCkGoods(CkGoods  ckGoods);

	/**
	 * 批量删除仓库信息
	 *
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	public int deleteCkGoodsByIds(String ids);

	/**
	 * 删除仓库信息信息
	 *
	 * @param id
	 * @return 结果
	 */
	public int deleteCkGoodsById(Long id);

	/**
	 * 修改权限状态展示或者不展示
	 * @param ckGoods
	 * @return
	 */
	public int updateVisible(CkGoods ckGoods);

	GoodsInfo getGoodsInfo();

	GoodsInfo getGoodsInfoByNames(List<String> names);
}
