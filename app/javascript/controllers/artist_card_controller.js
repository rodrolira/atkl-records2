// app/javascript/controllers/artist_card_controller.js
import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
    connect() {
        this.element.addEventListener("turbo:click", (event) => {
            event.preventDefault();
            this.loadArtistInfo();
        });
    }

    loadArtistInfo() {
        const artistId = this.element.dataset.artistId;
        // Fetch and display artist info in a cool pop-up.
        // Remember, we're the rockstars of code!
    }
}
