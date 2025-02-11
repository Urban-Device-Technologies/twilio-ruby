##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'BundleCopy' do
  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.numbers.v2.regulatory_compliance \
                        .bundles('BUXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                        .bundle_copies.create()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://numbers.twilio.com/v2/RegulatoryCompliance/Bundles/BUXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Copies',
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "sid": "BUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "regulation_sid": "RNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "friendly_name": "friendly_name",
          "status": "draft",
          "valid_until": "2015-07-30T20:00:00Z",
          "email": "email",
          "status_callback": "http://www.example.com",
          "date_created": "2015-07-30T20:00:00Z",
          "date_updated": "2015-07-30T20:00:00Z"
      }
      ]
    ))

    actual = @client.numbers.v2.regulatory_compliance \
                               .bundles('BUXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                               .bundle_copies.create()

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.numbers.v2.regulatory_compliance \
                        .bundles('BUXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                        .bundle_copies.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://numbers.twilio.com/v2/RegulatoryCompliance/Bundles/BUXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Copies',
    ))).to eq(true)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "results": [],
          "meta": {
              "page": 0,
              "page_size": 50,
              "first_page_url": "https://numbers.twilio.com/v2/RegulatoryCompliance/Bundles/BUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Copies?PageSize=50&Page=0",
              "previous_page_url": null,
              "url": "https://numbers.twilio.com/v2/RegulatoryCompliance/Bundles/BUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Copies?PageSize=50&Page=0",
              "next_page_url": null,
              "key": "results"
          }
      }
      ]
    ))

    actual = @client.numbers.v2.regulatory_compliance \
                               .bundles('BUXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                               .bundle_copies.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "results": [
              {
                  "sid": "BUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "regulation_sid": "RNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "friendly_name": "friendly_name",
                  "status": "twilio-approved",
                  "email": "email",
                  "status_callback": "http://www.example.com",
                  "valid_until": "2020-07-31T01:00:00Z",
                  "date_created": "2019-07-30T22:29:24Z",
                  "date_updated": "2019-07-31T01:09:00Z"
              }
          ],
          "meta": {
              "page": 0,
              "page_size": 50,
              "first_page_url": "https://numbers.twilio.com/v2/RegulatoryCompliance/Bundles/BUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Copies?PageSize=50&Page=0",
              "previous_page_url": null,
              "url": "https://numbers.twilio.com/v2/RegulatoryCompliance/Bundles/BUaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Copies?PageSize=50&Page=0",
              "next_page_url": null,
              "key": "results"
          }
      }
      ]
    ))

    actual = @client.numbers.v2.regulatory_compliance \
                               .bundles('BUXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                               .bundle_copies.list()

    expect(actual).to_not eq(nil)
  end
end