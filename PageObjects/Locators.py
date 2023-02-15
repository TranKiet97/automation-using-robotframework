class LoginPage:
    txtEmail = "//label[@for='Email']/following-sibling::input"
    txtPassword = "//label[@for='Password']/following-sibling::input"
    submitBtn = "//button[@type='submit']"
    txtHeader = "//div[contains(@class,'content-header')]//h1"


class ProductPage:
    addNewBtn = "//div[contains(@class,'content-header')]//a"
    collapseBtn = "//div[@class='icon-collapse']"
    searchBody = "//div[@class='search-body ']"
    searchProductName = "//input[@id='SearchProductName']"
    searchProductBtn = "//button[@id='search-products']"
    productNameCol = "//div[@class='dataTables_scrollBody']//tbody//tr[1]//td[3]"
    goDirectlyToSKU = "//input[@id='GoDirectlyToSku']"
    goBtn = "//input[@id='GoDirectlyToSku']/following-sibling::span/button"
    nonDataCol = "//div[@class='dataTables_scrollBody']//tbody//tr[1]//td"


class AddNewProductPage:
    settingBtn = "//button[@id='product-editor-settings']"
    saveBtn = "//button[@name='save']"
    saveContEditBtn = "//button[@name='save-continue']"
    toggle = "//label[@class='onoffswitch-label']"
    giftCard = "//div[@class='card-title' and text()='Gift card']"
    rentalCard = "//div[@class='card-title' and text()='Rental']"
    downloadableProductCard = "//div[@class='card-title' and text()='Downloadable product']"
    txtProductName = "//input[@id='Name']"
    txtShortDescription = "//textarea[@id='ShortDescription']"
    txtPrice = "//div[@id='product-price']//div[@id='product-price-area']//input[1]"
    taxExemptCheckbox = "//div[@id='product-price']//input[@id='IsTaxExempt']"
    shipCheckbox = "//div[@id='product-shipping']//input[@id='IsShipEnabled']"
    shipWeight = "//div[@id='product-shipping']//input[@id='Weight']"
    shipLength = "//div[@id='product-shipping']//input[@id='Length']"
    shipWidth = "//div[@id='product-shipping']//input[@id='Width']"
    shipHeight = "//div[@id='product-shipping']//input[@id='Height']"
    inventoryMethod = "//div[@id='product-inventory']//select[@id='ManageInventoryMethodId']"
    addNewProductSuccessNoti = "//div[@class='alert alert-success alert-dismissable']"


class EditProductPage:
    editProductHeader = "//h1[contains(text(),'Edit product details')]"
    SKU = "//input[@id='Sku']"
