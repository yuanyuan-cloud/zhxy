package com.atguigu.myzhxy.service.impl;

import com.atguigu.myzhxy.mapper.CardMapper;
import com.atguigu.myzhxy.pojo.Card;
import com.atguigu.myzhxy.service.CardService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.List;

@Service
@Transactional
public class CardServiceImpl extends ServiceImpl<CardMapper, Card> implements CardService {


    @Override
    public IPage<Card> getCardByOpr(Page<Card> pageParam, String gradeName) {

        QueryWrapper<Card> queryWrapper=new QueryWrapper();

        if (!StringUtils.isEmpty(gradeName)) {
            queryWrapper.like("name",gradeName);
        }

        queryWrapper.orderByDesc("id");

        Page<Card> page = baseMapper.selectPage(pageParam, queryWrapper);

        return page;
    }

    @Override
    public List<Card> getCard() {
        return  baseMapper.selectList(null);
    }
}
