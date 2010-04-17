class CreateVolunteers < ActiveRecord::Migration
  def self.up
    create_table :volunteers do |t|
      t.string    :email,               :null => false                # optional, you can use login instead, or both
      t.string    :crypted_password,    :null => false                # optional, see below
      t.string    :password_salt,       :null => false                # optional, but highly recommended
      t.string    :persistence_token,   :null => false                # required
      t.string    :single_access_token, :null => false                # optional, see Authlogic::Session::Params
      t.string    :perishable_token,    :null => false                # optional, see Authlogic::Session::Perishability
      t.text     "given_names"
      t.text     "surname"
      t.text     "preffered_name"
      t.date     "birth_date"
      t.text     "email"
      t.text     "skype_name"
      t.text     "mobile"
      t.text     "home_phone"
      t.text     "work_phone"
      t.text     "business_name"
      t.text     "processed_by"
      t.text     "entered_by"
      t.text     "region"
      t.boolean  "paid"
      t.text     "payment_method"
      t.text     "payment_notes"
      t.text     "personal_skills"

      t.timestamps
    end
  end

  def self.down
    drop_table :volunteers
  end
end
