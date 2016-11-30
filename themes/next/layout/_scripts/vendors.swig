{# Reset `window.Promise` when it was not a function. #}
{# IE refers the element whose id is `Promise` as `window.Promise`, this causes Velocity throwing an exception #}
<script type="text/javascript">
  if (Object.prototype.toString.call(window.Promise) !== '[object Function]') {
    window.Promise = null;
  }
</script>
<script src="//cdn.bootcss.com/canvas-nest.js/1.0.0/canvas-nest.min.js"></script>
<script type="text/javascript">
window.onbeforeunload = function() {
		RootCookies.SetCookie("myhk_player_show", "no", -1)
};
window.onunload = function() {
	RootCookies.SetCookie("myhk_player_show", "no", -1)
};
</script>
<script src="https://music.badapple.top/WebConfig.php?Key=346y8Iaabt&v=20161014"></script>
<script src="https://lib.baomitu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="https://lib.baomitu.com/jquery-mousewheel/3.1.9/jquery.mousewheel.min.js"></script>
<script src="https://music.badapple.top/assets/player/js/scrollbar.js?v=20161014"></script>
<script src="https://music.badapple.top/assets/player/js/player.js?v=20161014"></script>

{% set js_vendors = {} %}
{% set js_vendors.jquery      = 'jquery/index.js?v=2.1.3' %}
{% set js_vendors.fastclick   = 'fastclick/lib/fastclick.min.js?v=1.0.6' %}
{% set js_vendors.lazyload    = 'jquery_lazyload/jquery.lazyload.js?v=1.9.7' %}
{% set js_vendors.velocity    = 'velocity/velocity.min.js?v=1.2.1' %}
{% set js_vendors.velocity_ui = 'velocity/velocity.ui.min.js?v=1.2.1' %}

{% if theme.fancybox %}
  {% set js_vendors.fancybox  = 'fancybox/source/jquery.fancybox.pack.js?v=2.1.5' %}
{% endif %}

{% for name, internal in js_vendors %}
  {% set internal_script = url_for(theme.vendors._internal) + '/' + internal %}
  <script type="text/javascript" src="{{ theme.vendors[name] | default(internal_script) }}"></script>
{% endfor %}
