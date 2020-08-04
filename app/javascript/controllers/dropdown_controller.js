import { Controller } from "stimulus"

export default class extends Controller {
	static targets = ["menu"]
	
	connect () {

	}

	disconnect () {
		this.open = false
	}

	toggle (e) {
    e.preventDefault()
    this.open = !this.menuTarget.classList.contains('dropdown--open')
  }

  hide (e) {
    if (this.element.contains(e.target) == false) {
      this.open = false
    }
  }

  set open (value) {
    if (value) {
      this.menuTarget.classList.add('dropdown--open')
    } else {
      this.menuTarget.classList.remove('dropdown--open')
    }
  }

}
