package com.atguigu.myzhxy.controller;

import com.atguigu.myzhxy.pojo.Score;
import com.atguigu.myzhxy.service.ScoreService;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.atguigu.myzhxy.util.Result;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Api(tags = "成绩控制器")
@RestController
@RequestMapping("/sms/scoreController")
public class ScoreController {

    @Autowired
    private ScoreService scoreService;

    // /sms/gradeController/getGrades


    @ApiOperation("获取全部成绩")
    @GetMapping("/getScore")
    public Result getScores(){
        List<Score> grades =scoreService.getScore();
        return Result.ok(grades);
    }


    //sms/gradeController/deleteGrade
    @ApiOperation("删除成绩信息")
    @DeleteMapping("/deleteScore")
    public Result deleteScore(
            @ApiParam("要删除的所有的grade的id的JSON集合") @RequestBody List<Integer> ids){

        scoreService.removeByIds(ids);
        return Result.ok();
    }

    @ApiOperation("新增或修改成绩,有id属性是修改,没有则是增加")
    @PostMapping("/saveOrUpdateScore")
    public Result saveOrUpdateScore(
            @ApiParam("JSON的Grade对象")@RequestBody Score grade
    ){
        // 接收参数
        // 调用服务层方法完成增减或者修改
        scoreService.saveOrUpdate(grade);
        return Result.ok();
    }



    //sms/gradeController/getGrades/1/3?gradeName=%E4%B8%89

    @ApiOperation("根据成绩名称模糊查询,带分页")
    @GetMapping("/getScore/{pageNo}/{pageSize}")
    public Result getScore(
            @ApiParam("分页查询的页码数") @PathVariable("pageNo") Integer pageNo,
            @ApiParam("分页查询的页大小") @PathVariable("pageSize") Integer pageSize,
            @ApiParam("分页查询模糊匹配的名称") String scoreName

    ){
        // 分页 带条件查询
        Page<Score> page =new Page<>(pageNo,pageSize);
        // 通过服务层
        IPage<Score> pageRs=scoreService.getScoreByOpr(page,scoreName);

        // 封装Result对象并返回
        return Result.ok(pageRs);
    }
}
