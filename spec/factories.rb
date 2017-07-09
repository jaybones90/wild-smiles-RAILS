# User.destroy_all

FactoryGirl.define do
  factory(:user) do
    user_name('Macho Man Randy Savage')
    email('iusedtobegood@wwe.com')
    admin(false)
  end
end
