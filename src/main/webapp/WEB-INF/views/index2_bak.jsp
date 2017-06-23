<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="ctxStatic" value="${pageContext.request.contextPath}/static"/>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>阿里云官网全屏导航菜单</title>
    <meta content="阿里云官网全屏导航菜单" name="description">
    <meta content="阿里云官网全屏导航菜单" name="keywords">
	<link rel="stylesheet" href="${ctxStatic}/aliyun/css/global.css">
	<link rel="stylesheet" href="${ctxStatic}/aliyun/css/common-header9.css">
	<script type="text/javascript" src="${ctxStatic}/aliyun/js/base-all.js"></script>
	<script type="text/javascript" src="${ctxStatic}/aliyun/js/common-header.js"></script>
</head>
<body>
<!-- 开发者中心数据拼接-->
<!-- 培训与频道拼接-->
<!-- 互联网+拼接-->
<div data-spm="2">
  <div class="ali-common-header">
    <div class="ali-common-header-inner common-header-clearfix">
      <!-- 运营专区 -->
      <div class="activity item pull-left" style="display:none">
        <div class="flash-wrap" id="J-ali-activity-img">
          <img src="${ctxStatic}/aliyun/images/TB1nHoRLXXXXXa3XVXXx1caHXXX-460-124.gif"
          style="height: 62px;width: 230px;">
        </div>
        <div class="link logo">
          <a href="http://www.aliyun.com" data-spm-click="gostr=/aliyun;locaid=20160107">
          </a>
        </div>
        <div class="link activity-url" id="J-activity-url" activity-url="http://promotion.aliyun.com/ntms/201601/hello.html?spm=5176.383338.3.1.3U4qp9">
        </div>
      </div>
      <!-- 导航菜单 -->
      <ul class="menu item pull-left" id="J_common_header_menu" data-spm="201">
        <li class="top-menu-item" has-dropdown="true" menu-type="product" data-spm-click="" style="display:none">
          <span class="menu-hd">
                    产品
          </span>
          <div class="menu-dropdown common-header-clearfix">
            <div class="menu-dropdown-inner">
              <div class="menu-dropdown-sidebar pull-left">
                <a data-spm-click="gostr=/aliyun;locaid=" class="active common-header-clearfix"
                href="javascript:void(0);" sidebar-type="ecs">
                  弹性计算
                  <span class="icon pull-right">
                  </span>
                </a>
                <a data-spm-click="gostr=/aliyun;locaid=" class=" common-header-clearfix"
                href="javascript:void(0);" sidebar-type="database">
                  数据库
                  <span class="icon pull-right">
                  </span>
                </a>
                <a data-spm-click="gostr=/aliyun;locaid=" class=" common-header-clearfix"
                href="javascript:void(0);" sidebar-type="cdn">
                  存储与CDN
                  <span class="icon pull-right">
                  </span>
                </a>
                <a data-spm-click="gostr=/aliyun;locaid=" class=" common-header-clearfix"
                href="javascript:void(0);" sidebar-type="network">
                  网络
                  <span class="icon pull-right">
                  </span>
                </a>
                <a data-spm-click="gostr=/aliyun;locaid=" class=" common-header-clearfix"
                href="javascript:void(0);" sidebar-type="bigdata">
                  大规模计算
                  <span class="icon pull-right">
                  </span>
                </a>
                <a data-spm-click="gostr=/aliyun;locaid=" class=" common-header-clearfix"
                href="javascript:void(0);" sidebar-type="yundun">
                  云盾
                  <span class="icon pull-right">
                  </span>
                </a>
                <a data-spm-click="gostr=/aliyun;locaid=" class=" common-header-clearfix"
                href="javascript:void(0);" sidebar-type="manage">
                  管理与监控
                  <span class="icon pull-right">
                  </span>
                </a>
                <a data-spm-click="gostr=/aliyun;locaid=" class=" common-header-clearfix"
                href="javascript:void(0);" sidebar-type="service">
                  应用服务
                  <span class="icon pull-right">
                  </span>
                </a>
                <a data-spm-click="gostr=/aliyun;locaid=" class=" common-header-clearfix"
                href="javascript:void(0);" sidebar-type="middleware">
                  互联网中间件
                  <span class="icon pull-right">
                  </span>
                </a>
                <a data-spm-click="gostr=/aliyun;locaid=" class=" common-header-clearfix"
                href="javascript:void(0);" sidebar-type="mobileservice">
                  移动服务
                  <span class="icon pull-right">
                  </span>
                </a>
                <a data-spm-click="gostr=/aliyun;locaid=" class=" common-header-clearfix"
                href="javascript:void(0);" sidebar-type="domain">
                  域名与网站（万网）
                  <span class="icon pull-right">
                  </span>
                </a>
              </div>
              <div class="menu-dropdown-content">
                <!-- 下拉右侧内容 -->
                <!-- 模板一： -->
                <div style="display: block;background-image:url(./images/ecs-bg-x1.jpg);"
                class="item-sub ecs-bg tpl1 product-bg-common common-header-clearfix" sidebar-type="ecs">
                  <div class="menu-dropdown-bd menu-dropdown-split-line">
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/ecs/">
                        <h4>
                          云服务器 ECS
                        </h4>
                        <div class="desc">
                          可弹性扩展、安全稳定、简单易用的计算服务 
                        </div>
                      </a>
                    </div>
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/disk/">
                        <h4>
                          块存储
                        </h4>
                        <div class="desc">
                          可弹性扩展、高性能、高可靠的块级随机存储 
                        </div>
                      </a>
                    </div>
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/ace/">
                        <h4>
                          云引擎 ACE
                        </h4>
                        <div class="desc">
                          弹性、分布式的应用托管环境 
                        </div>
                      </a>
                    </div>
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/ess/">
                        <h4>
                          弹性伸缩
                        </h4>
                        <div class="desc">
                          自动调整弹性计算资源的管理服务 
                        </div>
                      </a>
                    </div>
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/containerservice/">
                        <h4>
                          容器服务（公测中）
                        </h4>
                        <div class="desc">
                          运行和管理 Docker容器 
                        </div>
                      </a>
                    </div>
                  </div>
                  <div class="menu-dropdown-bd">
                    <div class="menu-dropdown-down-item">
                      <h5 class="topic-hd">
                        最新特性
                      </h5>
                      <ul class="desc">
                        <li>
                          <i class="list-style">
                            ●
                          </i>
                          <a target="_blank" href="http://www.aliyun.com/act/aliyun/gaoxiaoyunpan.html "
                          class="desc-li-txt">
                            ECS高效云盘上线 
                          </a>
                        </li>
                        <li>
                          <i class="list-style">
                            ●
                          </i>
                          <a target="_blank" href="http://www.aliyun.com/act/aliyun/usaaz2.html "
                          class="desc-li-txt">
                            ECS美国硅谷第二可用区开放 
                          </a>
                        </li>
                        <li>
                          <i class="list-style">
                            ●
                          </i>
                          <a target="_blank" href="http://www.aliyun.com/act/aliyun/singaporesale.html "
                          class="desc-li-txt">
                            ECS等10余款产品开放新加坡地域 
                          </a>
                        </li>
                        <li>
                          <i class="list-style">
                            ●
                          </i>
                          <a target="_blank" href="http://help.aliyun.com/knowledge_detail.htm?knowledgeId=6527514 "
                          class="desc-li-txt">
                            ECS镜像共享功能上线 
                          </a>
                        </li>
                        <li>
                          <i class="list-style">
                            ●
                          </i>
                          <a target="_blank" href="http://bbs.aliyun.com/read/241167.html " class="desc-li-txt">
                            SSD云盘和IO优化型实例免费公测 
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                <!-- 模板二： -->
                <!-- 模板一： -->
                <div style="display: ;background-image:url(./images/database-bg-x1.jpg);"
                class="item-sub database-bg tpl1 product-bg-common common-header-clearfix"
                sidebar-type="database">
                  <div class="menu-dropdown-bd menu-dropdown-split-line">
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/rds/">
                        <h4>
                          云数据库 RDS
                        </h4>
                        <div class="desc">
                          完全兼容MySQL，SQLServer，PostgreSQL协议的关系型数据库服务 
                        </div>
                      </a>
                    </div>
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/mongodb/">
                        <h4>
                          云数据库MongoDB版（公测中）
                        </h4>
                        <div class="desc">
                          三节点副本集保证高可用 
                        </div>
                      </a>
                    </div>
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/ocs/">
                        <h4>
                          云数据库Memcache版
                        </h4>
                        <div class="desc">
                          在线缓存服务，为热点数据的访问提供高速响应 
                        </div>
                      </a>
                    </div>
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/kvstore">
                        <h4>
                          云数据库Redis版
                        </h4>
                        <div class="desc">
                          兼容开源Redis协议的Key-Value类型在线存储服务 
                        </div>
                      </a>
                    </div>
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/ads">
                        <h4>
                          分析型数据库
                        </h4>
                        <div class="desc">
                          海量数据实时高并发在线分析服务 
                        </div>
                      </a>
                    </div>
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/dts/">
                        <h4>
                          数据传输（公测中）
                        </h4>
                        <div class="desc">
                          支持数据迁移及实时订阅同步的数据传输服务 
                        </div>
                      </a>
                    </div>
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/dms/">
                        <h4>
                          数据管理（公测中）
                        </h4>
                        <div class="desc">
                          比phpMyAdmin更强大，比Navicat更易用 
                        </div>
                      </a>
                    </div>
                  </div>
                  <div class="menu-dropdown-bd">
                    <div class="menu-dropdown-down-item">
                      <h5 class="topic-hd">
                        最新特性
                      </h5>
                      <ul class="desc">
                        <li>
                          <i class="list-style">
                            ●
                          </i>
                          <a target="_blank" href="http://www.aliyun.com/act/aliyun/rds_pgsql/demo.html?utm_content=m_1189 "
                          class="desc-li-txt">
                            新引擎PostgreSQL上线 
                          </a>
                        </li>
                        <li>
                          <i class="list-style">
                            ●
                          </i>
                          <a target="_blank" href="http://www.aliyun.com/product/ots/ " class="desc-li-txt">
                            北京地域、深圳地域OTS上线 
                          </a>
                        </li>
                        <li>
                          <i class="list-style">
                            ●
                          </i>
                          <a target="_blank" href="http://docs.aliyun.com/?pos=1#/pub/drds/best-practice/best_data_import_export "
                          class="desc-li-txt">
                            引入模式&数据导入功能上线 
                          </a>
                        </li>
                        <li>
                          <i class="list-style">
                            ●
                          </i>
                          <a target="_blank" href="http://www.aliyun.com/act/aliyun/rds/cloud_dba.html "
                          class="desc-li-txt">
                            RDS云数据库管家上线 
                          </a>
                        </li>
                        <li>
                          <i class="list-style">
                            ●
                          </i>
                          <a target="_blank" href="http://docs.aliyun.com/#/pub/drds/quick-start/console_use "
                          class="desc-li-txt">
                            DRDS实例化上线 
                          </a>
                        </li>
                        <li>
                          <i class="list-style">
                            ●
                          </i>
                          <a target="_blank" href="http://www.aliyun.com/product/mongodb " class="desc-li-txt">
                            MongoDB公测 
                          </a>
                        </li>
                        <li>
                          <i class="list-style">
                            ●
                          </i>
                          <a target="_blank" href="http://www.aliyun.com/product/kvstore " class="desc-li-txt">
                            Redis正式商用 
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                <!-- 模板二： -->
                <!-- 模板一： -->
                <div style="display: ;background-image:url(./images/cdn-bg-x1.jpg);"
                class="item-sub cdn-bg tpl1 product-bg-common common-header-clearfix" sidebar-type="cdn">
                  <div class="menu-dropdown-bd menu-dropdown-split-line">
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/oss/">
                        <h4>
                          对象存储 OSS
                        </h4>
                        <div class="desc">
                          海量、安全和高可靠的云存储服务 
                        </div>
                      </a>
                    </div>
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/disk/">
                        <h4>
                          块存储
                        </h4>
                        <div class="desc">
                          可弹性扩展、高性能、高可靠的块级随机存储 
                        </div>
                      </a>
                    </div>
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/ots/">
                        <h4>
                          表格存储
                        </h4>
                        <div class="desc">
                          NoSQL数据存储服务，提供海量结构化数据的存储和实时访问 
                        </div>
                      </a>
                    </div>
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/oas/">
                        <h4>
                          归档存储
                        </h4>
                        <div class="desc">
                          海量数据的长期归档、备份服务 
                        </div>
                      </a>
                    </div>
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/mns">
                        <h4>
                          消息服务
                        </h4>
                        <div class="desc">
                          可靠、海量、高并发的分布式消息通知服务 
                        </div>
                      </a>
                    </div>
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/cdn/">
                        <h4>
                          CDN
                        </h4>
                        <div class="desc">
                          跨运营商、跨地域全网覆盖的网络加速服务 
                        </div>
                      </a>
                    </div>
                  </div>
                  <div class="menu-dropdown-bd">
                    <div class="menu-dropdown-down-item">
                      <h5 class="topic-hd">
                        最新特性
                      </h5>
                      <ul class="desc">
                        <li>
                          <i class="list-style">
                            ●
                          </i>
                          <a target="_blank" href="http://promotion.aliyun.com/ntms/actstorages.html "
                          class="desc-li-txt">
                            对象存储OSS预售资源包上线 
                          </a>
                        </li>
                        <li>
                          <i class="list-style">
                            ●
                          </i>
                          <a target="_blank" href="http://docs.aliyun.com/?pos=1#/pub/oss/api-reference/access-control&amp;granting-permissions "
                          class="desc-li-txt">
                            临时访问凭证STS上线 
                          </a>
                        </li>
                        <li>
                          <i class="list-style">
                            ●
                          </i>
                          <a target="_blank" href="http://docs.aliyun.com/?pos=2#/pub/oss/product-documentation/function&amp;lifecycle "
                          class="desc-li-txt">
                            生命周期管理功能上线 
                          </a>
                        </li>
                        <li>
                          <i class="list-style">
                            ●
                          </i>
                          <a target="_blank" href="http://docs.aliyun.com/?#/pub/cdn/getting-started/monitor "
                          class="desc-li-txt">
                            新增流量监控和用户访问分析功能 
                          </a>
                        </li>
                        <li>
                          <i class="list-style">
                            ●
                          </i>
                          <a target="_blank" href="http://docs.aliyun.com/?#/pub/cdn/getting-started/other "
                          class="desc-li-txt">
                            新增用户网络诊断工具 
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                <!-- 模板二： -->
                <!-- 模板一： -->
                <div style="display: ;background-image:url(./images/TB10yLKKpXXXXaoaXXXfrUcUFXX-310-224.png);"
                class="item-sub network-bg tpl1 product-bg-common common-header-clearfix"
                sidebar-type="network">
                  <div class="menu-dropdown-bd menu-dropdown-split-line">
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/slb/">
                        <h4>
                          负载均衡
                        </h4>
                        <div class="desc">
                          对多台云服务器进行流量分发的负载均衡服务 
                        </div>
                      </a>
                    </div>
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/vpc/">
                        <h4>
                          专有网络 VPC
                        </h4>
                        <div class="desc">
                          帮您轻松构建逻辑隔离的专有网络 
                        </div>
                      </a>
                    </div>
                  </div>
                  <div class="menu-dropdown-bd">
                    <div class="menu-dropdown-down-item">
                      <h5 class="topic-hd">
                        最新特性
                      </h5>
                      <ul class="desc">
                        <li>
                          <i class="list-style">
                            ●
                          </i>
                          <a target="_blank" href="http://help.aliyun.com/noticelist/articleid/6660943.html "
                          class="desc-li-txt">
                            专有网络（VPC）产品公告 
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                <!-- 模板二： -->
                <!-- 模板一： -->
                <div style="display: ;background-image:url(./images/bigdata-bg-x1.jpg);"
                class="item-sub bigdata-bg tpl1 product-bg-common common-header-clearfix"
                sidebar-type="bigdata">
                  <div class="menu-dropdown-bd menu-dropdown-split-line">
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/odps/">
                        <h4>
                          大数据计算服务 ODPS
                        </h4>
                        <div class="desc">
                          针对TB/PB级数据的分布式处理服务,彻底解决大数据存储与运算瓶颈 
                        </div>
                      </a>
                    </div>
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/batchcompute">
                        <h4>
                          批量计算（公测中）
                        </h4>
                        <div class="desc">
                          适用于大规模并行批处理作业的分布式云服务 
                        </div>
                      </a>
                    </div>
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/cdp/">
                        <h4>
                          数据集成（公测中）
                        </h4>
                        <div class="desc">
                          稳定高效、弹性伸缩的数据同步平台 
                        </div>
                      </a>
                    </div>
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/emapreduce">
                        <h4>
                          E-MapReduce（公测中）
                        </h4>
                        <div class="desc">
                          基于Hadoop/Spark的大数据处理分析服务 
                        </div>
                      </a>
                    </div>
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/dpc">
                        <h4>
                          采云间（公测中）
                        </h4>
                        <div class="desc">
                          提供一站式数据开发和数据分析的平台。 
                        </div>
                      </a>
                    </div>
                  </div>
                  <div class="menu-dropdown-bd">
                    <div class="menu-dropdown-down-item">
                      <h5 class="topic-hd">
                        最新特性
                      </h5>
                      <ul class="desc">
                        <li>
                          <i class="list-style">
                            ●
                          </i>
                          <a target="_blank" href="http://docs.aliyun.com/?erQPgP#/pub/odps/dhs/summary "
                          class="desc-li-txt">
                            ODPS DataHub Service上线 
                          </a>
                        </li>
                        <li>
                          <i class="list-style">
                            ●
                          </i>
                          <a target="_blank" href="http://blog.aliyun.com/2638 " class="desc-li-txt">
                            采云间新增了数据质量应用 
                          </a>
                        </li>
                        <li>
                          <i class="list-style">
                            ●
                          </i>
                          <a target="_blank" href="http://blog.aliyun.com/2500?pos=14 " class="desc-li-txt">
                            数据集成控制台上线 
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                <!-- 模板二： -->
                <!-- 模板一： -->
                <div class="item-sub yundun-bg product-bg-common tpl2" sidebar-type="yundun"
                style="display:none;background-image:url(./images/yundun-bg-x1.jpg);">
                  <div class="common-header-clearfix menu-dropdown-bd-wrap">
                    <div class="menu-dropdown-bd">
                      <div class="product-list common-header-clearfix">
                        <div class="menu-dropdown-down-item">
                          <a href="http://www.aliyun.com/product/sas/">
                            <h4>
                              态势感知
                            </h4>
                            <div class="desc">
                              安全大数据分析的威胁监测平台
                            </div>
                          </a>
                        </div>
                        <div class="menu-dropdown-down-item">
                          <a href="http://www.aliyun.com/product/ddosbasic/">
                            <h4>
                              基础防护
                              <span style='color:#999'>
                                [网络安全]
                              </span>
                            </h4>
                            <div class="desc">
                              提供基础DDoS防护和应用防护
                            </div>
                          </a>
                        </div>
                        <div class="menu-dropdown-down-item">
                          <a href="http://www.aliyun.com/product/ddos/">
                            <h4>
                              DDoS高防IP
                              <span style='color:#999'>
                                [网络安全]
                              </span>
                            </h4>
                            <div class="desc">
                              提供最高300G防护，按天计算
                            </div>
                          </a>
                        </div>
                        <div class="menu-dropdown-down-item">
                          <a href="http://www.aliyun.com/product/esn/">
                            <h4>
                              安全网络
                              <span style='color:#999'>
                                [网络安全]
                              </span>
                            </h4>
                            <div class="desc">
                              集安全/加速/负载均衡为一体的网络接入产品
                            </div>
                          </a>
                        </div>
                        <div class="menu-dropdown-down-item">
                          <a href="http://www.aliyun.com/product/aegis/">
                            <h4>
                              安骑士
                              <span style='color:#999'>
                                [服务器安全]
                              </span>
                            </h4>
                            <div class="desc">
                              服务器安全管理中心
                            </div>
                          </a>
                        </div>
                        <div class="menu-dropdown-down-item">
                          <a href="http://www.aliyun.com/product/vipaegis/">
                            <h4>
                              补丁管理
                              <span style='color:#999'>
                                [服务器安全]
                              </span>
                            </h4>
                            <div class="desc">
                              自研漏洞补丁，云端一键修复漏洞
                            </div>
                          </a>
                        </div>
                        <div class="menu-dropdown-down-item">
                          <a href="http://www.aliyun.com/product/antifraud/">
                            <h4>
                              反欺诈
                              <span style='color:#999'>
                                [业务安全]
                              </span>
                            </h4>
                            <div class="desc">
                              风险业务用户核实、防垃圾注册和营销作弊等服务
                            </div>
                          </a>
                        </div>
                      </div>
                    </div>
                    <div class="menu-dropdown-bd">
                      <div class="product-list common-header-clearfix">
                        <div class="menu-dropdown-down-item">
                          <a href="http://www.aliyun.com/product/lvwang/">
                            <h4>
                              绿网
                              <span style='color:#999'>
                                [内容安全]
                              </span>
                            </h4>
                            <div class="desc">
                              专注违规信息安全监测及管控
                            </div>
                          </a>
                        </div>
                        <div class="menu-dropdown-down-item">
                          <a href="http://www.aliyun.com/product/cdi/">
                            <h4>
                              内容检测API
                              <span style='color:#999'>
                                [内容安全]
                              </span>
                            </h4>
                            <div class="desc">
                              智能化色情、暴恐、垃圾等信息检测开放服务
                            </div>
                          </a>
                        </div>
                        <div class="menu-dropdown-down-item">
                          <a href="http://www.aliyun.com/product/hsm/">
                            <h4>
                              加密服务（公测中）
                              <span style='color:#999'>
                                [数据安全]
                              </span>
                            </h4>
                            <div class="desc">
                              云上用户的数据加密解决方案
                            </div>
                          </a>
                        </div>
                        <div class="menu-dropdown-down-item">
                          <a href="http://www.aliyun.com/product/aps/">
                            <h4>
                              渗透测试
                              <span style='color:#999'>
                                [专家服务]
                              </span>
                            </h4>
                            <div class="desc">
                              专业性入侵尝试，评估重大安全漏洞或隐患
                            </div>
                          </a>
                        </div>
                        <div class="menu-dropdown-down-item">
                          <a href="http://www.aliyun.com/product/ats/">
                            <h4>
                              网络安全专家服务
                              <span style='color:#999'>
                                [专家服务]
                              </span>
                            </h4>
                            <div class="desc">
                              私家定制的攻防重保
                            </div>
                          </a>
                        </div>
                        <div class="menu-dropdown-down-item">
                          <a href="http://www.aliyun.com/product/xianzhi/">
                            <h4>
                              先知计划（公测中）
                              <span style='color:#999'>
                                [专家服务]
                              </span>
                            </h4>
                            <div class="desc">
                              帮助企业建立“私有”漏洞收集中心
                            </div>
                          </a>
                        </div>
                        <div class="menu-dropdown-down-item">
                          <a href="http://www.aliyun.com/product/mss/">
                            <h4>
                              服务器安全托管
                              <span style='color:#999'>
                                [专家服务]
                              </span>
                            </h4>
                            <div class="desc">
                              专属安全团队保障零入侵
                            </div>
                          </a>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="item-sub-ft common-header-clearfix">
                    <div class="menu-dropdown-down-item">
                      <h4 class="tpl2-content-ft">
                        最新特性
                      </h4>
                      <ul class="desc common-header-clearfix">
                        <li>
                          <i class="list-style">
                            ●
                          </i>
                          <a target="_blank" href="http://www.aliyun.com/product/antifraud/ " class="desc-li-txt">
                            反欺诈服务上线 
                          </a>
                        </li>
                        <li>
                          <i class="list-style">
                            ●
                          </i>
                          <a target="_blank" href="http://www.aliyun.com/product/mss " class="desc-li-txt">
                            安骑士推出云托管服务 
                          </a>
                        </li>
                        <li>
                          <i class="list-style">
                            ●
                          </i>
                          <a target="_blank" href="http://www.aliyun.com/product/ats " class="desc-li-txt">
                            DDoS推出专家服务 
                          </a>
                        </li>
                        <li>
                          <i class="list-style">
                            ●
                          </i>
                          <a target="_blank" href="http://blog.aliyun.com/2703 " class="desc-li-txt">
                            应用防火墙接入恢复 
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                <!-- 模板三： -->
                <!-- 模板一： -->
                <div style="display: ;background-image:url(./images/manage-bg-x1.jpg);"
                class="item-sub manage-bg tpl1 product-bg-common common-header-clearfix"
                sidebar-type="manage">
                  <div class="menu-dropdown-bd menu-dropdown-split-line">
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/jiankong/">
                        <h4>
                          云监控
                        </h4>
                        <div class="desc">
                          指标监控与报警服务 
                        </div>
                      </a>
                    </div>
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/ram/">
                        <h4>
                          访问控制（公测中）
                        </h4>
                        <div class="desc">
                          支持细粒度多纬度授权的访问控制服务 
                        </div>
                      </a>
                    </div>
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/ros/">
                        <h4>
                          资源编排（公测中）
                        </h4>
                        <div class="desc">
                          批量创建、管理、配置云计算资源 
                        </div>
                      </a>
                    </div>
                  </div>
                  <div class="menu-dropdown-bd">
                    <div class="menu-dropdown-down-item">
                      <h5 class="topic-hd">
                        最新特性
                      </h5>
                      <ul class="desc">
                        <li>
                          <i class="list-style">
                            ●
                          </i>
                          <a target="_blank" href="http://www.aliyun.com/product/ram/ " class="desc-li-txt">
                            访问控制 RAM 开始公测 
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                <!-- 模板二： -->
                <!-- 模板一： -->
                <div style="display: ;background-image:url(./images/service-bg-x1.jpg);"
                class="item-sub service-bg tpl1 product-bg-common common-header-clearfix"
                sidebar-type="service">
                  <div class="menu-dropdown-bd menu-dropdown-split-line">
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/sls/">
                        <h4>
                          日志服务（公测中）
                        </h4>
                        <div class="desc">
                          针对日志收集、存储、查询和分析的服务 
                        </div>
                      </a>
                    </div>
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/opensearch/">
                        <h4>
                          开放搜索
                        </h4>
                        <div class="desc">
                          结构化数据搜索托管服务 
                        </div>
                      </a>
                    </div>
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/mts/">
                        <h4>
                          媒体转码
                        </h4>
                        <div class="desc">
                          为多媒体数据提供的转码计算服务 
                        </div>
                      </a>
                    </div>
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/pts/">
                        <h4>
                          性能测试
                        </h4>
                        <div class="desc">
                          性能云测试平台，帮您轻松完成系统性能评估 
                        </div>
                      </a>
                    </div>
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/directmail">
                        <h4>
                          邮件推送
                        </h4>
                        <div class="desc">
                          事务邮件、通知邮件、批量邮件的推送服务 
                        </div>
                      </a>
                    </div>
                  </div>
                  <div class="menu-dropdown-bd">
                    <div class="menu-dropdown-down-item">
                      <h5 class="topic-hd">
                        最新特性
                      </h5>
                      <ul class="desc">
                        <li>
                          <i class="list-style">
                            ●
                          </i>
                          <a target="_blank" href="http://docs.aliyun.com/#/pub/pts/record-tool-guide/record-tool-guide "
                          class="desc-li-txt">
                            性能测试性能脚本录制调试功能上线 
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                <!-- 模板二： -->
                <!-- 模板一： -->
                <div style="display: ;background-image:url(./images/TB11EbPKpXXXXbUXVXXYMcuQVXX-375-260.png);"
                class="item-sub middleware-bg tpl1 product-bg-common common-header-clearfix"
                sidebar-type="middleware">
                  <div class="menu-dropdown-bd menu-dropdown-split-line">
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/edas">
                        <h4>
                          企业级分布式应用服务 EDAS
                        </h4>
                        <div class="desc">
                          以应用为中心的中间件PaaS平台 
                        </div>
                      </a>
                    </div>
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/ons/">
                        <h4>
                          消息队列（公测中）
                        </h4>
                        <div class="desc">
                          基于阿里开源消息中间件MetaQ的云消息产品 
                        </div>
                      </a>
                    </div>
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/drds/">
                        <h4>
                          分布式关系型数据库服务 DRDS
                        </h4>
                        <div class="desc">
                          水平拆分/读写分离的在线分布式数据库服务 
                        </div>
                      </a>
                    </div>
                  </div>
                  <div class="menu-dropdown-bd">
                    <div class="menu-dropdown-down-item">
                      <h5 class="topic-hd">
                        最新特性
                      </h5>
                      <ul class="desc">
                        <li>
                          <i class="list-style">
                            ●
                          </i>
                          <a target="_blank" href="http://onsteam.oss-cn-hangzhou.aliyuncs.com/ALIYUN_ONS_USER_GUIDE.pdf "
                          class="desc-li-txt">
                            消息队列mqtt功能公测 
                          </a>
                        </li>
                        <li>
                          <i class="list-style">
                            ●
                          </i>
                          <a target="_blank" href="http://bbs.aliyun.com/read/247144.html " class="desc-li-txt">
                            消息队列新功能推广 
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                <!-- 模板二： -->
                <!-- 模板一： -->
                <div style="display: ;background-image:url(./images/TB159fNLXXXXXccXXXXXXXXXXXX-309-223.jpg);"
                class="item-sub mobileservice-bg tpl1 product-bg-common common-header-clearfix"
                sidebar-type="mobileservice">
                  <div class="menu-dropdown-bd menu-dropdown-split-line">
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/man">
                        <h4>
                          移动数据分析（公测中）
                        </h4>
                        <div class="desc">
                          移动应用数据采集、分析、展示和数据输出服务 
                        </div>
                      </a>
                    </div>
                    <div class="menu-dropdown-down-item">
                      <a href="http://www.aliyun.com/product/cps">
                        <h4>
                          移动推送（公测中）
                        </h4>
                        <div class="desc">
                          移动应用通知与消息推送服务 
                        </div>
                      </a>
                    </div>
                  </div>
                  <div class="menu-dropdown-bd">
                    <div class="menu-dropdown-down-item">
                      <h5 class="topic-hd">
                        最新特性
                      </h5>
                      <ul class="desc">
                        <li>
                          <i class="list-style">
                            ●
                          </i>
                          <a target="_blank" href="http://www.aliyun.com/product/man " class="desc-li-txt">
                            移动数据分析上线公测 
                          </a>
                        </li>
                        <li>
                          <i class="list-style">
                            ●
                          </i>
                          <a target="_blank" href="http://www.aliyun.com/product/cps " class="desc-li-txt">
                            移动推送上线公测 
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                <!-- 模板二： -->
                <!-- 模板一： -->
                <div class="item-sub domain-bg product-bg-common tpl3" sidebar-type="domain"
                style="display:none;background-image:url(./images/domain-bg-x1.jpg);">
                  <div class="item-sub-hd common-header-clearfix">
                    <div class="menu-dropdown-down-item ">
                      <h4>
                        <a href="http://wanwang.aliyun.com/domain/">
                          域名注册
                        </a>
                      </h4>
                      <div class="item-name domain-regist-item">
                        <a href="http://wanwang.aliyun.com/domain/com/">
                          .com
                        </a>
                        <a href="http://wanwang.aliyun.com/domain/newgtld/?#.wang">
                          .wang
                          <span class="is-new">
                            <img src="./images/TB1afqGGpXXXXcEXVXX5ujgGFXX-39-20.png"
                            width="20" height="10" />
                          </span>
                        </a>
                        <a href="http://wanwang.aliyun.com/domain/cn/">
                          .cn
                        </a>
                        <a href="http://wanwang.aliyun.com/domain/newgtld/?#.top">
                          .top
                          <span class="is-new">
                            <img src="./images/TB1afqGGpXXXXcEXVXX5ujgGFXX-39-20.png"
                            width="20" height="10" />
                          </span>
                        </a>
                        <a href="http://wanwang.aliyun.com/domain/net/">
                          .net
                        </a>
                        <a href="http://wanwang.aliyun.com/domain/newgtld/?#.xyz">
                          .xyz
                        </a>
                      </div>
                      <div class="menu-dropdown-down-item-ft domain-more">
                        <a href="http://wanwang.aliyun.com/domain/">
                          更多域名选择>>
                        </a>
                      </div>
                    </div>
                    <div class="menu-dropdown-down-item ">
                      <h4>
                        <a href="http://wanwang.aliyun.com/domain/#3">
                          域名转入与交易
                        </a>
                      </h4>
                      <div class="item-name domain-exchange-item">
                        <a href="http://wanwang.aliyun.com/domain/transfer/">
                          域名转入
                        </a>
                        <a href="http://tdomain.aliyun.com/taodomainmarket/home">
                          淘域名市场
                        </a>
                        <a href="http://wanwang.aliyun.com/domain/apricequeries/">
                          一口价二手域名
                        </a>
                      </div>
                    </div>
                  </div>
                  <div class="tpl3-split-line">
                  </div>
                  <div class="item-sub-ft common-header-clearfix">
                    <div class="menu-dropdown-down-item">
                      <a href="http://wanwang.aliyun.com/hosting/">
                        <h4>
                          云虚拟主机
                        </h4>
                        <div class="desc">
                          建站主机，环境预装
                        </div>
                      </a>
                    </div>
                    <div class="menu-dropdown-down-item">
                      <a href="http://wanwang.aliyun.com/hosting/elastic/">
                        <h4>
                          弹性Web托管（弹性虚机）
                        </h4>
                        <div class="desc">
                          新一代虚机，独享内存，高性价比
                        </div>
                      </a>
                    </div>
                    <div class="menu-dropdown-down-item">
                      <a href="http://wanwang.aliyun.com/domain/dns/">
                        <h4>
                          云解析
                        </h4>
                        <div class="desc">
                          域名解析，安全、稳定、极速、开放
                        </div>
                      </a>
                    </div>
                    <div class="menu-dropdown-down-item">
                      <a href="http://wanwang.aliyun.com/mail/">
                        <h4>
                          云邮箱
                        </h4>
                        <div class="desc">
                          极速、安全、多端，办公协同新体验
                        </div>
                      </a>
                    </div>
                    <div class="menu-dropdown-down-item">
                      <a href="http://market.aliyun.com/jianzhan/">
                        <h4>
                          企业建站
                        </h4>
                        <div class="desc">
                          海量模板与定制网站任您选
                        </div>
                      </a>
                    </div>
                  </div>
                </div>
                <!-- 模板一： -->
              </div>
            </div>
          </div>
        </li>
        <li class="top-menu-item" has-dropdown="true" menu-type="solution" data-spm-click="gostr=/aliyun;locaid=">
          <span class="menu-hd">
            解决方案
          </span>
          <div class="menu-dropdown solutions solution-bg">
            <div class="menu-dropdown-inner module-padding solution-inner common-header-clearfix">
              <div class="module-wrap " style="width:180px">
                <div class="module-hd">
                  通用解决方案
                </div>
                <div class="module-bd">
                  <a href="http://www.aliyun.com/solution/web/" target="_self">
                    网站解决方案
                  </a>
                  <a href="http://www.aliyun.com/solution/security/" target="_self">
                    安全解决方案
                  </a>
                  <a href="http://www.aliyun.com/solution/storage/" target="_self">
                    云存储解决方案
                  </a>
                  <a href="http://www.aliyun.com/solution/app/" target="_self">
                    移动APP解决方案
                  </a>
                  <a href="http://www.aliyun.com/solution/recovery" target="_self">
                    中小型应用容灾方案
                  </a>
                </div>
              </div>
              <div class="module-wrap last" style="">
                <div class="module-hd">
                  行业解决方案
                </div>
                <div class="module-bd">
                  <a href="http://media.aliyun.com/" target="_self">
                    多媒体解决方案
                  </a>
                  <a href="http://www.aliyun.com/solution/finance" target="_self">
                    金融解决方案
                  </a>
                  <a href="http://www.aliyun.com/solution/game" target="_self">
                    游戏解决方案
                  </a>
                  <a href="http://healthcare.aliyun.com/" target="_self">
                    医疗解决方案
                  </a>
                  <a href="http://www.aliyun.com/solution/ecommerce/" target="_self">
                    电商解决方案
                  </a>
                  <a href="http://govcloud.aliyun.com/" target="_self">
                    政务解决方案
                  </a>
                  <a href="http://rendering.aliyun.com/" target="_self">
                    渲染解决方案
                  </a>
                  <a href="http://www.aliyun.com/solution/iot/" target="_self">
                    物联网解决方案
                  </a>
                  <a href="http://www.aliyun.com/solution/o2o/" target="_self">
                    O2O解决方案
                  </a>
                </div>
              </div>
            </div>
          </div>
        </li>
        
        
         <li class="top-menu-item" has-dropdown="true" menu-type="solution" data-spm-click="gostr=/aliyun;locaid=">
          <span class="menu-hd">
            解决方案2
          </span>
          <div class="menu-dropdown solutions solution-bg">
            <div class="menu-dropdown-inner module-padding solution-inner common-header-clearfix">
              <div class="module-wrap " style="width:180px">
                <div class="module-hd">
                  通用解决方案
                </div>
                <div class="module-bd">
                  <a href="http://www.aliyun.com/solution/web/" target="_self">
                    网站解决方案
                  </a>
                  <a href="http://www.aliyun.com/solution/security/" target="_self">
                    安全解决方案
                  </a>
                  <a href="http://www.aliyun.com/solution/storage/" target="_self">
                    云存储解决方案
                  </a>
                  <a href="http://www.aliyun.com/solution/app/" target="_self">
                    移动APP解决方案
                  </a>
                  <a href="http://www.aliyun.com/solution/recovery" target="_self">
                    中小型应用容灾方案
                  </a>
                </div>
              </div>
              <div class="module-wrap last" style="">
                <div class="module-hd">
                  行业解决方案
                </div>
                <div class="module-bd">
                  <a href="http://media.aliyun.com/" target="_self">
                    多媒体解决方案
                  </a>
                  <a href="http://www.aliyun.com/solution/finance" target="_self">
                    金融解决方案
                  </a>
                  <a href="http://www.aliyun.com/solution/game" target="_self">
                    游戏解决方案
                  </a>
                  <a href="http://healthcare.aliyun.com/" target="_self">
                    医疗解决方案
                  </a>
                  <a href="http://www.aliyun.com/solution/ecommerce/" target="_self">
                    电商解决方案
                  </a>
                  <a href="http://govcloud.aliyun.com/" target="_self">
                    政务解决方案
                  </a>
                  <a href="http://rendering.aliyun.com/" target="_self">
                    渲染解决方案
                  </a>
                  <a href="http://www.aliyun.com/solution/iot/" target="_self">
                    物联网解决方案
                  </a>
                  <a href="http://www.aliyun.com/solution/o2o/" target="_self">
                    O2O解决方案
                  </a>
                </div>
              </div>
            </div>
          </div>
        </li>  
        
        
        <!-- 下面的菜单都隐藏 -->
        <li class="top-menu-item" has-dropdown="false" menu-type="" data-spm-click="gostr=/aliyun;locaid=d20145" style="display:none">
          <a target="_blank" class="menu-hd top-menu-item-link" data-spm-click="gostr=/aliyun;locaid=d20145"
          href="http://market.aliyun.com">
            云市场
          </a>
        </li>
        <li class="top-menu-item" has-dropdown="true" menu-type="dev" data-spm-click="" style="display:none">
          <a class="menu-hd" href="http://yq.aliyun.com/" target="_blank">
            开发者社区
          </a>
          <div class="menu-dropdown solutions dev-bg">
            <div class="menu-dropdown-inner module-padding dev-inner common-header-clearfix">
              <div class="module-wrap " style="">
                <div class="module-hd">
                  资源
                </div>
                <div class="module-bd">
                  <a href="https://help.aliyun.com/" target="true">
                    帮助与文档
                  </a>
                  <a href="http://develop.aliyun.com/api/" target="_self">
                    API
                  </a>
                  <a href="http://develop.aliyun.com/sdk/java/" target="_self">
                    SDK
                  </a>
                  <a href="http://develop.aliyun.com/command/cli" target="_self">
                    开发者工具
                  </a>
                  <a href="http://develop.aliyun.com/whitepaper/" target="_self">
                    解决方案白皮书
                  </a>
                </div>
              </div>
              <div class="module-wrap " style="">
                <div class="module-hd">
                  <a href="http://yq.aliyun.com/articles/?sort=yuan" target="true">
                    博客
                  </a>
                </div>
                <div class="module-bd">
                  <a href="http://yq.aliyun.com/teams/" target="true">
                    团队博客
                  </a>
                  <a href="http://yq.aliyun.com/articles/?sort=yuan" target="true">
                    个人博客
                  </a>
                </div>
              </div>
              <div class="module-wrap " style="">
                <div class="module-hd">
                  <a href="http://bbs.aliyun.com/" target="true">
                    论坛
                  </a>
                </div>
                <div class="module-bd">
                  <a href="http://bbs.aliyun.com/fourms.php?&m=bbs&cateid=33" target="true">
                    产品讨论
                  </a>
                  <a href="http://bbs.aliyun.com/fourms.php?&m=bbs&cateid=293" target="true">
                    架构师中心
                  </a>
                  <a href="http://bbs.aliyun.com/fourms.php?&m=bbs&cateid=227" target="true">
                    云生态
                  </a>
                </div>
              </div>
              <div class="module-wrap " style="">
                <div class="module-hd">
                  <a href="http://yq.aliyun.com/ask" target="true">
                    问答
                  </a>
                </div>
                <div class="module-bd">
                  <a href="http://yq.aliyun.com/ask/?&type=aliyun" target="true">
                    产品求助
                  </a>
                  <a href="http://yq.aliyun.com/ask/?tag=6" target="true">
                    数据库
                  </a>
                </div>
              </div>
              <div class="module-wrap " style="">
                <div class="module-hd">
                  <a href="http://yq.aliyun.com/edu/lesson" target="true">
                    学院
                  </a>
                </div>
                <div class="module-bd">
                  <a href="http://yq.aliyun.com/edu/lesson/?type=category&cid=1" target="true">
                    公开课
                  </a>
                  <a href="http://yq.aliyun.com/edu/lesson/?type=category&cid=5" target="true">
                    技术人生
                  </a>
                </div>
              </div>
              <div class="module-wrap last" style="">
                <div class="module-hd">
                  活动
                </div>
                <div class="module-bd">
                  <a href="http://yunqi.aliyun.com/" target="true">
                    云栖大会
                  </a>
                  <a href="http://www.aliyun.com/yunqitech/6/" target="_self">
                    云栖Techday
                  </a>
                  <a href="https://chuangke.aliyun.com/" target="_self">
                    创客活动
                  </a>
                  <a href="http://tianchi.aliyun.com/" target="true">
                    数据大赛（天池）
                  </a>
                </div>
              </div>
            </div>
          </div>
        </li>
        
        
        <li class="top-menu-item" has-dropdown="true" menu-type="training" data-spm-click="" style="display:none">
          <a class="menu-hd" href="http://www.aliyun.com/support" target="_self">
            服务与培训
          </a>
          <div class="menu-dropdown solutions training-bg">
            <div class="menu-dropdown-inner module-padding training-inner common-header-clearfix">
              <div class="module-wrap " style="width:200px">
                <div class="module-hd">
                  服务与支持
                </div>
                <div class="module-bd">
                  <a href="http://www.aliyun.com/support/jpfw" target="_self">
                    金牌服务
                  </a>
                  <a href="http://www.aliyun.com/support/techsupport" target="_self">
                    售后支持
                  </a>
                  <a href="http://www.aliyun.com/support/service/list" target="_self">
                    尊享服务
                  </a>
                </div>
              </div>
              <div class="module-wrap " style="width:200px">
                <div class="module-hd">
                  <a href="http://www.aliyun.com/support/training" target="_self">
                    培训与认证
                  </a>
                </div>
                <div class="module-bd">
                  <a href="http://www.aliyun.com/support/video" target="_self">
                    视频课程
                  </a>
                  <a href="http://www.aliyun.com/support/courses" target="_self">
                    培训课程
                  </a>
                  <a href="http://www.aliyun.com/support/certification" target="_self">
                    考试认证
                  </a>
                </div>
              </div>
              <div class="module-wrap last" style="width:200px">
                <div class="module-hd">
                  <a href="http://help.aliyun.com/" target="true">
                    帮助与文档
                  </a>
                </div>
                <div class="module-bd">
                  <a href="http://help.aliyun.com/" target="true">
                    文档与常见问题
                  </a>
                  <a href="http://help.aliyun.com/contact/school.htm" target="true">
                    新手学堂
                  </a>
                  <a href="http://help.aliyun.com/contact/service.htm" target="true">
                    自助服务
                  </a>
                </div>
              </div>
            </div>
          </div>
        </li>
        
        <!-- 隐藏 -->
        <li class="top-menu-item" has-dropdown="true" menu-type="aliplus" data-spm-click="" style="display:none">
          <span class="menu-hd">
            合作与生态
          </span>
          <div class="menu-dropdown solutions aliplus-bg">
            <div class="menu-dropdown-inner module-padding aliplus-inner common-header-clearfix">
              <div class="module-wrap " style="width:250px">
                <div class="module-hd">
                  云合作
                </div>
                <div class="module-bd">
                  <a href="http://partner.aliyun.com/list/solution.html" target="_self">
                    解决方案合作
                  </a>
                  <a href="http://partner.aliyun.com/list/cloud.html" target="_self">
                    云服务合作
                  </a>
                  <a href="http://partner.aliyun.com/list/technical.html" target="_self">
                    技术平台合作
                  </a>
                  <a href="http://partner.aliyun.com/list/channel.html" target="_self">
                    渠道服务合作
                  </a>
                  <a href="http://partner.aliyun.com/shumeng" target="_self">
                    数梦工场合作
                  </a>
                  <a href="http://www.aliyun.com/act/aliyun/cps.html" target="_self">
                    CPS推广合作
                  </a>
                </div>
              </div>
              <div class="module-wrap " style="width:250px">
                <div class="module-hd">
                  云扶持
                </div>
                <div class="module-bd">
                  <a href="http://www.aliyun.com/act/aliyun/gamealliance.html" target="true">
                    行业扶持
                  </a>
                  <a href="http://www.aliyun.com/act/aliyun/campus.html" target="true">
                    学生扶持
                  </a>
                  <a href="http://promotion.aliyun.com/tmsact/aliyun/2015/newbes.html" target="true">
                    新手扶持
                  </a>
                  <a href="http://dai.aliloan.com/aliyun.html" target="true">
                    企业小额贷款
                  </a>
                </div>
              </div>
              <div class="module-wrap last" style="width:250px">
                <div class="module-hd">
                  <a href="http://partner.aliyun.com/chuangke/sy.html" target="_self">
                    创客+
                  </a>
                </div>
                <div class="module-bd">
                  <a href="http://partner.aliyun.com/chuangke/rz.html" target="_self">
                    融资申请
                  </a>
                  <a href="http://partner.aliyun.com/chuangke/fh.html" target="_self">
                    孵化器/园区入驻
                  </a>
                  <a href="http://chuangke.aliyun.com/" target="_self">
                    线下活动
                  </a>
                </div>
              </div>
            </div>
          </div>
        </li>
      </ul>
    </div>
  </div>
</div>


</body>
</html>