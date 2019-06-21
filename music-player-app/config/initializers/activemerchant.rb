if Rails.env == "development"
  ActiveMerchant::Billing::FirstdataE4Gateway.wiredump_device = File.open(Rails.root.join("log","active_merchant.log"), "a+")
  ActiveMerchant::Billing::FirstdataE4Gateway.wiredump_device.sync = true
  ActiveMerchant::Billing::Base.mode = :test

  login = "MC7314-63"
  password="Y7c03QRw6neaCd6KhSTYJQlZXLRqPhrV"
elsif Rails.env == "production"
  login = 'MC7314-63'
  password='Y7c03QRw6neaCd6KhSTYJQlZXLRqPhrV'
end
GATEWAY = ActiveMerchant::Billing::FirstdataE4Gateway.new({
      login: login,
      password: password
})
