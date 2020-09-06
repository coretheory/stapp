require 'test_helper'

class AudienceMailerTest < ActionMailer::TestCase
  test "audience_activation" do
    mail = AudienceMailer.audience_activation
    assert_equal "Audience activation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "email_update" do
    mail = AudienceMailer.email_update
    assert_equal "Email update", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "email_destroy" do
    mail = AudienceMailer.email_destroy
    assert_equal "Email destroy", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
