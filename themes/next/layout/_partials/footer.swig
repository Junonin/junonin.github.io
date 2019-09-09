 <script async src="//busuanzi.ibruce.info/busuanzi/2.3/busuanzi.pure.mini.js"></script>

<div class="copyright">{#
#}{% set current = date(Date.now(), "YYYY") %}{#
#}&copy; {% if theme.footer.since and theme.footer.since != current %}{{ theme.footer.since }} &mdash; {% endif %}{#
#}<span itemprop="copyrightYear">{{ current }}</span>
  <span class="with-love" id="heart">
    <i class="fa fa-heart" style="color:#fa6431" ></i>
  </span>
  <span class="author" itemprop="copyrightHolder">{{ theme.footer.copyright || config.author }}</span>

 
</div>

<div class="copyright">
  <div class="powered-by"></div>
   {% if theme.post_wordcount.totalcount %}
    <!--<span class="post-meta-divider">|</span>-->
	
    <span class="post-meta-item-icon">
      <i class="fa fa-area-chart"></i>
    </span>
	
    {% if theme.post_wordcount.item_text %}
      <span class="post-meta-item-text">{{ __('post.totalcount') }}&nbsp&#58;</span>
    {% endif %}
	
    <span title="{{ __('post.totalcount') }}">{#
    #}{{ totalcount(site, '0,0.a') }}{#
  #}</span>
  {% endif %}

{% if theme.footer.powered and theme.footer.theme.enable %}
  <span class="post-meta-divider">|</span>
{% endif %}



{% if theme.footer.powered %}
{% endif %}
  <div class="powered-by">
  <i class="fa fa-user"></i><span id="busuanzi_container_site_uv">
  访问人数:<span id="busuanzi_value_site_uv"></span>
  </span>
  </div>


{% if theme.footer.powered and theme.footer.theme.enable %}
  <span class="post-meta-divider">|</span>
{% endif %}

{% if theme.footer.theme.enable %}
  <div class="powered-by">
  <i class="fa fa-eye"></i><span id="busuanzi_container_site_pv">
  总访问量:<span id="busuanzi_value_site_pv"></span>
  </span>
  </div>
{% endif %}

{% if theme.footer.custom_text %}
  <div class="footer-custom">{#
  #}{{ theme.footer.custom_text }}{#
#}</div>
{% endif %}



</div>
