package com.example.api.model.entity;

import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Positive;

/**
 * 商品
 */
@Data
@Entity
@NoArgsConstructor
public class Commodity {

    @Id
    @GeneratedValue(generator = "uuid2")
    @GenericGenerator(name = "uuid2", strategy = "org.hibernate.id.UUIDGenerator")
    private String id;

    @NotBlank(message = "商品名不能为空")
    private String name;

    @NotNull(message = "价格不能为空")
    @Positive(message = "价格必须为正数")
    private double price;

    @NotBlank(message = "介绍不能为空")
    private String description;

    private int count;

    private String createAt;

    private String updateAt;

}
