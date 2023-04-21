package com.atguigu.myzhxy.service;

import com.atguigu.myzhxy.pojo.Jiang;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

public interface JiangService extends IService<Jiang> {


    IPage<Jiang> getJiangByOpr(Page<Jiang> page, String gradeName);

    List<Jiang> getJiang();
}
