##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'PlayerStreamer' do
  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.media.v1.player_streamer('VJXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://media.twilio.com/v1/PlayerStreamers/VJXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2015-07-30T20:00:00Z",
          "date_updated": "2015-07-30T20:00:00Z",
          "status": "created",
          "video": true,
          "sid": "VJcafebabecafebabecafebabecafebabe",
          "status_callback": "http://www.example.com",
          "status_callback_method": "POST",
          "ended_reason": null,
          "url": "https://media.twilio.com/v1/PlayerStreamers/VJcafebabecafebabecafebabecafebabe",
          "links": {
              "access_token": "https://media.twilio.com/v1/PlayerStreamers/VJcafebabecafebabecafebabecafebabe/AccessToken",
              "timed_metadata": "https://media.twilio.com/v1/PlayerStreamers/VJcafebabecafebabecafebabecafebabe/TimedMetadata",
              "playback_grant": "https://media.twilio.com/v1/PlayerStreamers/VJcafebabecafebabecafebabecafebabe/PlaybackGrant"
          }
      }
      ]
    ))

    actual = @client.media.v1.player_streamer('VJXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.media.v1.player_streamer.create()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://media.twilio.com/v1/PlayerStreamers',
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2015-07-30T20:00:00Z",
          "date_updated": "2015-07-30T20:00:00Z",
          "status": "created",
          "video": true,
          "sid": "VJcafebabecafebabecafebabecafebabe",
          "status_callback": "http://www.example.com",
          "status_callback_method": "POST",
          "ended_reason": null,
          "url": "https://media.twilio.com/v1/PlayerStreamers/VJcafebabecafebabecafebabecafebabe",
          "links": {
              "access_token": "https://media.twilio.com/v1/PlayerStreamers/VJcafebabecafebabecafebabecafebabe/AccessToken",
              "timed_metadata": "https://media.twilio.com/v1/PlayerStreamers/VJcafebabecafebabecafebabecafebabe/TimedMetadata",
              "playback_grant": "https://media.twilio.com/v1/PlayerStreamers/VJcafebabecafebabecafebabecafebabe/PlaybackGrant"
          }
      }
      ]
    ))

    actual = @client.media.v1.player_streamer.create()

    expect(actual).to_not eq(nil)
  end

  it "can update" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.media.v1.player_streamer('VJXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update(status: 'ended')
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {'Status' => 'ended', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://media.twilio.com/v1/PlayerStreamers/VJXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
        data: values,
    ))).to eq(true)
  end

  it "receives update responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2015-07-30T20:00:00Z",
          "date_updated": "2015-07-30T20:01:00Z",
          "status": "ended",
          "video": true,
          "sid": "VJcafebabecafebabecafebabecafebabe",
          "status_callback": "http://www.example.com",
          "status_callback_method": "POST",
          "ended_reason": "ended-via-api",
          "url": "https://media.twilio.com/v1/PlayerStreamers/VJcafebabecafebabecafebabecafebabe",
          "links": {
              "access_token": "https://media.twilio.com/v1/PlayerStreamers/VJcafebabecafebabecafebabecafebabe/AccessToken",
              "timed_metadata": "https://media.twilio.com/v1/PlayerStreamers/VJcafebabecafebabecafebabecafebabe/TimedMetadata",
              "playback_grant": "https://media.twilio.com/v1/PlayerStreamers/VJcafebabecafebabecafebabecafebabe/PlaybackGrant"
          }
      }
      ]
    ))

    actual = @client.media.v1.player_streamer('VJXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update(status: 'ended')

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.media.v1.player_streamer.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://media.twilio.com/v1/PlayerStreamers',
    ))).to eq(true)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "meta": {
              "page": 0,
              "page_size": 10,
              "first_page_url": "https://media.twilio.com/v1/PlayerStreamers?Status=started&Order=asc&PageSize=10&Page=0",
              "previous_page_url": null,
              "url": "https://media.twilio.com/v1/PlayerStreamers?Status=started&Order=asc&PageSize=10&Page=0",
              "next_page_url": null,
              "key": "player_streamers"
          },
          "player_streamers": []
      }
      ]
    ))

    actual = @client.media.v1.player_streamer.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_items responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "meta": {
              "page": 0,
              "page_size": 10,
              "first_page_url": "https://media.twilio.com/v1/PlayerStreamers?Status=ended&Order=desc&PageSize=10&Page=0",
              "previous_page_url": null,
              "url": "https://media.twilio.com/v1/PlayerStreamers?Status=ended&Order=desc&PageSize=10&Page=0",
              "next_page_url": null,
              "key": "player_streamers"
          },
          "player_streamers": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "date_created": "2015-07-30T20:00:00Z",
                  "date_updated": "2015-07-30T20:01:00Z",
                  "status": "ended",
                  "video": true,
                  "sid": "VJcafebabecafebabecafebabecafebabe",
                  "status_callback": "http://www.example.com",
                  "status_callback_method": "POST",
                  "ended_reason": "ended-via-api",
                  "url": "https://media.twilio.com/v1/PlayerStreamers/VJcafebabecafebabecafebabecafebabe",
                  "links": {
                      "access_token": "https://media.twilio.com/v1/PlayerStreamers/VJcafebabecafebabecafebabecafebabe/AccessToken",
                      "timed_metadata": "https://media.twilio.com/v1/PlayerStreamers/VJcafebabecafebabecafebabecafebabe/TimedMetadata",
                      "playback_grant": "https://media.twilio.com/v1/PlayerStreamers/VJcafebabecafebabecafebabecafebabe/PlaybackGrant"
                  }
              }
          ]
      }
      ]
    ))

    actual = @client.media.v1.player_streamer.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_items_page_larger_than_max responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "meta": {
              "page": 0,
              "page_size": 100,
              "first_page_url": "https://media.twilio.com/v1/PlayerStreamers?Status=ended&Order=desc&PageSize=100&Page=0",
              "previous_page_url": null,
              "url": "https://media.twilio.com/v1/PlayerStreamers?Status=ended&Order=desc&PageSize=100&Page=0",
              "next_page_url": null,
              "key": "player_streamers"
          },
          "player_streamers": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "date_created": "2015-07-30T20:00:00Z",
                  "date_updated": "2015-07-30T20:01:00Z",
                  "status": "ended",
                  "video": true,
                  "sid": "VJcafebabecafebabecafebabecafebabe",
                  "status_callback": "http://www.example.com",
                  "status_callback_method": "POST",
                  "ended_reason": "ended-via-api",
                  "url": "https://media.twilio.com/v1/PlayerStreamers/VJcafebabecafebabecafebabecafebabe",
                  "links": {
                      "access_token": "https://media.twilio.com/v1/PlayerStreamers/VJcafebabecafebabecafebabecafebabe/AccessToken",
                      "timed_metadata": "https://media.twilio.com/v1/PlayerStreamers/VJcafebabecafebabecafebabecafebabe/TimedMetadata",
                      "playback_grant": "https://media.twilio.com/v1/PlayerStreamers/VJcafebabecafebabecafebabecafebabe/PlaybackGrant"
                  }
              }
          ]
      }
      ]
    ))

    actual = @client.media.v1.player_streamer.list()

    expect(actual).to_not eq(nil)
  end
end