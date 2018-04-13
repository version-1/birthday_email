# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                          :uuid             not null, primary key
#  encrypted_password          :string
#  encrypted_email_iv          :string
#  encrypted_email             :string
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#  encrypted_preferred_name_iv :string
#  encrypted_preferred_name    :string
#  encrypted_username_iv       :string
#  encrypted_username          :string
#

require "rails_helper"

RSpec.describe User, type: :model do
  subject(:user) { build :user }

  it_behaves_like "an encryptable object", %i[email preferred_name username]

  it "exports data in a GDPR-compliant way" do
    expect(create(:user).export_personal_information).to be_json
  end
end