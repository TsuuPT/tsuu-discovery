package net.sandrohc.tsuu.discovery;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@EnableEurekaServer
@SpringBootApplication
public class TsuuDiscoveryApplication {

	public static void main(String[] args) {
		SpringApplication.run(TsuuDiscoveryApplication.class, args);
	}

}
