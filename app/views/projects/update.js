function refreshForm(outerHTML) {
	const editForm = document.getElementById('update-modal');
	editForm.innerHTML = outerHTML;
}

function closeModal() {
	const closeButton = document.getElementById('close-button').click();
}

function refreshDetails(outerHTML) {
	const details = document.getElementById('details');
	details.outerHTML = outerHTML;
}

refreshForm('<%= j render "edit", session: @session %>');

<% unless @project.errors.any? %>
	closeModal();
	refreshDetails('<%= j render "details", session: @session %>')
<% end %>
