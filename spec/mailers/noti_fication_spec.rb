require "rails_helper"

RSpec.describe NotiFicationMailer, type: :mailer do
  describe "reminder_appointment" do
    let(:mail) { NotiFicationMailer.reminder_appointment }

    it "renders the headers" do
      expect(mail.subject).to eq("Reminder appointment")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
