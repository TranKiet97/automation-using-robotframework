class EditProductPage:
    editProductHeader = "//h1[contains(text(),'Edit product details')]"
    SKU = "//input[@id='Sku']"
    settingBtn = "//button[@id='product-editor-settings']"
    saveBtn = "//button[@name='save']"
    saveContEditBtn = "//button[@name='save-continue']"
    copyProductBtn = "//button[@name='copyproduct']"
    txtProductName = "//input[@id='Name']"
    txtPrice = "div#product-price div#product-price-area input:first-child"
    editProductSuccessNoti = "//div[@class='alert alert-success alert-dismissable']"
    deleteProductBtn = "//span[@id='product-delete']"
    confirmDeleteDialog = "//div[@id='productmodel-Delete-delete-confirmation']//div[@class='modal-content']"
    confirmDeleteBtn = "//button[@class='btn btn-danger float-right']"
    shipWeight = "div#product-shipping input#Weight"
    shipLength = "div#product-shipping input#Length"
    shipWidth = "div#product-shipping input#Width"
    shipHeight = "div#product-shipping input#Height"
