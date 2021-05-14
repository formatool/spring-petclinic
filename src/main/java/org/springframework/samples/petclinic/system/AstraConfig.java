package org.springframework.samples.petclinic.system;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

/**
 * Astra configuration required to connect to
 * <a href="https://astra.datastax.com/">Datastax Astra DBaaS</a> The same property names
 * as the <a href="https://github.com/datastax/astra-sdk-java">astra-sdk project</a> were
 * used.
 */
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
