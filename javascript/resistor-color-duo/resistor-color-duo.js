//
// This is only a SKELETON file for the 'Resistor Color Duo' exercise. It's been provided as a
// convenience to get you started writing code faster.
//
const colors = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white'];

export const decodedValue = (array) => {
  const two_colors = array.slice(0, 2);
  const resistorColor = two_colors.map(color => {
    return colors.indexOf(color.toLowerCase())
  });
  return parseInt(resistorColor.join(""));

};
