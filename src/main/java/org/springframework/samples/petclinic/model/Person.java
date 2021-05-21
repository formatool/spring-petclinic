package org.springframework.samples.petclinic.model;

import javax.validation.constraints.NotEmpty;

import org.springframework.data.cassandra.core.mapping.Column;

public class Person extends BaseEntity {

	@Column("first_name")
	@NotEmpty
	private String firstName;

	@Column("last_name")
	@NotEmpty
	private String lastName;

	public String getFirstName() {
		return this.firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return this.lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

}
