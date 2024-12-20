package com.example.api.model.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * 验证码
 */
@Data
@Entity
@NoArgsConstructor
public class Code {

    @Id
    private String email;

    private String value;

    private long exp;

    public Code(String email, String value) {
        this.email = email;
        this.value = value;
        this.exp = System.currentTimeMillis() + 1000 * 60 * 15;
    }

}
