import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = [ "city" ]

  show() {
    this.tableTarget.innerHTML = this.data.get("table");
  }
}