package org.springframework.samples.petclinic.reference;

import org.springframework.data.cassandra.repository.CassandraRepository;

public interface ReferenceRepository extends CassandraRepository<Reference, String> {

}
