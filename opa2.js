
const formRefundRequestData = (value, pspReference) => {
  return {
    modificationAmount: {
      value,
      currency: "SEK"
    },
    originalReference: pspReference,
    reference: "fdsafafsdfasd",
    merchantAccount: MERCHANT_ACCOUNT,
  }
}



