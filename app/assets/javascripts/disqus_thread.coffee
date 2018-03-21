disqusBlogIfExist = ->
  thread = $('#disqus_thread')
  if thread.length > 0
    disqusLoad "blog-#{thread.data('articleId')}"

disqusLoad = (articleId) ->
  disqus_shortname = "eq8"
  disqus_identifier = articleId

  dsq = document.createElement("script")
  dsq.type = "text/javascript"
  dsq.async = true
  dsq.src = "//" + disqus_shortname + ".disqus.com/embed.js"
  (document.getElementsByTagName("head")[0] or document.getElementsByTagName("body")[0]).appendChild dsq
  return

window.disqusBlogIfExist = disqusBlogIfExist
