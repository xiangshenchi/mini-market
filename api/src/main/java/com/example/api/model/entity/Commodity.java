package com.example.api.model.entity;

import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.NotBlank;

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

    @NotBlank(message = "价格不能为空")
    private double price;

    @NotBlank(message = "介绍不能为空")
    private String description;

    @NotBlank(message = "数量不能为空")
    private int count;

    private String createAt;

    private String updateAt;

}
