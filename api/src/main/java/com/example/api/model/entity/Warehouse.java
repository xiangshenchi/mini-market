package com.example.api.model.entity;

import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.NotBlank;

/**
 * 仓库
 */
@Data
@Entity
@NoArgsConstructor
public class Warehouse {

    @Id
    @GeneratedValue(generator = "uuid2")
    @GenericGenerator(name = "uuid2", strategy = "org.hibernate.id.UUIDGenerator")
    private String id;

    //仓库名称
    @NotBlank(message = "仓库名称不能为空")
    private String name;

    //仓库负责人
    @NotBlank(message = "仓库负责人不能为空")
    private String principle;

    private String createAt;

}
