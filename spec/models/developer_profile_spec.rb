require 'spec_helper'
RSpec.describe DeveloperProfile do
  let(:instance) { described_class.new(profile) }

  describe '.all' do
    subject { described_class.all }
    it { expect(subject.count).to be 5 }
    it { expect(subject.last).to be_kind_of DeveloperProfile }
  end

  describe 'initialization' do

    context 'initializing existing profile with string' do
      let(:profile) { 'linkedin' }
      it { expect(instance.profile_key).to eq 'linkedin' }
    end

    context 'initializing existing profile with symbol' do
      let(:profile) { :linkedin }
      it { expect(instance.profile_key).to eq 'linkedin' }
    end
  end

  describe '#profile_hash' do
    let(:instance) { described_class.new 'twitter' }
    subject { instance.to_social_hash  }
    it { expect(subject.keys.size).to be 4 }
    it { expect(subject.keys).to include :title, :url, :icon, :hidden }
    it { expect(subject[:hidden]).to be true }
  end
end
