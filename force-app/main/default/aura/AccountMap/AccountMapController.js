({
  onAccountsLoaded: function (component, event, helper) {
    let mapMarkers = [];
    let accounts = event.getParam("accounts");
    for (let i = 0; i < accounts.length; i++) {
      let account = accounts[i];
      let marker = {
        location: {
          Street: account.BillingStreet,
          City: account.BillingCIty,
          PostalCode: account.BillingPostalCode
        },
        title: account.Name,
        description:
          "Phone: " + account.Phone + "<br/>" + "Website: " + account.Website,
        icon: "standard:location"
      };
      mapMarkers.push(marker);
    }
    component.set("v.mapMarkers", mapMarkers);
  }
});
