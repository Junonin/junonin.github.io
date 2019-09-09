{% extends '_layout.swig' %}
{% import '_macro/post-collapse.swig' as post_template %}
{% import '_macro/sidebar.swig' as sidebar_template %}

{% block title %}{{ __('title.tag') }}: {{ page.tag }} | {{ config.title }}{% endblock %}

{% block content %}

  {#################}
  {### TAG BLOCK ###}
  {#################}
  <div class="post-block tag">

    <div id="posts" class="posts-collapse">
      <div class="collection-title">
        <{% if theme.seo %}h2{% else %}h1{% endif %}>{#
        #}{{ page.tag }}{#
        #}<small>{{  __('title.tag')  }}</small>
        </{% if theme.seo %}h2{% else %}h1{% endif %}>
      </div>

      {% for post in page.posts %}
        {{ post_template.render(post) }}
      {% endfor %}
    </div>

  </div>
  {#####################}
  {### END TAG BLOCK ###}
  {#####################}
  	{% if site.tags.length > 1 %}
	<script type="text/javascript" charset="utf-8" src="/js/tagcloud.js"></script>
	<script type="text/javascript" charset="utf-8" src="/js/tagcanvas.js"></script>
	<div class="widget-wrap">
		<h3 class="widget-title">Tag Cloud</h3>
		<div id="myCanvasContainer" class="widget tagcloud">
			<canvas width="250" height="250" id="resCanvas" style="width=100%">
				{{ list_tags() }}
			</canvas>
		</div>
	</div>
	{% endif %}

  {% include '_partials/pagination.swig' %}
{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(false) }}
{% endblock %}

