class ProductPage:
    addNewBtn = "//div[contains(@class,'content-header')]//a"
    collapseBtn = "//div[@class='icon-collapse']"
    searchBody = "//div[@class='search-body ']"
    searchProductName = "//input[@id='SearchProductName']"
    searchProductBtn = "//button[@id='search-products']"
    productNameCol = "//div[@class='dataTables_scrollBody']//tbody//tr[1]//td[3]"
    productSKUCol = "//div[@class='dataTables_scrollBody']//tbody//tr[1]//td[4]"
    productPriceCol = "//div[@class='dataTables_scrollBody']//tbody//tr[1]//td[5]"
    goDirectlyToSKU = "//input[@id='GoDirectlyToSku']"
    goBtn = "//input[@id='GoDirectlyToSku']/following-sibling::span/button"
    nonDataCol = "//div[@class='dataTables_scrollBody']//tbody//tr[1]//td"
    deleteBtn = "//button[@id='delete-selected']"
    selectAllProductCheckbox = "//th/input[@class='mastercheckbox'][1]"
    selectCurrentProductCheckbox = "//input[@class='checkboxGroups']"
    confirmDeleteDialog = "//div[@class='modal-content']"
    confirmDeleteBtn = "//div[@class='modal-content']//button[@id='delete-selected-action-confirmation-submit-button']"
    warningMess = "//div[@class='modal-content']//div[@id='nothingSelectedAlert-info']"
    editProductBtn = "//div[@class='dataTables_scrollBody']//tbody//tr[1]//td[8]/a"
