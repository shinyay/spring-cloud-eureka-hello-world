package io.pivotal.shinyay

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class SpringCloudEurekaGsApplication

fun main(args: Array<String>) {
	runApplication<SpringCloudEurekaGsApplication>(*args)
}
