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
 * 出库单关联表对象 ck_order_reserver
 *
 * @author ben
 * @date 2021-09-01 21:50:55
 */
@TableName("ck_order_reserver")
public class CkOrderReserver extends BaseEntity {

	private static final long serialVersionUID = 1L;

	/** 主键 */
	@TableId(type = IdType.ASSIGN_ID)
	@JsonSerialize(using = ToStringSerializer.class)
	@ApiModelProperty(value = "主键")
	private Long id;

	/** 出库单号 */
	@ApiModelProperty(value = "出库单号")
	private Long orderId;

	/** 物资ID */
	@ApiModelProperty(value = "物资ID")
	private Long reserverId;

	
	@JsonProperty("id")
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id =  id;
	}
	@JsonProperty("orderId")
	public Long getOrderId() {
		return orderId;
	}

	public void setOrderId(Long orderId) {
		this.orderId =  orderId;
	}
	@JsonProperty("reserverId")
	public Long getReserverId() {
		return reserverId;
	}

	public void setReserverId(Long reserverId) {
		this.reserverId =  reserverId;
	}

	public CkOrderReserver() {
	    super();
	}

	@Override
	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("id", getId())
			.append("orderId", getOrderId())
			.append("reserverId", getReserverId())
			.append("createBy", getCreateBy())
			.append("createTime", getCreateTime())
			.append("updateBy", getUpdateBy())
			.append("updateTime", getUpdateTime())
			.append("remark", getRemark())
		.toString();
	}

}