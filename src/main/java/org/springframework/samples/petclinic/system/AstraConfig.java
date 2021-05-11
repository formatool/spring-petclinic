package org.springframework.samples.petclinic.system;

import java.nio.file.Paths;

import com.datastax.oss.driver.api.core.CqlSession;
import com.datastax.oss.driver.api.core.CqlSessionBuilder;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
@ConfigurationProperties(prefix = "astra")
public class AstraConfig {
    
    /** working with Astra. */
    private String secureConnectBundlePath;
    
    /** setup Astra from an external file. */
    private String keyspace;
    
    /** used as username for cqlSession. */
    private String clientId;
    
    /** used as password for cqlSession. */
    private String clientSecret;

	/*
	 * Use the standard Cassandra driver API to create a
	 * com.datastax.oss.driver.api.core.CqlSession instance.
	 */
	@Bean
	public CqlSession session() {
		CqlSessionBuilder builder = CqlSession.builder();

		if (null != this.getClientId() && !"".equals(this.getClientId())) {
			builder = builder.withAuthCredentials(this.getClientId(), this.getClientSecret());
		}

		if (null != this.getSecureConnectBundlePath() && !"".equals(this.getSecureConnectBundlePath())) {
			builder = builder.withCloudSecureConnectBundle(Paths.get(this.getSecureConnectBundlePath()));
		}

		if (null != this.getKeyspace() && !"".equals(this.getKeyspace())) {
			builder = builder.withKeyspace(this.getKeyspace());
		}

		return builder.build();
	}

	public String getClientId() {
		return clientId;
	}

	public String getClientSecret() {
		return clientSecret;
	}

	public void setClientId(String clientId) {
		this.clientId = clientId;
	}

	public void setClientSecret(String clientSecret) {
		this.clientSecret = clientSecret;
	}

	public String getSecureConnectBundlePath() {
		return secureConnectBundlePath;
	}

	public void setSecureConnectBundlePath(String secureConnectBundlePath) {
		this.secureConnectBundlePath = secureConnectBundlePath;
	}

	public String getKeyspace() {
		return keyspace;
	}

	public void setKeyspace(String keyspace) {
		this.keyspace = keyspace;
	}

}
