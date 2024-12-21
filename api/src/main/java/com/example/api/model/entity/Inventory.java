package com.example.api.model.entity;

import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.NotBlank;

/**
 * 库存
 */
@Data
@Entity
@NoArgsConstructor
public class Inventory {

    @Id
    @GeneratedValue(generator = "uuid2")
    @GenericGenerator(name = "uuid2", strategy = "org.hibernate.id.UUIDGenerator")
    private String id;

    //仓库id
    @NotBlank(message = "仓库id不能为空")
    private String wid;

    //商品信息id
    @NotBlank(message = "商品信息id不能为空")
    private String cid;

    //商品名
    @NotBlank(message = "商品名不能为空")
    private String name;

    //所在位置区域
    private String location;

    //数量
    private Integer count;

}
