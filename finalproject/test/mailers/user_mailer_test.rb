require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "contactus_request" do
    mail = UserMailer.contactus_request
    assert_equal "Contactus request", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
