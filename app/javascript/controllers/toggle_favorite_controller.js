import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-favorite"

export default class extends Controller {
  static targets = [ "icon" ]
  static values = { likedUserId: Number }
  static classes = [ "likeIcon" ]

  connect() {

  }

  // WHen user clicks on the heart icon, "red" class is added to the icon, define css style for red class icon
  // and the user is added to the list of users who liked the post

  toggleLikeButton(likeUserId) {
    const likedUserId = `<%= @user.id %>`
    // console.log(this.likeIconClass)
    const likeButton = this.likeIconClassValue
    console.log(likeButton)
    likeButton.iconTarget.classList.add('red')
  }
}
