{% if page.comments && config.disqus_shortname %}
<section id="comments">
  <div id="disqus_thread"></div>
</section>
<script>
  var disqus_shortname = '{{ config.disqus_shortname }}';
  var disqus_url = '{{ url }}';
  var disqus_title = {{ JSON.stringify(page.title) }};
  var disqus_config = function(){
    this.language = '{{ disqus_lang() }}';
  };
  (function(){
    var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
    dsq.src = '//go.disqus.com/embed.js';
    (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
  })();
</script>
{% endif %}

{% if page.comments && theme.gitment && theme.gitment.client_id %}
<div class="post-comments" id="comments"></div>
<script>
  var gitmentOpts = {
    id: '{{ post_key(page.path, page.ckey) }}',
    owner: '{{ theme.gitment.owner }}',
    repo: '{{ theme.gitment.repo }}',
    link: '{{ url }}',
    title: '{{ page.title }}',
    desc: '{{ page.subtitle }}',
    oauth: {
      client_id: '{{ theme.gitment.client_id }}',
      client_secret: '{{ theme.gitment.client_secret }}'
    }
  };
</script>
{% endif %}
