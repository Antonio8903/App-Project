package com.appproject.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@Entity
public class Student {
	@Id
	@GeneratedValue
	private Long id;
	
	@Column(nullable=false)
	private String name;
	
	@Column(nullable=false)
	private String lastName;
	
	@Column(nullable=false)
	private Integer age;
	
	@Column(nullable=false)
	private String email;
	
	@Column(nullable=false)
	private String identificationDocument;
}
