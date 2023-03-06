import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    console.log(this.apiKey);
    mapboxgl.accessToken = this.apiKeyValue

    this.filterUsersMap = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v12",
      center: [-0.12959471764533445, 51.50898536359077], // starting position [lng, lat]
      zoom: 11
    })
    this.#addMarkersToMap()
    this.#fitMapToMarkers()
  }

  #addMarkersToMap() {
    // this.markersValue is undefined, so we can't check the length of the array,
    if (this.hasMarkersValue) {
      // basically we don't want to try to run the forEach if there are no markers
      // if no markers then we should return an empty array, just something to stop errors, and just load map with no markers on it
      this.markersValue.forEach((marker) => {
        const popup = new mapboxgl.Popup().setHTML(marker.profile_window_html)
        new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(this.filterUsersMap)
      })
    } else {
      return []
    }
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.filterUsersMap.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }
}
