package com.test.team.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Entity
@Getter
@ToString
@Table(name = "tblTeam")
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Team {
	
	@Id
	@SequenceGenerator(name="ateam_seq_generator", sequenceName = "seqTeam", allocationSize = 1)
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "team_seq_generator")
	private Long seq;
	
	private String name;
	private String description;
	
}