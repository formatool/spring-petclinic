package org.springframework.samples.petclinic.reference;

import java.util.Set;

import org.springframework.data.cassandra.core.cql.PrimaryKeyType;
import org.springframework.data.cassandra.core.mapping.Column;
import org.springframework.data.cassandra.core.mapping.PrimaryKey;
import org.springframework.data.cassandra.core.mapping.PrimaryKeyColumn;
import org.springframework.data.cassandra.core.mapping.Table;

/**
 * Simple JavaBean domain object representing reference list.
 *
 * @author patajones
 */
@Table(value = "reference_lists")
public class Reference {

	@PrimaryKeyColumn(name = "list_name", type = PrimaryKeyType.PARTITIONED)
	@PrimaryKey("list_name")
	private String listName;

	@Column("values")
	private Set<String> values;

	public String getListName() {
		return listName;
	}

	public void setListName(String listName) {
		this.listName = listName;
	}

	public Set<String> getValues() {
		return values;
	}

	public void setValues(Set<String> values) {
		this.values = values;
	}

}
