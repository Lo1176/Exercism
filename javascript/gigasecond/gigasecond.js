//
// This is only a SKELETON file for the 'Gigasecond' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const gigasecond = (date) => {
  const GIGASECOND = new Date(Math.pow(10, 8)) ;
  return (Math.pow(date, 10) + GIGASECOND);

};
