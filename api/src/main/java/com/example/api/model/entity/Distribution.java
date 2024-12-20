package com.example.api.model.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import java.time.LocalDateTime;

/**
 * 配送
 */
@Data
@Entity
@NoArgsConstructor
public class Distribution {

    @Id
    @GeneratedValue(generator = "uuid2")
    @GenericGenerator(name = "uuid2", strategy = "org.hibernate.id.UUIDGenerator")
    private String id;

    //司机id
    @NotBlank(message = "司机id不能为空")
    private String did;

    //车辆id
    @NotBlank(message = "车辆id不能为空")
    private String vid;

    //司机
    @NotBlank(message = "司机不能为空")
    private String driver;

    //车牌号
    @NotBlank(message = "车牌号不能为空")
    private String number;

    //客户电话
    @NotBlank(message = "客户电话不能为空")
    @Pattern(regexp = "^[1][3,4,5,6,7,8,9][0-9]{9}$", message = "手机号格式有误")
    private String phone;

    //客户地址
    @NotBlank(message = "客户地址不能为空")
    private String address;

    //加急处理
    private boolean urgent;

    //注意事项
    @NotBlank(message = "注意事项不能为空")
    private String care;

    //操作时间
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private LocalDateTime time;

    private Integer status;
}
