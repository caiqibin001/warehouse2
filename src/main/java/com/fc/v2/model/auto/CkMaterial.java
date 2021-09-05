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
 * 物资信息对象 ck_material
 *
 * @author ben
 * @date 2021-08-29 18:10:10
 */
@TableName("ck_material")
public class CkMaterial extends BaseEntity {

	private static final long serialVersionUID = 1L;

	/** 主键 */
	@TableId(type = IdType.ASSIGN_ID)
	@JsonSerialize(using = ToStringSerializer.class)
	@ApiModelProperty(value = "主键")
	private Long id;

	/** 物料名称 */
	@ApiModelProperty(value = "物料名称")
	private String name;

	/** 物料类别 */
	@ApiModelProperty(value = "物料类别关联ID")
	@JsonSerialize(using = ToStringSerializer.class)
	private Long typeId;

	/** 物料类别 */
	@ApiModelProperty(value = "物料类别")
	private String type;

	/** 单位 */
	@ApiModelProperty(value = "单位")
	private String unit;

	/** 是否可见 */
	@ApiModelProperty(value = "是否可见")
	private Integer visible;

	@ApiModelProperty(value = "数量")
	private Integer quantit;
	
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
	@JsonProperty("typeId")
	public Long getTypeId() {
		return typeId;
	}

	public void setTypeId(Long typeId) {
		this.typeId =  typeId;
	}
	@JsonProperty("unit")
	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit =  unit;
	}
	@JsonProperty("visible")
	public Integer getVisible() {
		return visible;
	}

	public void setVisible(Integer visible) {
		this.visible =  visible;
	}
	@JsonProperty("type")
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public CkMaterial() {
	    super();
	}

	public Integer getQuantit() {
		return quantit;
	}

	public void setQuantit(Integer quantit) {
		this.quantit = quantit;
	}

	@Override
	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("id", getId())
			.append("name", getName())
			.append("typeId", getTypeId())
			.append("unit", getUnit())
			.append("visible", getVisible())
			.append("createBy", getCreateBy())
			.append("createTime", getCreateTime())
			.append("updateBy", getUpdateBy())
			.append("updateTime", getUpdateTime())
			.append("remark", getRemark())
		.toString();
	}

}