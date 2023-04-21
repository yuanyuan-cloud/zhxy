package com.atguigu.myzhxy.controller;

import com.atguigu.myzhxy.pojo.Jiang;
import com.atguigu.myzhxy.service.JiangService;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.atguigu.myzhxy.util.Result;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Api(tags = "奖学金控制器")
@RestController
@RequestMapping("/sms/jiangController")
public class JiangController {

    @Autowired
    private JiangService jiangService;

    // /sms/gradeController/getGrades


    @ApiOperation("获取全部奖学金")
    @GetMapping("/getJiang")
    public Result getJiang(){
        List<Jiang> grades =jiangService.getJiang();
        return Result.ok(grades);
    }


    //sms/gradeController/deleteGrade
    @ApiOperation("删除奖学金信息")
    @DeleteMapping("/deleteJiang")
    public Result deleteJiang(
            @ApiParam("要删除的所有的grade的id的JSON集合") @RequestBody List<Integer> ids){

        jiangService.removeByIds(ids);
        return Result.ok();

    }

    @ApiOperation("新增或修改奖学金,有id属性是修改,没有则是增加")
    @PostMapping("/saveOrUpdateJiang")
    public Result saveOrUpdateGrade(
            @ApiParam("JSON的Jiang对象")@RequestBody Jiang jiang
    ){
        // 接收参数
        // 调用服务层方法完成增减或者修改
        jiangService.saveOrUpdate(jiang);
        return Result.ok();
    }



    //sms/gradeController/getGrades/1/3?gradeName=%E4%B8%89

    @ApiOperation("根据奖学金名称模糊查询,带分页")
    @GetMapping("/getJiang/{pageNo}/{pageSize}")
    public Result getGrades(
            @ApiParam("分页查询的页码数") @PathVariable("pageNo") Integer pageNo,
            @ApiParam("分页查询的页大小") @PathVariable("pageSize") Integer pageSize,
            @ApiParam("分页查询模糊匹配的名称") String jiangName

    ){
        // 分页 带条件查询
        Page<Jiang> page =new Page<>(pageNo,pageSize);
        // 通过服务层
        IPage<Jiang> pageRs=jiangService.getJiangByOpr(page,jiangName);

        // 封装Result对象并返回
        return Result.ok(pageRs);
    }
}
