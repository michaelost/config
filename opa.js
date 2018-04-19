
const formatCreditCardCredentials = (cardDetails) => {
  const {
    number, 
    expiry,
    cvc,
    type,
  } = cardDetails;
  const exp = expiry.split("/");
  const expiryMonth = exp[0].replace('0','');
  const expiryYear = "20" + exp[1];
  return {
    number: number.replace(/\s+/g,''),
    cvc,
    expiryMonth,
    expiryYear,
    holderName: 'Michael Ost',
  }; 
}


