/*
 * Copyright 2012-2019 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.springframework.samples.petclinic.owner;

import java.util.UUID;

import org.springframework.data.cassandra.core.cql.PrimaryKeyType;
import org.springframework.data.cassandra.core.mapping.PrimaryKeyClass;
import org.springframework.data.cassandra.core.mapping.PrimaryKeyColumn;

/**
 * Pet compound primary key.
 *
 * @author patajones
 */
@PrimaryKeyClass
public class PetKey {

	@PrimaryKeyColumn(name = "pet_id", type = PrimaryKeyType.CLUSTERED)
	private UUID petId;

	@PrimaryKeyColumn(name = "owner_id", type = PrimaryKeyType.PARTITIONED)
	private UUID ownerId;

	public PetKey() {
		super();
	}

	public PetKey(UUID petId, UUID ownerId) {
		this.petId = petId;
		this.ownerId = ownerId;
	}

	public void setPetId(UUID id) {
		this.petId = id;
	}

	public UUID getPetId() {
		return this.petId;
	}

	public void setOwnerId(UUID ownerId) {
		this.ownerId = ownerId;
	}

	public UUID getOwnerId() {
		return this.ownerId;
	}

}
