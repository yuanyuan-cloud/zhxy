package com.atguigu.myzhxy.service;

import com.atguigu.myzhxy.pojo.LoginForm;
import com.atguigu.myzhxy.pojo.Student;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

public interface StudentService extends IService<Student> {
    Student login(LoginForm loginForm);

    List<Student> getStudents();

    Student getStudentById(long userId);

    IPage<Student> getStudentByOpr(Page<Student> pageParam, Student student);
}
