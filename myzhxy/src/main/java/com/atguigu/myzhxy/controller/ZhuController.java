package com.atguigu.myzhxy.controller;

import com.atguigu.myzhxy.pojo.Zhu;
import com.atguigu.myzhxy.service.ZhuService;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.atguigu.myzhxy.util.Result;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Api(tags = "助学金控制器")
@RestController
@RequestMapping("/sms/zhuController")
public class ZhuController {

    @Autowired
    private ZhuService zhuService;

    // /sms/gradeController/getGrades


    @ApiOperation("获取全部助学金")
    @GetMapping("/getZhu")
    public Result getZhu(){
        List<Zhu> grades =zhuService.getZhu();
        return Result.ok(grades);
    }


    //sms/gradeController/deleteGrade
    @ApiOperation("删除助学金信息")
    @DeleteMapping("/deleteZhu")
    public Result deleteGrade(
            @ApiParam("要删除的所有的grade的id的JSON集合") @RequestBody List<Integer> ids){

        zhuService.removeByIds(ids);
        return Result.ok();

    }

    @ApiOperation("新增或修改助学金,有id属性是修改,没有则是增加")
    @PostMapping("/saveOrUpdateZhu")
    public Result saveOrUpdateGrade(
            @ApiParam("JSON的Grade对象")@RequestBody Zhu zhu
    ){
        // 接收参数
        // 调用服务层方法完成增减或者修改
        zhuService.saveOrUpdate(zhu);
        return Result.ok();
    }



    //sms/gradeController/getGrades/1/3?gradeName=%E4%B8%89

    @ApiOperation("根据助学金名称模糊查询,带分页")
    @GetMapping("/getZhu/{pageNo}/{pageSize}")
    public Result getGrades(
            @ApiParam("分页查询的页码数") @PathVariable("pageNo") Integer pageNo,
            @ApiParam("分页查询的页大小") @PathVariable("pageSize") Integer pageSize,
            @ApiParam("分页查询模糊匹配的名称") String zhuName

    ){
        // 分页 带条件查询
        Page<Zhu> page =new Page<>(pageNo,pageSize);
        // 通过服务层
        IPage<Zhu> pageRs=zhuService.getZhuByOpr(page,zhuName);

        // 封装Result对象并返回
        return Result.ok(pageRs);
    }
}
