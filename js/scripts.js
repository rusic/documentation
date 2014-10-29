// Data attribute switch
var toggleState = function (elem, one, two) {
	var elem 	= document.querySelector(elem);
		elem.setAttribute('data-state', elem.getAttribute('data-state') === one ? two : one);
};

	// Mobile navigation toggle selector
	var toggle 	= document.querySelector('.toggle-button');

	// Aside navigation toggle
	toggle.onclick = function (e) {
	  toggleState('.nav--docs', 'closed', 'open');
	  e.preventDefault();
	};


// Table of contents generator
	// Choose elements from page
	var headlines 	 = document.querySelectorAll('.main--content h2, .main--content h3'); // Selected titles to use
	var contents 	 = document.querySelector('#contents'); // Selected element to append contents to

	// Create list
	var contentsList = document.createElement('ol'); // List element (ol or ul)
	contentsList.classList.add('nav-list'); // Class name for list

	// Loop through items
	for (var i = 0; i < headlines.length; i++) {

		// Create list item
		var contentsItem = document.createElement('li'); // List item element
		contentsItem.classList.add('nav-item'); // Class name for list item

		// Append list item to contents list
		contentsList.appendChild(contentsItem);

		// Create link (if not span) to headline
		var link 	 = document.createElement(headlines[i].id ? 'a' : 'span');
		link.textContent = headlines[i].textContent;

		// Add href and value to link
		if (headlines[i].id) {
			link.href = '#' + headlines[i].id;
		}

		// Append link to list item
		contentsItem.appendChild(link);
	}

	// Append list to element on page
	contents.appendChild(contentsList);

// Position Sticky elements
PositionSticky([document.getElementById('sticky')]);
