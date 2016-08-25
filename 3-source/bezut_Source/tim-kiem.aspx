<%@ Page Title="" Language="C#" MasterPageFile="~/site-news.master" AutoEventWireup="true"
    CodeFile="tim-kiem.aspx.cs" Inherits="tin_tuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphAsideTop" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphAsideBottom" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="head lineh">
        <h2 class="title-2">
            <asp:Label ID="lbName" runat="server" Text="Tìm kiếm"></asp:Label></h2>
    </div>
    <asp:HiddenField ID="hdnKeyword" runat="server" />
 <script>
     (function () {
         var me = getUrlVars()["kw"];
         var strd = urldecode(me);
         window.__gcse = {
             callback: searchCallback
         };
         function searchCallback() {
             $('#gsc-i-id1').focus();
             $('#gsc-i-id1').val(strd);
             $(".gsc-search-button").trigger('click');
         }

//         var cx = '015227722522156359116:wruqmjj8ckg';
//         var gcse = document.createElement('script');
//         gcse.type = 'text/javascript';
//         gcse.async = true;
//         gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') +
//             '//cse.google.com/cse.js?cx=' + cx;
//         var s = document.getElementsByTagName('script')[0];
//         s.parentNode.insertBefore(gcse, s);
         
         var cx = '011728731253211755245:aszktfgcjw0';
         var gcse = document.createElement('script');
         gcse.type = 'text/javascript';
         gcse.async = true;
         gcse.src = 'https://cse.google.com/cse.js?cx=' + cx;
         var s = document.getElementsByTagName('script')[0];
         s.parentNode.insertBefore(gcse, s);

     })();

     function getUrlVars() {
         var vars = [], hash;
         var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
         for (var i = 0; i < hashes.length; i++) {
             hash = hashes[i].split('=');
             vars.push(hash[0]);
             vars[hash[0]] = hash[1];
         }
         return vars;
     }
     function urldecode(str) {
         return decodeURIComponent((str + '').replace(/\+/g, '%20'));
     }
</script>
<gcse:search></gcse:search>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
