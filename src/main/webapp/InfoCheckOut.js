$(document).ready(function () {


        var opcion1 = "0";
        
  
        $.ajax({
            url: 'InfoCheckOutServlet',
            type: 'GET',
            data: {opcion1: opcion1},
            dataType: 'json',
            success: function(data) {
                
     
            },
            error: function(){
                $('#ack').val("ERROR FATAL");
            }
        });
        });
    


function mifuncion() {

    var opcion1 = "3";
    var comment = $('#comment').val();
    var boolean = true;


    $.ajax({
        url: 'InfoCheckOutServlet',
        type: 'GET',
        data: {opcion1: opcion1, comment: comment, boolean:boolean},
        dataType: 'json',
        success: function () {
            console.log("Info enviada");
            
            //location = 'listarTiendas.jsp';
            
        },
        error: function () {
            $('#ack').val("ERROR FATAL");
        }
    });
    
    
    
    
    
}


            
            function notificacionpro(){
                  
                var OneSignal = OneSignal || [];
                    
            OneSignal.push(["init", {
            appId: "cb275648-3672-46a3-8f3e-af6f060af8d7"
            // Your other init settings
            }]);
        
        OneSignal.sendSelfNotification(
  /* Title (defaults if unset) */
  "¡Tienes pedidos pendientes!",
  /* Message (defaults if unset) */
  "Action buttons increase the ways your users can interact with your notification.", 
   /* URL (defaults if unset) */
  'https://example.com/?_osp=do_not_open',
  /* Icon */
  'checkout.png',
  {
    /* Additional data hash */
    notificationType: 'news-feature'
  }, 
  [{ /* Buttons */
    /* Choose any unique identifier for your button. The ID of the clicked button is passed to you so you can identify which button is clicked */
    id: 'noti-button',
    /* The text the button should display. Supports emojis. */
    text: 'Ver',
    /* A valid publicly reachable URL to an icon. Keep this small because it's downloaded on each notification display. */
    icon: 'AppuMartLogo.png',
    /* The URL to open when this action button is clicked. See the sections below for special URLs that prevent opening any window. */
    url: 'https://mail.google.com/mail/u/1/#inbox'
  },
  {
    id: 'read-more-button',
    text: 'Read more',
    icon: 'http://i.imgur.com/MIxJp1L.png',
    url: 'https://example.com/?_osp=do_not_open'
  }]
);
        
            }
       
