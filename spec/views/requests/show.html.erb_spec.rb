require 'rails_helper'

RSpec.describe "requests/show", type: :view do
  before(:each) do
    @request = assign(:request, Request.create!(
      :address => "Address",
      :name => "Name",
      :email => "Email",
      :option => "Option",
      :body => "MyText",
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Option/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Status/)
  end
end
