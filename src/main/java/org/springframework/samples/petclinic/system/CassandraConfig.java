package org.springframework.samples.petclinic.system;

import java.nio.file.Paths;

import com.datastax.oss.driver.api.core.CqlSession;
import com.datastax.oss.driver.api.core.CqlSessionBuilder;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * Cassandra Session Create using Astra Configuration The same property names as the
 * <a href="https://github.com/datastax/astra-sdk-java">astra-sdk project</a> were used.
 */
@Configuration
public class CassandraConfig {

	/*
	 * Use the standard Cassandra driver API to create a
	 * com.datastax.oss.driver.api.core.CqlSession instance.
	 */
	@Bean
	public CqlSession session(AstraConfig astraConfig) {
		CqlSessionBuilder builder = CqlSession.builder();

		if (null != astraConfig.getClientId() && !"".equals(astraConfig.getClientId())) {
			builder = builder.withAuthCredentials(astraConfig.getClientId(), astraConfig.getClientSecret());
		}

		if (null != astraConfig.getSecureConnectBundlePath() && !"".equals(astraConfig.getSecureConnectBundlePath())) {
			builder = builder.withCloudSecureConnectBundle(Paths.get(astraConfig.getSecureConnectBundlePath()));
		}

		if (null != astraConfig.getKeyspace() && !"".equals(astraConfig.getKeyspace())) {
			builder = builder.withKeyspace(astraConfig.getKeyspace());
		}

		return builder.build();
	}

}
