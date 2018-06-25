package com.sshs.core.customise.handler;

import com.sshs.core.customise.model.Customise;
import com.sshs.core.util.UuidUtil;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Component;
import org.springframework.web.reactive.function.BodyInserters;
import org.springframework.web.reactive.function.server.ServerRequest;
import org.springframework.web.reactive.function.server.ServerResponse;
import reactor.core.publisher.Mono;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

import static org.springframework.http.MediaType.APPLICATION_JSON;
import static org.springframework.web.reactive.function.BodyExtractors.toMono;

/**
 * 类名称： 自定义查询
 *
 * @author Suny
 * @version 1.0
 * @date 2017年10月23日
 */

@Component
public class CustomiseHandler {
    Log logger = LogFactory.getLog(CustomiseHandler.class);
    @Resource(name = "sqlSessionTemplate")
    private SqlSessionTemplate sqlSessionTemplate;

    /**
     * 添加自定义查询方法
     *
     * @param request
     * @return
     */
    public Mono<ServerResponse> addCustomise(ServerRequest request) {
        return ServerResponse.ok()//.contentType(MediaType.APPLICATION_JSON)
                .body(request.body(toMono(Customise.class)).map(c -> {
                    //System.out.println(">>>>>" + c.getCustomiseName());
                    c.setCustomiseId(UuidUtil.get32UUID());
                    c.setUserCode("admin");
                    c.setCrtDate(new Date());
                    sqlSessionTemplate.insert("com.sshs.core.customise.mapper.CustomiseMapper.save", c);
                    return c;
                }), Customise.class);
    }

    /**
     * 删除自定义查询方法
     *
     * @param request
     * @return
     */
    public Mono<ServerResponse> delCustomise(ServerRequest request) {
        System.out.println(">>>>>>>>>del");
        return ServerResponse.ok()//.contentType(MediaType.APPLICATION_JSON)
                .body(request.body(toMono(Customise.class)).map(c -> {
                    System.out.println(">>>>>>>>>"+c.getCustomiseId());
                    sqlSessionTemplate.delete("com.sshs.core.customise.mapper.CustomiseMapper.delete", c);
                    return c;
                }), Customise.class);
    }

    /**
     * 自定义查询-查询方法
     *
     * @param request
     * @return
     */
    public Mono<ServerResponse> getCustomise(ServerRequest request) {
        String pageId = request.pathVariable("id");
        Mono<ServerResponse> notFound = ServerResponse.notFound().build();
        Customise custom = new Customise();
        custom.setPageId(pageId);
        custom.setUserCode("admin");
        List<Customise> customises = sqlSessionTemplate.selectList("com.sshs.core.customise.mapper.CustomiseMapper.getCustomises",
                custom);

        return ServerResponse.ok().contentType(APPLICATION_JSON)
                .body(BodyInserters.fromObject(customises)).switchIfEmpty(notFound);
    }

    /*public Mono<ServerResponse> getTimePerSec(ServerRequest serverRequest) {
        return ServerResponse.ok().contentType(MediaType.TEXT_EVENT_STREAM).body(  // 1
                Flux.interval(Duration.ofSeconds(10)).   // 2
                        map(l -> new SimpleDateFormat("HH:mm:ss").format(new Date())),
                String.class);
    }*/
}
