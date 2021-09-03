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
 * 物资类别对象 ck_material_type
 *
 * @author ben
 * @date 2021-08-29 16:04:03
 */
@TableName("ck_material_type")
public class CkMaterialType extends BaseEntity {

	private static final long serialVersionUID = 1L;

	/** 主键 */
	@TableId(type = IdType.ASSIGN_ID)
	@JsonSerialize(using = ToStringSerializer.class)
	@ApiModelProperty(value = "主键")
	private Long id;

	/** 物料类别 */
	@ApiModelProperty(value = "物料类别")
	private String name;

	/** 排序 */
	@ApiModelProperty(value = "排序")
	private Integer orderNum;

	/** 父级 */
	@ApiModelProperty(value = "父级")
	private Long pid;
	
	@JsonProperty("id")
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id =  id;
	}
	@JsonProperty("name")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name =  name;
	}
	@JsonProperty("orderNum")
	public Integer getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(Integer orderNum) {
		this.orderNum =  orderNum;
	}
	@JsonProperty("pid")
	public Long getPid() {
		return pid;
	}

	public void setPid(Long pid) {
		this.pid =  pid;
	}
										

	public CkMaterialType() {
	    super();
	}

	@Override
	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("id", getId())
			.append("name", getName())
			.append("orderNum", getOrderNum())
			.append("pid", getPid())
			.append("createBy", getCreateBy())
			.append("createTime", getCreateTime())
			.append("updateBy", getUpdateBy())
			.append("updateTime", getUpdateTime())
			.append("remark", getRemark())
		.toString();
	}

}