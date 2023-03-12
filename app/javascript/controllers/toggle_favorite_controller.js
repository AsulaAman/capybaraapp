import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-favorite"

export default class extends Controller {
  static targets = [ "icon" ]
  static values = { likedUserId: Number }
  static classes = [ "likeIcon" ]

  connect() {
  }

  toggleLikeButton(likeUserId) {
    const likedUserId = `<%= @user.id %>`
    this.iconTarget.classList.toggle('red')
  }
}
