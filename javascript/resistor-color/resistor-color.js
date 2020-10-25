//
// This is only a SKELETON file for the 'Resistor Color' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

// array //
// const COLORS = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white']

// const colorCode = (color) => {
//   return COLORS.indexOf(color);
// };


// ------------------ //


// hash //
const colorsWithCodes = {black: 0, brown: 1, red: 2, orange: 3, yellow: 4, green: 5, blue: 6, violet: 7, grey: 8, white: 9}

const colorCode = (color) => {
  return colorsWithCodes[color]
};

const COLORS = Object.keys(colorsWithCodes);

// export
export {colorCode, COLORS}
