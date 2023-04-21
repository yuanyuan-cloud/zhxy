package com.atguigu.myzhxy.controller;

import com.atguigu.myzhxy.util.Result;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.atguigu.myzhxy.pojo.Course;
import com.atguigu.myzhxy.service.CourseService;
import com.atguigu.myzhxy.util.Result;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Api(tags = "课程表控制器")
@RestController
@RequestMapping("/sms/courseController")
public class CourseController {

    @Autowired
    private CourseService courseService;

    @ApiOperation("获取全部课程表")
    @GetMapping("/getCourse")
    public Result getCourse(){
        List<Course> grades =courseService.getCourse();
        return Result.ok(grades);
    }
    //sms/courseController/getCourse/1/5?cDate=?


    @ApiOperation("根据星期模糊查询,带分页")
    @GetMapping("/getCourse/{pageNo}/{pageSize}")
    public Result getCourse(
//            @PathVariable("pageNo") Integer pageNo,
//            @PathVariable("pageSize") Integer pageSize,
//            @RequestParam("cDate") Integer cDate
             @ApiParam("分页查询的页码数")@PathVariable("pageNo") Integer pageNo,
            @ApiParam("分页查询的页大小")@PathVariable("pageSize") Integer pageSize,
            @ApiParam("分页查询模糊匹配的名称")Integer cDate
    ){
        //分页 带条件查询
        Page<Course> page =new Page<>(pageNo,pageSize);
        //通过服务层
        IPage<Course> pageRs = courseService.getCourseByDate(page,cDate);


        //封装Result对象并返回
        return  Result.ok(pageRs);

    }
}


