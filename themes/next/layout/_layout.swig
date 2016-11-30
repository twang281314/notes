<!doctype html>

{% set html_class = 'theme-next ' + theme.scheme %}
{% if theme.use_motion %}
  {% set html_class = html_class + ' use-motion' %}
{% endif %}

<html class="{{ html_class | lower }}">
<head>
  {% include '_partials/head.swig' %}
  <title>{% block title %}{% endblock %}</title>
</head>

<body itemscope itemtype="http://schema.org/WebPage" lang="{{ config.language }}">

  {% include '_scripts/third-party/analytics.swig' %}

  {% set container_class = "container one-collumn " %}
  {% if theme.sidebar.position %}
    {% set container_class = container_class + 'sidebar-position-' + theme.sidebar.position %}
  {% endif %}

  <div class="{{ container_class }} {% block page_class %}{% endblock %} ">
    <div class="headband"></div>

    <header id="header" class="header" itemscope itemtype="http://schema.org/WPHeader">
      <div class="header-inner"> {%- include '_partials/header.swig' %} </div>
    </header>

    <main id="main" class="main">
      <div class="main-inner">
        <div class="content-wrap">
          <div id="content" class="content">
            {% block content %}{% endblock %}
          </div>
          {% include '_partials/duoshuo-hot-articles.swig' %}
          {% include '_partials/comments.swig' %}
        </div>
        {% if theme.sidebar.display !== 'remove' %}
          {% block sidebar %}{% endblock %}
        {% endif %}
      </div>
    </main>

    <footer id="footer" class="footer">
      <div class="footer-inner">
        {% include '_partials/footer.swig' %}
        {% include '_scripts/third-party/analytics/busuanzi-counter.swig' %}
        {% block footer %}{% endblock %}
      </div>
    </footer>

    <div class="back-to-top">
      <i class="fa fa-arrow-up"></i>
    </div>
  </div>

   <div id="wenkmPlayer">
	<div class="player">
		<div class="blur-img">
			<img src="http://p1.bqimg.com/500462/a5c4f00f530039act.jpg" class="blur" style="top: 0px; display: inline;">
		</div>
		<div class="infos">
			<div class="songstyle">
				<i class="fa fa-music"></i>
				<span class="song"></span>
			</div>
			<div class="timestyle">
				<i class="fa fa-clock-o"></i>
				<span class="time">00:00 / 00:00</span></div>
			<div class="artiststyle">
				<i class="fa fa-user"></i>
				<span class="artist"></span>
				<span class="moshi">
					<i class="loop fa fa-random current"></i>随机播放</span>
			</div>
			<div class="artiststyle">
				<i class="fa fa-folder"></i>
				<span class="artist1"></span>
				<span class="geci"></span>
			</div>
		</div>
		<div class="control">
			<i class="loop fa fa-retweet " title="顺序播放"></i>
			<i class="prev fa fa-backward" title="上一首"></i>
			<div class="status">
				<b>
					<i class="play fa fa-play" title="播放"></i>
					<i class="pause fa fa-pause" title="暂停"></i>
				</b>
			</div>
			<i class="next fa fa-forward" title="下一首"></i>
			<i class="random fa fa-random" title="随机播放"></i>
		</div>
		<div class="musicbottom">
			<div class="volume">
				<i class="mute fa fa-volume-off"></i>
				<i class="volumeup fa fa-volume-up"></i>
				<div class="progress">
					<div class="volume-on ts5">
						<div class="drag" title="音量"></div>
					</div>
				</div>
			</div>
			<div class="switch-playlist">
				<i class="fa fa-bars" title="播放列表"></i>
			</div>
			<div class="switch-ksclrc">
				<i class="fa fa-toggle-on" title="关闭歌词"></i>
			</div>
			<div class="switch-default">
				<i class="fa fa-refresh" title="切换默认专辑"></i>
			</div>
			<div class="switch-down">
				<a class="down">
					<i class="fa fa-cloud-download" title="歌曲下载"></i>
				</a>
			</div>
		</div>
		<div class="cover"></div>
	</div>
	<div class="playlist">
		<div class="playlist-bd">
			<div class="album-list">
				<div class="musicheader"></div>
				<div class="list"></div>
			</div>
			<div class="song-list">
				<div class="musicheader">
					<i class="fa fa-angle-right"></i>
					<span></span>
				</div>
				<div class="list">
					<ul></ul>
				</div>
			</div>
		</div>
	</div>
	<div class="switch-player">
		<i class="fa fa-angle-right" style="margin-top: 20px;"></i>
	</div>
</div>
<div id="wenkmTips"></div>
<div id="wenkmLrc"></div>
<div id="wenkmKsc"></div>
<div class="myhk_pjax_loading_frame"></div>
<div class="myhk_pjax_loading"></div>

  {% include '_scripts/vendors.swig' %}
  {% include '_scripts/commons.swig' %}

  {% set scheme_script = '_scripts/schemes/' + theme.scheme | lower + '.swig' %}
  {% include scheme_script %}

  {% block script_extra %}{% endblock %}

  {% include '_scripts/boostrap.swig' %}

  {% include '_scripts/third-party/comments.swig' %}
  {% include '_scripts/third-party/tinysou.swig' %}
  {% include '_scripts/third-party/localsearch.swig' %}
  {% include '_scripts/third-party/mathjax.swig' %}
  {% include '_scripts/third-party/lean-analytics.swig' %}
  {% include '_scripts/baidu-push.swig' %}

 

</body>
</html>
