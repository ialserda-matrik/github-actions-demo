package nl.matrik.tutor.githubactionsdemo.controller

import io.swagger.v3.oas.annotations.Operation
import org.springframework.http.HttpStatus
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/v1/api/java")
class RestApiJavaController {

    @Operation(summary = "Get the Hello World message.")
    @GetMapping("/hello")
    fun getHelloTText(): ResponseEntity<String?>? {
        val message = "Hello World!"
        return ResponseEntity(message, HttpStatus.OK)
    }

}
