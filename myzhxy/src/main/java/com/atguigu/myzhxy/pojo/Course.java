package com.atguigu.myzhxy.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@TableName("tb_course")
public class Course {
    @TableId(value = "id",type = IdType.AUTO)
    private Integer id;
    private String cno;
    private String cname;
    private String classId;
    private String className;
    private Integer cDate;
}
