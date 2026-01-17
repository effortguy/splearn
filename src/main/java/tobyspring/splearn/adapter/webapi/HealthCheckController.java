package tobyspring.splearn.adapter.webapi;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HealthCheckController {
    @Value("${server.port}")
    private String port;

    @GetMapping("/env") // 바로 이 주소를 curl이 호출하는 겁니다!
    public String getEnv() {
        return "현재 구동 중인 포트: " + port;
    }
}