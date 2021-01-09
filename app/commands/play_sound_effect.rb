class PlaySoundEffect

  def self.call(bot, event, _args)
    Rails.logger.info("#{Rails.root}/assets/media/distant_words_victory.mp3")
    Rails.logger.info(Dir.pwd)

    Dir.new('.').each {|file| Rails.logger.info file }
    channel = event.user.voice_channel
    return "You're not in any voice channel!" unless channel
    bot.voice_connect(channel)
    voice_bot = event.voice
    voice_bot.play_file("#{Rails.root}/assets/media/distant_words_victory.mp3")
  end
end