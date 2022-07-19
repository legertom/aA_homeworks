document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  // --- your code here!
  const placesForm = document.getElementsByClassName("favorite-input")
   placesForm.addEventListener('submit', event =>{
     event.preventDefault();
     const newPlaceInput = document.getElementsByClassName('favorite-input')
      const newPlace =newPlaceInput.value;
      newPlaceInput = '';
      console.log(newPlace)

      const ul = document.getElementById('sf-places');
      const li = document.createElement('li');
      li.textContent = newPlace;
      ul.appendChild(li);
    });



  // adding new photos

  // --- your code here!



});
