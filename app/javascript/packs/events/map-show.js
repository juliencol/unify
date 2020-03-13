const mapContainer = document.getElementById('map-container');

const eventLocation = mapContainer.getAttribute('event-location');
const markerUrl = mapContainer.getAttribute('marker-img');
const eventName = mapContainer.getAttribute('event-name');

const apiKey = mapContainer.getAttribute('data-mapbox-api-key');
const markers = JSON.parse(mapContainer.getAttribute('data-markers'));

mapboxgl.accessToken = apiKey;


const map = new mapboxgl.Map({
    container: 'map', // container id
    style: 'mapbox://styles/mapbox/streets-v10', // stylesheet location
    center: [2.349014, 48.864716], // starting position [lng, lat] here centered on paris
    zoom: 11 // starting zoom
});

const geojson = {
    type: 'FeatureCollection',
    features: [{
        type: 'Feature',
        geometry: {
            type: 'Point',
            coordinates: [markers.lng, markers.lat]
        },
        properties: {
            title: eventName,
            description: eventLocation
        }
    }]
};

// add markers to map
geojson.features.forEach(function(marker) {

    // create a HTML element for each feature
    const el = document.createElement('div');
    el.className = 'marker';

    // make a marker for each feature and add to the map
    new mapboxgl.Marker(el)
        .setLngLat(marker.geometry.coordinates)
        .addTo(map);

    // add a popup with the address to the marker
    new mapboxgl.Marker(el)
        .setLngLat(marker.geometry.coordinates)
        .setPopup(new mapboxgl.Popup({ offset: 25 }) // add popups
            .setHTML(`<h3>${marker.properties.title}</h3>
                <p>${marker.properties.description}</p>`))
        .addTo(map);
});