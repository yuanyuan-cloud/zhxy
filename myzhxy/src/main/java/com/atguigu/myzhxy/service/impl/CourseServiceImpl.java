package com.atguigu.myzhxy.service.impl;

import com.atguigu.myzhxy.mapper.CourseMapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.atguigu.myzhxy.mapper.CourseMapper;
import com.atguigu.myzhxy.service.CourseService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import com.atguigu.myzhxy.pojo.Course;

import javax.management.Query;
import java.util.List;

@Service("courseServiceImpl")
@Transactional
public class CourseServiceImpl extends ServiceImpl<CourseMapper, Course> implements CourseService  {


    @Override
    public IPage<Course> getCourseByDate(Page<Course> pageParam, Integer cDate) {
        QueryWrapper queryWrapper =new QueryWrapper();

        if(!StringUtils.isEmpty(cDate)){
            queryWrapper.like("c_date",cDate);
        }

        queryWrapper.orderByDesc("id");

        Page page = baseMapper.selectPage(pageParam,queryWrapper);

        return page;
    }
    @Override
    public List<Course> getCourse() {
        return  baseMapper.selectList(null);
    }
}
