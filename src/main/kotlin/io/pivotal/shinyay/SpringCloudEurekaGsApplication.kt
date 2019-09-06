package io.pivotal.shinyay

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer

@SpringBootApplication
@EnableEurekaServer
class SpringCloudEurekaGsApplication

fun main(args: Array<String>) {
	runApplication<SpringCloudEurekaGsApplication>(*args)
}
