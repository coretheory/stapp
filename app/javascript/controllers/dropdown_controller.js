// src/controllers/dropdown_controller.js
import { Controller } from "stimulus"

export default class extends Controller {
	static targets = ["menu"]
	
	toggle() {
    console.log("hello from StimulusJS")
  }
}
