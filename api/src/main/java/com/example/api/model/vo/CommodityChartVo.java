package com.example.api.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;

import javax.validation.constraints.NotBlank;

@Data
@AllArgsConstructor
public class CommodityChartVo {

    //商品名
    @NotBlank(message = "商品名不能为空")
    private Integer value;

    //数量
    @NotBlank(message = "数量不能为空")
    private String name;

}
