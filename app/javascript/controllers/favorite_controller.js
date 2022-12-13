import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="favorite"
export default class extends Controller {
  static targets = ["solid", "regular"]

  connect() {
    // console.log("Welcome the the FAVORITE Controller")
    // console.log("solid : ", this.solidTarget)
    // console.log("regular : ", this.regularTarget)
    console.log("aa")
  }

  changeStatutFavorite(event) {
    console.log("bb")
    event.preventDefault()


    const url = event.currentTarget.href
    const header = {
      method: "GET",
      headers: { "Content-Type": "application/json" }
    }

    fetch(url, header)
      .then(response => response.json())
      .then((data) => {
        // console.log("favorited? : ", data["favorited?"])
        this.regularTarget.classList.toggle("d-none")
        this.solidTarget.classList.toggle("d-none")
      })
  }
}
