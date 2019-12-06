require "rails_helper"

RSpec.describe "payment show page", type: :system do
  it "user cannot click through to the edit page" do
    payment = create(:payment)

    visit admin_payment_path(payment)
    expect(page).not_to have_button t("administrate.actions.edit")
  end

  it "user cannot delete record" do
    payment = create(:payment)

    visit admin_payment_path(payment)
    expect(page).not_to have_button t("administrate.actions.destroy")
  end
end
