package ${basePackage}.service.impl;

import ${basePackage}.common.task.ServiceHelper;
import ${basePackage}.mapper.${modelNameUpperCamel}Mapper;
import ${basePackage}.model.${modelNameUpperCamel};
import ${basePackage}.service.${modelNameUpperCamel}Service;
import ${basePackage}.dto.${modelNameUpperCamel}Dto;
import ${basePackage}.common.AbstractService;
import com.github.structlog4j.ILogger;
import com.github.structlog4j.SLoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import lombok.AllArgsConstructor;
import org.modelmapper.ModelMapper;
import javax.annotation.Resource;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

/**
 * Created by ${author} on ${date}.
 */
@Service
@Transactional
@AllArgsConstructor
public class ${modelNameUpperCamel}ServiceImpl extends AbstractService<${modelNameUpperCamel}> implements ${modelNameUpperCamel}Service {
    static final ILogger logger = SLoggerFactory.getLogger(${modelNameUpperCamel}ServiceImpl.class);
    @Resource
    private ${modelNameUpperCamel}Mapper ${modelNameLowerCamel}Mapper;
    private final ServiceHelper serviceHelper;
    private final ModelMapper modelMapper;

    private final JedisPool jedisPool;
    private final JedisPoolConfig jedisPoolConfig;

    private ${modelNameUpperCamel}Dto convertToDto(${modelNameUpperCamel} ${modelNameLowerCamel}) {
        return modelMapper.map(${modelNameLowerCamel}, ${modelNameUpperCamel}Dto.class);
    }
}
