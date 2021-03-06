# frozen_string_literal: true

# == Schema Information
#
# Table name: consents
#
#  id                   :uuid             not null, primary key
#  content_translations :jsonb
#  key                  :citext           not null, indexed
#  title_translations   :jsonb
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
# Indexes
#
#  index_consents_on_key  (key) UNIQUE
#

require "rails_helper"

RSpec.describe Consent, type: :model do
  subject(:consent) { build :consent }

  it { is_expected.to validate_uniqueness_of(:key).case_insensitive }
  it { is_expected.to validate_presence_of(:key) }

  context "when a consent is updated" do
    let(:user_consent) { create :user_consent, :consented }
    let(:consent) { user_consent.consent }

    # rubocop:disable Lint/AmbiguousBlockAssociation
    it { expect { consent.update(title_en: "A new thing") }.to change { user_consent.reload.up_to_date } }
    it { expect { consent.update(title_en: "A new thing") }.to change { user_consent.reload.updated_at } }
    # rubocop:enable Lint/AmbiguousBlockAssociation
  end

  describe '.email' do

    subject { described_class.email }

    context 'when email consent exists' do
      let!(:consent) { create(:consent, key: :email) }
      it do
        expect(subject.id).to eq consent.id
      end
    end

    context 'when email consent doesn\'t existe' do
      it do
        expect { subject.id }.to raise_error(ActiveRecord::RecordNotFound)
      end
    end
  end
end
