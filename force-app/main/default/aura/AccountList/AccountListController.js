({
  onAccountsLoaded: function (component, event, helper) {
    let cols = [
      {
        label: "Name",
        fieldName: "Name",
        type: "text"
      },
      {
        label: "Phone",
        fieldName: "Phone",
        type: "phone"
      },
      {
        label: "Website",
        fieldName: "Website",
        type: "url"
      },
      {
        label: "Action",
        type: "button",
        typeAttributes: {
          label: "View details",
          name: "view_details"
        }
      }
    ];
    component.set("v.cols", cols);
    component.set("v.rows", event.getParam("accounts"));
  },
  onRowAction: function (component, event, helper) {
    let action = event.getParam("action");
    let row = event.getParam("row");
    if (action.name === "view_details") {
      let navigation = component.find("navigation");
      navigation.navigate({
        type: "standard__recordPage",
        attributes: {
          objectApiName: "Account",
          recordId: row.Id,
          actionName: "view"
        }
      });
    }
  }
});
