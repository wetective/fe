var map = L.map( 'map', {
  center: [42.0, -93.0],
  minZoom: 2,
  zoom: 2
});

L.tileLayer( 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '© <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a>',
    subdomains: ['a','b','c']
}).addTo( map );

for ( var i=0; i < markers.length; ++i ) {
   L.marker( [markers[i].lat, markers[i].lng], {icon: myIcon}  )
      .bindPopup( '<a href="'markers[i].url'">'markers[i].city'</a>' )
      .addTo( map );
}


var myIcon = L.icon({
  iconUrl: myURL + 'images/red-pin.png',
  iconRetinaUrl: myURL + 'images/red-pin.png',
  iconSize: [29, 24],
  iconAnchor: [9, 21],
  popupAnchor: [0, -14]
});

for ( var i=0; i < markers.length; ++i ) {
  L.marker( [markers[i].lat, markers[i].lng], {icon: myIcon} )
  .bindPopup( '<a href="'markers[i].url'">'markers[i].city'</a>' )
  .addTo( map );
}

var myURL = jQuery( 'script[src$="leaf.js"]' ).attr( 'src' ).replace( 'leaf.js', '' );
// for ( var i=0; i < markers.length; ++i ) {
//    L.marker( [markers[i].lat, markers[i].lng], {icon: myIcon} )
//       .bindPopup( '<a href="' + markers[i].url + '" target="_blank" rel="noopener">' + markers[i].name + '</a>' )
//       .addTo( map );
// }