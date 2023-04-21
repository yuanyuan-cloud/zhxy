package com.atguigu.myzhxy.service;

import com.atguigu.myzhxy.pojo.LoginForm;
import com.atguigu.myzhxy.pojo.Teacher;
import com.atguigu.myzhxy.vo.MailListVo;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

public interface TeacherService extends IService<Teacher> {
    Teacher login(LoginForm loginForm);

    List<Teacher> getTeachers();

    Teacher getByTeacherById(long userId);

    IPage<Teacher> getTeachersByOpr(Page<Teacher> paraParam, Teacher teacher);

    /**
     * 通讯录分页
     */
    IPage<MailListVo> getMailList(Page<Teacher> page, String name, String type);
}
