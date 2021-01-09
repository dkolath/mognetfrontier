class PlaySoundEffect

  def self.call(bot, event, _args)

      channel = event.user.voice_channel
      return "You're not in any voice channel!" unless channel
      bot.voice_connect(channel)
      voice_bot = event.voice
      voice_bot.play_file("#{Rails.root}/app/assets/media/distant_words_victory.mp3")
  end
end