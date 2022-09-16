import { Controller } from "@hotwired/stimulus";
import "leaflet-css";

export default class extends Controller {
    static targets = [ "map" ]

    connect(){
        import("leaflet").then( L => {
            this.map = L.map( this.mapTarget ).setView( [ 51.472814, 7.321673 ], 14 );
            var base_map = L.tileLayer( 'http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a>',
                subdomains: ['a','b','c']
            }).addTo( this.map );
            var map_pin = L.icon({
                iconUrl: './assets/images/red-pin.png',
                iconRetinaUrl: './assets/images/red-pin.png',
                iconSize: [29, 24],
                iconAnchor: [9, 21],
                popupAnchor: [0, -14]
            }).addTo( this.map );
            var pin = L.markers( Location.all.map do |loc| {
                :latlng => [ loc.lat, loc.long ],
                :icon => map_pin,
                :link => location_path(loc)
            }.addTo( this.map ) end );
        });
    }

    disconnect(){
        this.map.remove()
    }
}