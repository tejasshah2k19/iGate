package com.grownited.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "members")
public class MemberEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer memberId;
	private String memberName;
	private Integer age;
	private Integer userId;//fk
	private Integer houseId;//fk 
	private String profilePhoto;

	public Integer getMemberId() {
		return memberId;
	}

	public void setMemberId(Integer memberId) {
		this.memberId = memberId;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getHouseId() {
		return houseId;
	}

	public void setHouseId(Integer houseId) {
		this.houseId = houseId;
	}

	public String getProfilePhoto() {
		return profilePhoto;
	}

	public void setProfilePhoto(String profilePhoto) {
		this.profilePhoto = profilePhoto;
	}

}
