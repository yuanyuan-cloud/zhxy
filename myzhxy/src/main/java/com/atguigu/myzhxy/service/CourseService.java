package com.atguigu.myzhxy.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.atguigu.myzhxy.pojo.Course;

import java.util.List;

public interface CourseService extends IService<Course> {
    IPage<Course> getCourseByDate(Page<Course> page, Integer cDate);
    List<Course> getCourse();
}
