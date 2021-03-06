<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="/static/img/favicon.ico?v=${(obj.version)!''}">
    <title>文章 ${obj.typevalue} - ${(obj.site_name)!''}</title>

    <link href="/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="/static/css/index.css?v=${(obj.version)!''}" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="/static/js/html5shiv.min.js"></script>
    <script src="/static/js/respond.min.js"></script>
    <![endif]-->


</head>
<body>

<#include "/index_head.ftl">
<div class="container-fluid">

    <div class="row">
        <div class="col-md-8 col-md-offset-2 col-xs-12 ">
            <div class="archive_title">
                <h3>分类</h3>
            </div>
        </div>
    </div>
<#--中间区域部分-->
    <div class="row">
        <div class="col-md-8  col-md-offset-2  col-xs-12  ">
            <div id="feed-container">

                <div id="feed">
                    <div class="filter-bar">

                        <div id="fadeable">
                            <ul class="filters">
                                <li class="seris_li1">
                                    <a class="active" href="/filter/page/book/1.html">图书 (${obj.pagescount3})</a>
                                </li>
                                <li class="seris_li2">
                                    <a href="/filter/page/seris/1.html">教程 (${obj.pagescount2})</a>
                                </li>
                                <li class="seris_li3">
                                    <a href="/filter/page/single/1.html">经验 (${obj.pagescount1})</a>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div id="filter-objects">
                        <ul id="ul_datalist">

                        <#list  obj.datas  as value>
                            <li class="li_index">

                                <h3>
                                    <a class="page_title" target="_blank"
                                       href="/book/${(value._id)!''}/${(value._booktitleen)!''}.html"> ${(value._booktitle)!''}</a>
                                    <a class="series" href="javascript:void(0)">
                                        BOOK
                                    </a>
                                </h3>

                                <span class="difficulty-level Beginner">初级</span>

                                <div class="meta">
                                    <div class="points">3
                                        <span class="icon-upvote-heart-full"></span>
                                    </div>
                                <span class="author">
                                          by <a href="#">${(obj.admin)!''}</a>
                                  </span>
                                <#--<#if value.tagstr?length gt 0>-->
                                <#--<span class="meta-value">标签-->
                                <#--${value.tagstr}-->
                                <#--</span>-->
                                <#--</#if>-->

                                    <span class="time">
                                    ${value.ut?string('yyyy-M-d')}
                                    </span>
                                </div>

                            </li>
                        </#list>
                        </ul>
                    </div>

                    <div id="pagination">
                        <div class="pagination hidden-xs" id="div_pager">
                        ${(obj.pages)!''}
                        </div>
                        <div class="pagination visible-xs-inline-block" id="div_pager_min">
                        ${(obj.pages_min)!''}
                        </div>


                    </div>


                </div>
            </div>

        </div>
    </div>
</div>

<footer id="footer">
<#include  "/index_foot.ftl">
</footer>


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="/static/js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/static/js/bootstrap.min.js"></script>

<script>
    $(function () {
        var currhrf = window.location.href;
        console.log(currhrf);

        //nav的active
        $("nav ul li a.active").removeClass("active");
        if (currhrf.indexOf("filter/month") > 0) {
            $("nav ul li:nth-child(2) a").addClass("active");
        }
        if (currhrf.indexOf("filter/tag") > 0) {
            $("nav ul li:nth-child(3) a").addClass("active");
        }

    });
</script>
</body>
</html>
