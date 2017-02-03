require "rails_helper"
Selenium::WebDriver::Firefox::Binary.path='C:\Program Files (x86)\Mozilla Firefox\firefox.exe'

RSpec.describe do
  it "should require the links file in the application CSS manifest" do
    expect(File.read("app/assets/stylesheets/application.css")).to include("*= require links")
  end

  it "should require the hides file in the application JS manifest" do
    expect(File.read("app/assets/javascripts/application.js")).to include("//= require hide")
  end
end
