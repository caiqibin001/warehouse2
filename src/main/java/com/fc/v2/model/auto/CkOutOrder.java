package com.fc.v2.model.auto;

import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import com.fc.v2.common.base.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.baomidou.mybatisplus.annotation.*;

import java.util.List;


/**
 * 出库单对象 ck_out_order
 *
 * @author ben
 * @date 2021-09-01 21:59:02
 */
@TableName("ck_out_order")
public class CkOutOrder extends BaseEntity {

	private static final long serialVersionUID = 1L;

	/** 主键 */
	@TableId(type = IdType.ASSIGN_ID)
	@JsonSerialize(using = ToStringSerializer.class)
	@ApiModelProperty(value = "主键")
	private Long id;

	/** 重要程度 */
	@ApiModelProperty(value = "重要程度")
	private Integer orderLevel;

	/** 出库事件 */
	@ApiModelProperty(value = "出库事件")
	private String outEvent;

	/** 是否完成 */
	@ApiModelProperty(value = "是否完成")
	private Integer finished;

	/** 是否全仓 */
	@ApiModelProperty(value = "是否全仓")
	private Integer alled;

	private List<CkReserver> reserverList;
	
	@JsonProperty("id")
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id =  id;
	}
	@JsonProperty("orderLevel")
	public Integer getOrderLevel() {
		return orderLevel;
	}

	public void setOrderLevel(Integer orderLevel) {
		this.orderLevel =  orderLevel;
	}
	@JsonProperty("outEvent")
	public String getOutEvent() {
		return outEvent;
	}

	public void setOutEvent(String outEvent) {
		this.outEvent =  outEvent;
	}
	@JsonProperty("finished")
	public Integer getFinished() {
		return finished;
	}

	public void setFinished(Integer finished) {
		this.finished =  finished;
	}
	@JsonProperty("alled")
	public Integer getAlled() {
		return alled;
	}

	public void setAlled(Integer alled) {
		this.alled =  alled;
	}

	public CkOutOrder() {
	    super();
	}

	public List<CkReserver> getReserverList() {
		return reserverList;
	}

	public void setReserverList(List<CkReserver> reserverList) {
		this.reserverList = reserverList;
	}

	@Override
	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("id", getId())
			.append("orderLevel", getOrderLevel())
			.append("outEvent", getOutEvent())
			.append("createBy", getCreateBy())
			.append("createTime", getCreateTime())
			.append("updateBy", getUpdateBy())
			.append("updateTime", getUpdateTime())
			.append("remark", getRemark())
			.append("finished", getFinished())
			.append("alled", getAlled())
		.toString();
	}

}