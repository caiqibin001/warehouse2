package com.fc.v2.model.auto;

import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import com.fc.v2.common.base.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.baomidou.mybatisplus.annotation.*;


/**
 * 仓库信息对象 ck_goods
 *
 * @author fuce
 * @date 2021-08-29 15:25:51
 */
@TableName("ck_goods")
public class CkGoods extends BaseEntity {

	private static final long serialVersionUID = 1L;

	/** 主键 */
	@TableId(type = IdType.ASSIGN_ID)
	@JsonSerialize(using = ToStringSerializer.class)
	@ApiModelProperty(value = "主键")
	private Long id;

	/** 仓库名称 */
	@ApiModelProperty(value = "仓库名称")
	private String goodsName;

	/** 库 */
	@ApiModelProperty(value = "库")
	private String goodsNo;

	/** 排 */
	@ApiModelProperty(value = "排")
	private String goodsRow;

	/** 格 */
	@ApiModelProperty(value = "格")
	private String goodsCell;

	/** 位 */
	@ApiModelProperty(value = "位")
	private String goodsLocal;

	/** 位置图 */
	@ApiModelProperty(value = "位置图")
	private String position;

	@ApiModelProperty(value = "是否有货")
	private Integer full;
	
	@JsonProperty("id")
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id =  id;
	}
	@JsonProperty("goodsName")
	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName =  goodsName;
	}
	@JsonProperty("goodsNo")
	public String getGoodsNo() {
		return goodsNo;
	}

	public void setGoodsNo(String goodsNo) {
		this.goodsNo =  goodsNo;
	}
	@JsonProperty("goodsRow")
	public String getGoodsRow() {
		return goodsRow;
	}

	public void setGoodsRow(String goodsRow) {
		this.goodsRow =  goodsRow;
	}
	@JsonProperty("goodsCell")
	public String getGoodsCell() {
		return goodsCell;
	}

	public void setGoodsCell(String goodsCell) {
		this.goodsCell =  goodsCell;
	}
	@JsonProperty("goodsLocal")
	public String getGoodsLocal() {
		return goodsLocal;
	}

	public void setGoodsLocal(String goodsLocal) {
		this.goodsLocal =  goodsLocal;
	}
	@JsonProperty("position")
	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position =  position;
	}

	@JsonProperty("full")
	public Integer getFull() {
		return full;
	}

	public void setFull(Integer full) {
		this.full = full;
	}

	public CkGoods() {
	    super();
	}

	@Override
	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("id", getId())
			.append("goodsName", getGoodsName())
			.append("goodsNo", getGoodsNo())
			.append("goodsRow", getGoodsRow())
			.append("goodsCell", getGoodsCell())
			.append("goodsLocal", getGoodsLocal())
			.append("position", getPosition())
			.append("createBy", getCreateBy())
			.append("createTime", getCreateTime())
			.append("updateBy", getUpdateBy())
			.append("updateTime", getUpdateTime())
			.append("remark", getRemark())
		.toString();
	}

}