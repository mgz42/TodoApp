import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["newtask"]
  fire(){
    this.newtaskTarget.classList.toggle("d-none")
  }
}
