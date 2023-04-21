package com.atguigu.myzhxy.controller;

import com.atguigu.myzhxy.pojo.Teacher;
import com.atguigu.myzhxy.service.TeacherService;
import com.atguigu.myzhxy.util.MD5;
import com.atguigu.myzhxy.util.Result;
import com.atguigu.myzhxy.vo.MailListVo;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Api(tags = "教师控制器")
@RestController
@RequestMapping("/sms/teacherController")
public class TeacherController {

    @Autowired
    private TeacherService teacherService;

    /*
     * get  sms/teacherController/getTeachers/1/3
     *      sms/teacherController/getTeachers/1/3?name=小&clazzName=一年一班
     *      请求数据
     *      响应Result  data= 分页
     * */
    @ApiOperation("分页获取教师信息,带搜索条件")
    @GetMapping("/getTeachers/{pageNo}/{pageSize}")
    public Result getTeachers(
            @ApiParam("页码数") @PathVariable("pageNo") Integer pageNo,
            @ApiParam("页大小") @PathVariable("pageSize") Integer pageSize,
            @ApiParam("查询条件") Teacher teacher
    ) {
        Page<Teacher> paraParam = new Page<>(pageNo, pageSize);

        IPage<Teacher> page = teacherService.getTeachersByOpr(paraParam, teacher);

        return Result.ok(page);
    }

    @ApiOperation("/获取全部教师")
    @GetMapping("/getTeachers")
    public Result getGrades(){

        List<Teacher> grades = teacherService.getTeachers();
        return Result.ok(grades);
    }

    /*
     * post sms/teacherController/saveOrUpdateTeacher
     *      请求数据 Teacher
     *      响应Result data= null OK
     * */
    @ApiOperation("添加或者修改教师信息")
    @PostMapping("/saveOrUpdateTeacher")
    public Result saveOrUpdateTeacher(
            @ApiParam("要保存或者修改的JOSN格式的Teacher") @RequestBody Teacher teacher
    ) {

        // 如果是新增,要对密码进行加密
        if (teacher.getId() == null || teacher.getId() == 0) {
            teacher.setPassword(MD5.encrypt(teacher.getPassword()));
        }

        teacherService.saveOrUpdate(teacher);
        return Result.ok();
    }

    /*
     * DELETE sms/teacherController/deleteTeacher
     *   请求的数据 JSON 数组 [1,2,3]
     *   响应Result data =null  OK
     *
     * */
    @ApiOperation("删除单个或者多个教师信息")
    @DeleteMapping("/deleteTeacher")
    public Result deleteTeacher(
            @ApiParam("要删除的教师信息的id的JOSN集合") @RequestBody List<Integer> ids
    ) {
        teacherService.removeByIds(ids);
        return Result.ok();
    }

    @ApiOperation("通讯录")
    @GetMapping("/mail/list")
    public Result getMailList(
            @ApiParam("页码数") @RequestParam(value = "pageNo", required = false, defaultValue = "1") Integer pageNo,
            @ApiParam("页大小") @RequestParam(value = "pageSize", required = false, defaultValue = "10") Integer pageSize,
            @RequestParam(value = "name", required = false) String name,
            @RequestParam(value = "type", required = false) String type

    ) {
        Page<Teacher> paraParam = new Page<>(pageNo, pageSize);

        return Result.ok(teacherService.getMailList(paraParam, name, type));
    }
}
