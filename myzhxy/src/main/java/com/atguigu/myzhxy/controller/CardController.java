package com.atguigu.myzhxy.controller;

import com.atguigu.myzhxy.pojo.Card;
import com.atguigu.myzhxy.service.CardService;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.atguigu.myzhxy.util.Result;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Api(tags = "一卡通控制器")
@RestController
@RequestMapping("/sms/cardController")
public class CardController {

    @Autowired
    private CardService cardService;

    // /sms/gradeController/getGrades


    @ApiOperation("获取全部一卡通")
    @GetMapping("/getCard")
    public Result getCard(){
        List<Card> grades =cardService.getCard();
        return Result.ok(grades);
    }


    //sms/gradeController/deleteGrade
    @ApiOperation("删除一卡通信息")
    @DeleteMapping("/deleteCard")
    public Result deleteCard(
            @ApiParam("要删除的所有的grade的id的JSON集合") @RequestBody List<Integer> ids){

        cardService.removeByIds(ids);
        return Result.ok();

    }

    @ApiOperation("新增或修改一卡通,有id属性是修改,没有则是增加")
    @PostMapping("/saveOrUpdateCard")
    public Result saveOrUpdateCard(
            @ApiParam("JSON的Grade对象")@RequestBody Card card
    ){
        // 接收参数
        // 调用服务层方法完成增减或者修改
        cardService.saveOrUpdate(card);
        return Result.ok();
    }



    //sms/gradeController/getGrades/1/3?gradeName=%E4%B8%89

    @ApiOperation("根据一卡通名称模糊查询,带分页")
    @GetMapping("/getCard/{pageNo}/{pageSize}")
    public Result getCard(
            @ApiParam("分页查询的页码数") @PathVariable("pageNo") Integer pageNo,
            @ApiParam("分页查询的页大小") @PathVariable("pageSize") Integer pageSize,
            @ApiParam("分页查询模糊匹配的名称") String gradeName

    ){
        // 分页 带条件查询
        Page<Card> page =new Page<>(pageNo,pageSize);
        // 通过服务层
        IPage<Card> pageRs=cardService.getCardByOpr(page,gradeName);

        // 封装Result对象并返回
        return Result.ok(pageRs);
    }
}
