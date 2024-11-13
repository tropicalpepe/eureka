import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    navigate(event) {
        // Get the URL from the selected option's data-url attribute
        const url = event.target.selectedOptions[0].dataset.url;

        // Redirect to the selected URL
        if (url) {
            window.location.href = url;
        }
    }
}