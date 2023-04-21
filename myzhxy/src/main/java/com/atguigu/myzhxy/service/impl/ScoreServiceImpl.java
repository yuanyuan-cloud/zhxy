package com.atguigu.myzhxy.service.impl;

import com.atguigu.myzhxy.mapper.ScoreMapper;
import com.atguigu.myzhxy.pojo.Score;
import com.atguigu.myzhxy.service.ScoreService;
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
public class ScoreServiceImpl extends ServiceImpl<ScoreMapper, Score> implements ScoreService {


    @Override
    public IPage<Score> getScoreByOpr(Page<Score> pageParam, String gradeName) {

        QueryWrapper<Score> queryWrapper=new QueryWrapper();

        if (!StringUtils.isEmpty(gradeName)) {
            queryWrapper.like("name",gradeName);
        }

        queryWrapper.orderByDesc("id");

        Page<Score> page = baseMapper.selectPage(pageParam, queryWrapper);

        return page;
    }

    @Override
    public List<Score> getScore() {
        return  baseMapper.selectList(null);
    }
}
