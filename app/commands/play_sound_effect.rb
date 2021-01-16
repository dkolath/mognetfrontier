class PlaySoundEffect

  def self.call(bot, event, args)
    sound = args.first
    channel = event.user.voice_channel
    return "You're not in any voice channel!" unless channel

    bot.voice_connect(channel)
    voice_bot = event.voice
    voice_bot.play_file("#{Rails.root}/app/assets/media/#{sound}.mp3")
  end
end