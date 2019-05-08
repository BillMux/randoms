var inputData = [
  {
    id: 1,
    title: 'hippo',
    faveFood: 'carrots'
  },
  {
    id: 2,
    title: 'Cat',
    faveFood: 'carrots'
  },
  {
    id: 3,
    title: 'ducks',
    faveFood: 'breadcrumbs'
  }
]

findAnimal = function(animal) {
  for(x = 0; x < inputData.length; x++) {
    if(inputData[x].title === animal) {
      return inputData[x].faveFood;
    };
  };
  return `${capitalize(animal)} not found`
}

capitalize = function(word) {
  return word.charAt(0).toUpperCase() + word.slice(1)
};

console.log(findAnimal('hippo')); // should return 'carrots'
console.log(findAnimal('ducks')); // should return 'breadcrumbs'
console.log(findAnimal('dog')); // should return 'Dog not found'
