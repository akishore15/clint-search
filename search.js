function search() {
    const query = document.getElementById('searchInput').value;
    fetch(`/search?query=${query}`)
        .then(response => response.json())
        .then(data => displayResults(data));
}

function displayResults(results) {
    const resultsContainer = document.getElementById('results');
    resultsContainer.innerHTML = '';

    if (results.length === 0) {
        resultsContainer.innerHTML = '<p>No results found.</p>';
        return;
    }

    results.forEach(result => {
        const resultItem = document.createElement('div');
        resultItem.className = 'result-item';
        resultItem.innerHTML = `<h3>${result.title}</h3><p>${result.content}</p>`;
        resultsContainer.appendChild(resultItem);
    });
}
