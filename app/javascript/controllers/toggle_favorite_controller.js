import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-favorite"
export default class extends Controller {
  static targets = [ "icon" ]
  connect() {
    console.log ("Hello, Stimulus!", this.element)
  }

  toggle() {
    // Toggle the like button
    this.iconTarget.classList.toggle("fa-heart")
  }
}
