class CreateVolunteers < ActiveRecord::Migration
  def self.up
    create_table :volunteers do |t|
      t.string     "given_names"
      t.string     "surname"
      t.string     "preffered_name"
      t.string     :email,               :null => false                # optional, you can use login instead, or both
      t.string     "skype_name"
      t.string     "mobile"
      t.string     "home_phone"
      t.string     "work_phone"
      t.string     "processed_by"
      t.string     "region"
      t.date       "paid_until"
      t.string     "personal_skills"      
      t.string     :crypted_password,    :null => false                # optional, see below
      t.string     :password_salt,       :null => false                # optional, but highly recommended
      t.string     :persistence_token,   :null => false                # required
      t.string     :single_access_token, :null => false                # optional, see Authlogic::Session::Params
      t.string     :perishable_token,    :null => false                # optional, see Authlogic::Session::Perishability
      t.timestamps
    end
  end

  def self.down
    drop_table :volunteers
  end
end
