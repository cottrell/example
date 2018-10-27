---
title: "JQuery Test"
date: 2018-10-27T17:29:26+01:00
draft: true
---

Mouse over the paragraph and you are supposed to see a popup. Instead you will see $ is not defined.

This will work if you uncomment the jquery include in the markdown.

<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
<script>
$(document).ready(function(){
    $("#p1").mouseenter(function(){
        alert("You entered p1!");
    });
});
</script>

<p id="p1">Enter this paragraph.</p>
