require 'watir-webdriver'
browser = Watir::Browser.new :firefox

browser.goto("www.dannyandsierra.com")
browser.link(title: "Registration Form").click

sleep 1
browser.text_field(id: "user_email").set "Jizanthapus"
browser.text_field(id: "user_password").set "Jizanthapus"
browser.text_field(id: "user_first_name").set "Jizanthapus"
browser.text_field(id: "user_last_name").set "Jizanthapus"
browser.text_field(id: "user_phone_number").set "Jizanthapus"