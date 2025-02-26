package com.grownited.entity;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "deliverables")
public class DeliverableEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer deliverableId;

	private Integer houseId;// fk
	private LocalDate date;
	private Boolean pickup;

	public Integer getDeliverableId() {
		return deliverableId;
	}

	public void setDeliverableId(Integer deliverableId) {
		this.deliverableId = deliverableId;
	}

	public Integer getHouseId() {
		return houseId;
	}

	public void setHouseId(Integer houseId) {
		this.houseId = houseId;
	}

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}

	public Boolean getPickup() {
		return pickup;
	}

	public void setPickup(Boolean pickup) {
		this.pickup = pickup;
	}

}
