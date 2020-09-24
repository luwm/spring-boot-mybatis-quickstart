package com.company.project.config;

import com.company.project.common.async.ContextCopyingDecorator;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;

import java.util.concurrent.Executor;

@Configuration
@EnableAsync
@SuppressWarnings(value = "Duplicates")
public class AsyncConfigurer {
    public static final String ASYNC_EXECUTOR_NAME = "asyncExecutor";

    @Value("${thread.core.pool.size}")
    private int corePoolSize;

    @Value("${thread.max.pool.size}")
    private int maxPoolSize;

    @Value("${thread.queue.capacity}")
    private int queueCapacity;

    @Value("${thread.name.prefix}")
    private String threadNamePrefix;

    @Bean(name=ASYNC_EXECUTOR_NAME)
    public Executor asyncExecutor() {
        ThreadPoolTaskExecutor executor = new ThreadPoolTaskExecutor();
        executor.setTaskDecorator(new ContextCopyingDecorator());
        executor.setCorePoolSize(corePoolSize);
        executor.setMaxPoolSize(maxPoolSize);
        executor.setQueueCapacity(queueCapacity);
        executor.setWaitForTasksToCompleteOnShutdown(true);
        executor.setThreadNamePrefix(threadNamePrefix);
        executor.initialize();
        return executor;
    }
}
