import { Application } from "@hotwired/stimulus"
import ArtistCardController from "./artist_card_controller";

const application = Application.start()
application.register("artist-card", ArtistCardController);

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
