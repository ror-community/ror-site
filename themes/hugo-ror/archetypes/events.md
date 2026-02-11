+++
title = "{{ .File.ContentBaseName | replaceRE `^\d{4}-\d{2}-\d{2}[-_]?` "" | replaceRE `[-_]` " " | title }}" 
date = "{{ .Date }}"  
draft = "false" 
style = "card-plain" 
banner = "/img/banners/ROR_Banner-grey.jpg" 
thumb = "/img/events/ror-logo-800.png" 
images = ['/img/events/ror-logo-800.png']
author = "Research Organization Registry (ROR)" 
eventtypes = [""]
eventarchives = ["{{ .File.ContentBaseName | replaceRE `^(\d{4}).*` "$1" }}"]
startdate = {{ .File.ContentBaseName | replaceRE `^(\d{4}-\d{2}-\d{2}).*` "$1" }}
enddate = []
starttime = ""
duration = ""
location = ""
recorded = ""
description = ""
website = ""
reglink = ""
+++


<!-- Post-event content template

## Materials 

- [Slides from event]()

{{< iframe "XXX" >}}

---

## Recording 

{{< youtube id="XXX" >}}

--- 

--> 

