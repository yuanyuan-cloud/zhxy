package com.atguigu.myzhxy.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.atguigu.myzhxy.pojo.Card;

import java.util.List;

public interface CardService extends IService<Card> {


    IPage<Card> getCardByOpr(Page<Card> page, String gradeName);

    List<Card> getCard();
}
