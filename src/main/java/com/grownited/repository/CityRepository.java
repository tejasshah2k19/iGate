package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.dto.CityDto;
import com.grownited.entity.CityEntity;

@Repository
public interface CityRepository extends JpaRepository<CityEntity, Integer>{

	@Query(value = "select c.*,s.state_name from state s,cities c where s.state_id = c.state_id",nativeQuery = true)
	List<CityDto> getAll();


}
