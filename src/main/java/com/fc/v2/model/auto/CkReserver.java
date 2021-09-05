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
 * 战备物资对象 ck_reserver
 *
 * @author ben
 * @date 2021-08-29 15:18:31
 */
@TableName("ck_reserver")
public class CkReserver extends BaseEntity {

	private static final long serialVersionUID = 1L;

	/** 主键 */
	@TableId(type = IdType.ASSIGN_ID)
	@JsonSerialize(using = ToStringSerializer.class)
	@ApiModelProperty(value = "主键")
	private Long id;

	/** rfid */
	@ApiModelProperty(value = "rfid")
	private String rfid;

	/** 箱号 */
	@ApiModelProperty(value = "箱号")
	private Integer boxNo;

	/** 物料关联ID */
	@ApiModelProperty(value = "物料关联ID")
	private Long materialId;

	/** 物料名称 */
	@ApiModelProperty(value = "物料名称")
	private String materialName;

	/** 物料类别 */
	@ApiModelProperty(value = "物料类别管理ID")
	private Long materialTypeId;

	/** 物料类别 */
	@ApiModelProperty(value = "物料类别")
	private String materialType;

	/** 数量 */
	@ApiModelProperty(value = "数量")
	private Integer materialQuantity;

	/** 出库单号 */
	@ApiModelProperty(value = "出库单号")
	private Long outOrderId;

	/** 库位 */
	@ApiModelProperty(value = "库位")
	private String goodsName;

	@EnumValue
	@ApiModelProperty(value = "状态")
	private Status status;

	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}

	public Long getMaterialTypeId() {
		return materialTypeId;
	}

	public void setMaterialTypeId(Long materialTypeId) {
		this.materialTypeId = materialTypeId;
	}

	@JsonProperty("id")
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id =  id;
	}
	@JsonProperty("rfid")
	public String getRfid() {
		return rfid;
	}

	public void setRfid(String rfid) {
		this.rfid =  rfid;
	}
	@JsonProperty("boxNo")
	public Integer getBoxNo() {
		return boxNo;
	}

	public void setBoxNo(Integer boxNo) {
		this.boxNo =  boxNo;
	}
	@JsonProperty("materialId")
	public Long getMaterialId() {
		return materialId;
	}

	public void setMaterialId(Long materialId) {
		this.materialId =  materialId;
	}
	@JsonProperty("materialType")
	public String getMaterialType() {
		return materialType;
	}

	public void setMaterialType(String materialType) {
		this.materialType =  materialType;
	}
	@JsonProperty("materialName")
	public String getMaterialName() {
		return materialName;
	}

	public void setMaterialName(String materialName) {
		this.materialName =  materialName;
	}
	@JsonProperty("materialQuantity")
	public Integer getMaterialQuantity() {
		return materialQuantity;
	}

	public void setMaterialQuantity(Integer materialQuantity) {
		this.materialQuantity =  materialQuantity;
	}
	@JsonProperty("outOrderId")
	public Long getOutOrderId() {
		return outOrderId;
	}

	public void setOutOrderId(Long outOrderId) {
		this.outOrderId =  outOrderId;
	}
	@JsonProperty("goodsName")
	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName =  goodsName;
	}

																		

	public CkReserver() {
	    super();
	}

	@Override
	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("id", getId())
			.append("rfid", getRfid())
			.append("boxNo", getBoxNo())
			.append("materialId", getMaterialId())
			.append("materialType", getMaterialType())
			.append("materialName", getMaterialName())
			.append("materialQuantity", getMaterialQuantity())
			.append("outOrderId", getOutOrderId())
			.append("goodsName", getGoodsName())
			.append("createBy", getCreateBy())
			.append("createTime", getCreateTime())
			.append("updateBy", getUpdateBy())
			.append("updateTime", getUpdateTime())
			.append("remark", getRemark())
		.toString();
	}

}