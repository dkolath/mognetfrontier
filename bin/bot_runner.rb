bot = Discordrb::Commands::CommandBot.new token: ENV['DISCORD_COMMAND_TOKEN'], prefix: '!'

bot.command :mog_raffle  do |event, *args| MogRaffle.(event, args); end
bot.command :testing_sound  do |event, *args| PlaySoundEffect.(bot, event, args); end

bot.run
