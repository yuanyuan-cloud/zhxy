package com.atguigu.myzhxy.service.impl;

import com.atguigu.myzhxy.mapper.JiangMapper;
import com.atguigu.myzhxy.pojo.Jiang;
import com.atguigu.myzhxy.service.JiangService;
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
public class JiangServiceImpl extends ServiceImpl<JiangMapper, Jiang> implements JiangService {


    @Override
    public IPage<Jiang> getJiangByOpr(Page<Jiang> pageParam, String gradeName) {

        QueryWrapper<Jiang> queryWrapper=new QueryWrapper();

        if (!StringUtils.isEmpty(gradeName)) {
            queryWrapper.like("name",gradeName);
        }

        queryWrapper.orderByDesc("id");

        Page<Jiang> page = baseMapper.selectPage(pageParam, queryWrapper);

        return page;
    }

    @Override
    public List<Jiang> getJiang() {
        return  baseMapper.selectList(null);
    }
}
