package com.atguigu.myzhxy.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.atguigu.myzhxy.pojo.Score;

import java.util.List;

public interface ScoreService extends IService<Score> {


    IPage<Score> getScoreByOpr(Page<Score> page, String gradeName);

    List<Score> getScore();
}
