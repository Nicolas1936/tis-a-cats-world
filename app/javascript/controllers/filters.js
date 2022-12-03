const filterByGender = (gender) => {
  // Query selectors
  const cats = document.querySelectorAll(".cat-card")
  const catContainer = document.querySelector(".cards")

  // Converting DOM elements into an array
  const catArray = Array.from(cats)
  // filtering array by dataset
  const filteredCats = catArray.filter(cat => cat.dataset.gender === gender)
  const hiddenCats = catArray.filter(cat => cat.dataset.gender !== gender)

  // appending filtered cats into DOM
  filteredCats.forEach((item) => {
    item.classList.remove("d-none")
  })
  hiddenCats.forEach((item) => {
    item.classList.add("d-none")
  })
}

const filterByBreed = (breed) => {
  // Query selectors
  const cats = document.querySelectorAll(".cat-card")
  const catContainer = document.querySelector(".cards")

  // Converting DOM elements into an array
  const catArray = Array.from(cats)
  // filtering array by dataset
  const filteredCats = catArray.filter(cat => cat.dataset.breed === breed)
  const hiddenCats = catArray.filter(cat => cat.dataset.breed !== breed)

  // appending filtered cats into DOM
  filteredCats.forEach((item) => {
    item.classList.remove("d-none")
  })
  hiddenCats.forEach((item) => {
    item.classList.add("d-none")
  })
}

export {filterByGender, filterByBreed}
