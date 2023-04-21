package com.atguigu.myzhxy.vo;

import lombok.Data;

import java.io.Serializable;

@Data
public class MailListVo implements Serializable {

    private static final long serialVersionUID = 1L;

    private String name;

    private String telephone;

    private String type;
}
