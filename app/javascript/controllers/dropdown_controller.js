import { Controller } from "stimulus"

export default class extends Controller {
	static targets = ["menu"]

	toggle (event) {
    event.preventDefault()

    if (this.menuTarget.getAttribute('aria-expanded') == "false") {
      this.show();
    } else {
      this.menuTarget.setAttribute('aria-expanded', 'false')
      this.menuTarget.classList.remove('dropdown--open')
    }
  }

  show () {
    this.menuTarget.setAttribute('aria-expanded', true);
    this.menuTarget.classList.add('dropdown--open')
  }

  hide (event) {
    if (this.element.contains(event.target) == false) {
      this.menuTarget.setAttribute('aria-expanded', 'false')
      this.menuTarget.classList.remove('dropdown--open')
    }
  }

}
