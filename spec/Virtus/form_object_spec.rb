require 'spec_helper'

describe Virtus::Extras::FormObject do
  let(:attribute_hash) {{:display_name => 'first last',
    :first_name => 'first',
    :last_name => 'last',
    :is_active => 0,
    :hidden => 99}}
  let(:virtus_model) { UserEntry.new(attribute_hash) }

  describe 'attributes' do
    subject(:form_object) { virtus_model.attributes }

    it 'form object display name should eq hash display name' do
      expect(form_object[:display_name]).to eq attribute_hash[:display_name]
    end
    it 'form object first name should eq hash first name' do
      expect(form_object[:first_name]).to eq attribute_hash[:first_name]
    end
    it 'form object last name should eq hash last name' do
      expect(form_object[:last_name]).to eq attribute_hash[:last_name]
    end
    it 'form object is active should eq hash is active' do
      expect(form_object[:is_active]).to eq attribute_hash[:is_active]
    end

    it 'form object hidden should be private' do
      expect(form_object[:hidden]).not_to eq attribute_hash[:hidden]
      expect(form_object[:hidden]).to eq nil
    end
    # it { expect(form_object) eq attribute_hash }
  end
end
