package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.MemberEntity;

@Repository
public interface MemberRepository extends JpaRepository<MemberEntity, Integer>{

	
	
	@Query(value = "select m.member_id,m.member_name,m.age,u.first_name,u.last_name from members m , users u where u.user_id = m.user_id and m.user_id = :userId",nativeQuery = true)
	List<Object[]>	getAll(Integer userId);
}
