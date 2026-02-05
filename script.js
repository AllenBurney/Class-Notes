let codesData = {};

fetch("data/codes.json")
  .then(res => res.json())
  .then(data => codesData = data);

function loadSection(section) {
  const container = document.getElementById("content");
  container.innerHTML = `<h2>${section}</h2>`;

  const codes = codesData[section]
    .sort((a, b) => new Date(b.date) - new Date(a.date));

  codes.forEach(code => {
    container.innerHTML += `
      <div class="code-card">
        <h3>${code.title}</h3>
        <p>Date: ${code.date}</p>
        <a href="${code.file}" download>⬇ Download</a>
      </div>
    `;
  });
}
