+++ 
title = "{{ .File.ContentBaseName | replaceRE `^\d{4}-\d{2}-\d{2}[-_]?` "" | replaceRE `[-_]` " " | title }}" 
date = "{{ .Date }}"
draft = false 
tags = ["", ""] 
categories = [""] 
archives = ["{{now.Year}}"]
style = "card-plain" 
banner = "/img/banners/ROR_Banner-green.png" 
thumb = "/img/blog/" 
images = ['/img/blog/']
authors = [""] 
description = ""
doi = ""
crosspost = ""
+++ 

<!-- Commonly used content 

{{< figure src="/img/blog/" class="featured-figure" alt="" >}}

{{< callout color="green" icon="fa-info" >}} 
{{< /callout >}}

{{< figure src="/img/blog/" class="blog-figure" alt="" >}}

{{< youtube id="XXX" title="" >}}

{{< callout icon="fa-envelope" >}} 
Write us at support@ror.org with any comments or questions.
{{< /callout >}} 
-->
