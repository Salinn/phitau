require "rails_helper"

RSpec.describe AuthicationMailer, :type => :mailer do
  describe "asking_to_be_a_member" do
    let(:mail) { AuthicationMailer.asking_to_be_a_member }

    it "renders the headers" do
      expect(mail.subject).to eq("Asking to be a member")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
