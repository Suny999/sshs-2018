package com.sshs.core.customise.router;

import com.sshs.core.customise.handler.CustomiseHandler;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.reactive.function.server.RouterFunction;
import org.springframework.web.reactive.function.server.RouterFunctions;
import org.springframework.web.reactive.function.server.ServerResponse;

import static org.springframework.web.reactive.function.server.RequestPredicates.*;
import static org.springframework.web.reactive.function.server.RouterFunctions.nest;

@Configuration
public class CustomiseRouter {
    @Bean
    public RouterFunction<ServerResponse> customiseRoute(CustomiseHandler customiseHandler) {
        return nest(
                path("/customise"), //nest(accept(MediaType.APPLICATION_JSON),
                RouterFunctions.route(GET("/{pageId}"), customiseHandler::getCustomiseByPageId)
                        .andRoute(POST("/"), customiseHandler::saveCustomise).andRoute(DELETE("/{customiseId}"), customiseHandler::deleteCustomise));
    }
}
