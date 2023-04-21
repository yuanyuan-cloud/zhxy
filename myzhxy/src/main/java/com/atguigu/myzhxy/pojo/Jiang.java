package com.atguigu.myzhxy.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * @project: sms
 * @description: 学生信息
 */
@Data
@TableName("tb_jiang")
public class Jiang {

    @TableId(value = "id",type = IdType.AUTO)
    private Integer id;
    private String name;
    private String date;
    private String money;
}
