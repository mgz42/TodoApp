import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="checkbox"
export default class extends Controller {
  static targets = ["box"]

  toggle(){
    console.log(this.boxTarget)
  }
}
