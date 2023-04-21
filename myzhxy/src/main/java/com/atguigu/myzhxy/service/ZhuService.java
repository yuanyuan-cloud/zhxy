package com.atguigu.myzhxy.service;

import com.atguigu.myzhxy.pojo.Zhu;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

public interface ZhuService extends IService<Zhu> {


    IPage<Zhu> getZhuByOpr(Page<Zhu> page, String gradeName);

    List<Zhu> getZhu();
}
