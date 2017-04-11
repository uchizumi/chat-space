require 'rails_helper'

describe MessagesController do

  describe 'GET #index' do

    it "populates an array of messages current_user of groups" do
      groups = create_list(:group, 3)
      get :index, group_id: 1
      expect(assigns(:groups)).to match(groups)
    end

    it "renders the :index template" do
    end
  end

end
