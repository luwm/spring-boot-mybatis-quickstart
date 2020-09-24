package com.company.project.common.task;

import com.company.project.config.AsyncConfigurer;
import com.github.structlog4j.ILogger;
import com.github.structlog4j.SLoggerFactory;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Component;

@SuppressWarnings("Duplicates")
@Component
public class ServiceHelper {
    static final ILogger logger = SLoggerFactory.getLogger(ServiceHelper.class);

    @Async(AsyncConfigurer.ASYNC_EXECUTOR_NAME)
    public void testAsync() {
        logger.info("start:");
        try {
            Thread.sleep(2000);
        }catch (Exception ex){
            logger.error(ex.getMessage());
        }
        logger.info("end");
    }

}
