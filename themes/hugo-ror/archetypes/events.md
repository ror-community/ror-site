+++
title = "{{ replace .TranslationBaseName "-" " " | title }}" 
date = "{{ .Date }}"  
draft = "false" 
style = "card-plain" 
banner = "/img/banners/ROR_Banner-grey.jpg" 
thumb = "/img/events/ror-logo-800.png" 
images = ['/img/events/ror-logo-800.png']
author = "Research Organization Registry (ROR)" 
eventtypes = [""]
eventarchives = ["{{now.Year}}"]
eventtags = ["", "",]
startdate = {{ .Date | time.Format "2006-01-02" }}
enddate = []
starttime = " UTC"
duration = ""
location = ""
recorded = ""
description = ""
reglink = ""
+++


<!-- Post-event content template

## Materials 

- [Slides from event]()

<iframe src=""></iframe>

---

## Recording 

{{< youtube id="" >}}

--- 

--> 

