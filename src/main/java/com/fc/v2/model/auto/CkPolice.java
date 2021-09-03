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
 * 携行库人员对象 ck_police
 *
 * @author ben
 * @date 2021-08-29 15:18:44
 */
@TableName("ck_police")
public class CkPolice extends BaseEntity {

	private static final long serialVersionUID = 1L;

	/** 主键 */
	@TableId(type = IdType.ASSIGN_ID)
	@JsonSerialize(using = ToStringSerializer.class)
	@ApiModelProperty(value = "主键")
	private Long id;

	/** 姓名 */
	@ApiModelProperty(value = "姓名")
	private String name;

	/** 年龄 */
	@ApiModelProperty(value = "年龄")
	private Integer age;

	/** 手机 */
	@ApiModelProperty(value = "手机")
	private String phone;

	/** 地址 */
	@ApiModelProperty(value = "地址")
	private String address;

	/** 身份证 */
	@ApiModelProperty(value = "身份证")
	private String idCard;
	
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
	@JsonProperty("age")
	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age =  age;
	}
	@JsonProperty("phone")
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone =  phone;
	}
	@JsonProperty("address")
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address =  address;
	}
	@JsonProperty("idCard")
	public String getIdCard() {
		return idCard;
	}

	public void setIdCard(String idCard) {
		this.idCard =  idCard;
	}

												

	public CkPolice() {
	    super();
	}

	@Override
	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("id", getId())
			.append("name", getName())
			.append("age", getAge())
			.append("phone", getPhone())
			.append("address", getAddress())
			.append("idCard", getIdCard())
			.append("createBy", getCreateBy())
			.append("createTime", getCreateTime())
			.append("updateBy", getUpdateBy())
			.append("updateTime", getUpdateTime())
			.append("remark", getRemark())
		.toString();
	}

}