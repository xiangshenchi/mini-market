package com.example.api.model.entity;

import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

/**
 * 员工
 */
@Data
@Entity
@NoArgsConstructor
public class Employee {

    @Id
    @GeneratedValue(generator = "uuid2")
    @GenericGenerator(name = "uuid2", strategy = "org.hibernate.id.UUIDGenerator")
    private String id;

    //名字
    @NotBlank(message = "姓名不能为空")
    private String name;

    //性别
    @NotBlank(message = "性别不能为空")
    private String gender;

    //手机号
    @NotBlank(message = "手机号不能为空")
    @Pattern(regexp = "^[1][3,4,5,6,7,8,9][0-9]{9}$", message = "手机号格式有误")
    private String phone;

    //家庭住址
    @NotBlank(message = "家庭住址不能为空")
    private String address;

    //身份证号码
    @NotBlank(message = "身份证号码不能为空")
    private String idCard;

    //部门
    @NotBlank(message = "部门不能为空")
    private String department;

    //创建时间
    private String createAt;

    //更新时间
    private String updateAt;

}
