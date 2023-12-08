<!-- Coloque esta tag onde você desejar que o plugin do Live Helper Chat apareça. -->
<div id="lhc_status_container_page" ></div>

<!-- Coloque esta tag depois da tag do plugin do Live Helper Chat. -->
<script type="text/javascript">
    var LHCChatOptionsPage = {'height':300,'mobile':false};
    LHCChatOptionsPage.opt = {};
    (function() {
        var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
        var referrer = (document.referrer) ? encodeURIComponent(document.referrer.substr(document.referrer.indexOf('://')+1)) : '';
        var location  = (document.location) ? encodeURIComponent(window.location.href.substring(window.location.protocol.length)) : '';
        po.src = '//localhost/society/chat/lhc_web/index.php/por/chat/getstatusembed?r='+referrer+'&l='+location;
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
    })();
    //http://localhost/society/chat/lhc_web/index.php/site_admin/
</script>
