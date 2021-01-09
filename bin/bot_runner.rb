bot = Discordrb::Commands::CommandBot.new token: ENV['DISCORD_COMMAND_TOKEN'], prefix: '!'

bot.command :mog_raffle  do |event, *args| MogRaffle.(event, args); end

bot.run
