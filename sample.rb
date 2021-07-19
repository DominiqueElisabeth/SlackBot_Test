require "slack-notify"
require 'clockwork'
require 'active_support/time'
include Clockwork

client = SlackNotify::Client.new(webhook_url: "https://hooks.slack.com/services/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")
client.notify("Hey")

client = SlackNotify::Client.new(
  webhook_url: "https://hooks.slack.com/services/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",
  channel: "#general",
  username: "webhookbot message",
  icon_url: "http://mydomain.com/myimage.png",
  icon_emoji: ":shipit:",
  link_names: 1
)
client.notify("Fine")
module Clockwork
	client = SlackNotify::Client.new(webhook_url: "https://hooks.slack.com/services/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")
	every(3.minutes, 'Three minutes') do
		client.notify("Yes!")
	end
end
