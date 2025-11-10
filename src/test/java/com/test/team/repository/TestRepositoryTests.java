package com.test.team.repository;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class TestRepositoryTests {
	@Autowired
	private TestRepository testRepository;
	
	@DisplayName("단위 테스트입니다.")
	@Test
	void testNum() {
		assertEquals(100, testRepository.num());
	}  
}