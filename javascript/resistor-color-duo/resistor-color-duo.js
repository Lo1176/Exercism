//
// This is only a SKELETON file for the 'Resistor Color Duo' exercise. It's been provided as a
// convenience to get you started writing code faster.
//
const RESISTOR_COLORS = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white'];

export const decodedValue = (array) => {
  const two_colors = array.slice(0, 2);
  const resistorNumber = two_colors
    .map(color => RESISTOR_COLORS.indexOf(color))
    .join('');
  return parseInt(resistorNumber);
};
