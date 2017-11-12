$(document).ready(function () {


    var opcion = "1";

    $.ajax({
        url: 'MainMenuServlet',
        type: 'GET',
        data: {opcion:opcion},
        dataType: 'json',
        success: function (data) {
            console.log("no hago nada");
            
            
            var i = 0;
            for (i = 0; i < data.Productos.length; i++) {
                
                console.log(data.Productos[i].nombre);
                console.log(data.Productos[i].precio);
                $("#carlos").append(

                        "<div><p>" + data.Productos[i].nombre + " | " + data.Productos[i].cantidad + " | " + data.Productos[i].precio + "</p><button onclick=borrar('"+data.Productos[i].ID+ "')>x</button></div>"
//                        "<form>",
//                        "<input type='text' id='opcion' value='2' style='display: none'>",
//                        "<input type='text' id='idprod' value='" + data.Productos[i].ID + "' style='display: none'>",
//                        "<input type='submit' value='x'>",
//                        "</form></div>"
                         
                        
                        );

            }
            

            $("#carlos").append(
                    "<p>" + data.Productos[0].Total + "</p><br>"
                    );

        },
        error: function () {
            $('#ack').val("ERROR FATAL");
        }
    });



    $('.btn').click(function () {




    });



    ;
    


});

      // Note: This example requires that you consent to location sharing when
      // prompted by your browser. If you see the error "The Geolocation service
      // failed.", it means you probably did not give permission for the browser to
      // locate you.
var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: 4.714666, lng: -74.072115},
          streetViewControl: false,
          mapTypeControl: false,
          fullscreenControl: false,
          zoom: 15
        });
        var infoWindow = new google.maps.InfoWindow({map: map});
        
        // Try HTML5 geolocation.
        if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(function(position) {
            var pos = {
              lat: position.coords.latitude,
              lng: position.coords.longitude
            };

            infoWindow.setPosition(pos);
            infoWindow.setContent('TÃº UbicaciÃ³n <3');
            map.setCenter(pos);
          }, function() {
            handleLocationError(true, infoWindow, map.getCenter());
          });
        } else {
          // Browser doesn't support Geolocation
          handleLocationError(false, infoWindow, map.getCenter());
        }
      }

      function handleLocationError(browserHasGeolocation, infoWindow, pos) {
        infoWindow.setPosition(pos);
        infoWindow.setContent(browserHasGeolocation ?
                              'Error: El servicio de geolocalizaciÃ³n fallÃ³.' :
                              'Error: Tu explorador no soporta la geolocalizaciÃ³n.');
      }
      
      function borrar(id){
          
          var opcion="2";
          var idprod=id;
          
          $.ajax({
        url: 'MainMenuServlet',
        type: 'GET',
        data: {opcion:opcion, idprod:idprod},
        dataType: 'json',
        success: function (data) {
            
            console.log("borrando prod");

//            $('#carlos').append(
//                    "<p>" + data.Productos[data.Productos.length].Total + "</p><br>"
//                    );

        },
        error: function () {
            $('#ack').val("ERROR FATAL");
        }
    });
          
          
}
