package ${basePackage}.service.impl;

import ${basePackage}.mapper.${modelNameUpperCamel}Mapper;
import ${basePackage}.model.${modelNameUpperCamel};
import ${basePackage}.service.${modelNameUpperCamel}Service;
import ${basePackage}.dto.${modelNameUpperCamel}Dto;
import ${basePackage}.common.AbstractService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import lombok.AllArgsConstructor;
import org.modelmapper.ModelMapper;
import javax.annotation.Resource;


/**
 * Created by ${author} on ${date}.
 */
@Service
@Transactional
@AllArgsConstructor
public class ${modelNameUpperCamel}ServiceImpl extends AbstractService<${modelNameUpperCamel}> implements ${modelNameUpperCamel}Service {
    @Resource
    private ${modelNameUpperCamel}Mapper ${modelNameLowerCamel}Mapper;
    private final ModelMapper modelMapper;

    private ${modelNameUpperCamel}Dto convertToDto(${modelNameUpperCamel} ${modelNameLowerCamel}) {
        return modelMapper.map(${modelNameLowerCamel}, ${modelNameUpperCamel}Dto.class);
    }
}
