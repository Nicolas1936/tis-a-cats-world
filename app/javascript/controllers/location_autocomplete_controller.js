import { Controller } from "@hotwired/stimulus"
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

// Connects to data-controller="location-autocomplete"
export default class extends Controller {
  static values = { apiKey: String }
  static targets = ["location"]

  connect() {
    console.log("Welcome to the location_controller_stimulus")
    console.log(this.apiKeyValue)
    console.log(this.locationTarget.value)

    const locationValue = this.locationTarget.value

    this.geocoder = new MapboxGeocoder({
      accessToken: this.apiKeyValue,
      types: "country,region,place,postcode,locality,neighborhood,address",
      placeholder: locationValue
    })
    this.geocoder.addTo(this.element)

    this.geocoder.on("result", event => this.#setInputValue(event))
    this.geocoder.on("clear", () => this.#clearInputValue())
  }

  #setInputValue(event) {
    this.locationTarget.value = event.result["place_name"]
  }

  #clearInputValue() {
    this.locationTarget.value = ""
  }

  disconnect() {
    this.geocoder.onRemove()
  }
}
