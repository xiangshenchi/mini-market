import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

@SpringBootTest
@ActiveProfiles("test")
public abstract class BaseTest {
    
    @BeforeAll
    static void init() {
        // 通用初始化
    }
    
    @AfterAll
    static void cleanup() {
        // 清理资源
    }
} 