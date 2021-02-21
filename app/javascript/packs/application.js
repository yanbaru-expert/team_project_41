import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "bootstrap/dist/js/bootstrap"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

document.addEventListener('turbolinks:load', () => {
    const search = document.getElementById('text-search')
    const tableRows = document.querySelectorAll('#card-body')

    const filterTableRows = (e) => {
        const value = e.target.value.toLowerCase()
        for(const tr of tableRows) {
            const isVisible = tr.textContent.toLowerCase().includes(value)
            tr.style.display = isVisible? "" : "none"
        }
    }

    search.addEventListener('input', filterTableRows)
})
