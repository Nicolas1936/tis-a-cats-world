import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="signup"
export default class extends Controller {
  static targets = ["field", "checkbox"]
  connect() {
    console.log("sign-up controller connected yo!!")
  }

  displayInputs(){
    console.log("sign-up controller connected yo!!")
    if (this.checkboxTarget.checked) {
      console.log("sign-up controller connected yo!!")
      this.fieldTargets.forEach((field) => {
        field.classList.remove("d-none")
      });

    } else {
      this.fieldTargets.forEach((field) => {
        field.classList.add("d-none")
     });
    }
  }
}
