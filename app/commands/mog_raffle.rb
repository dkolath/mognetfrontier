class MogRaffle
  def self.call(event, args)
    num_winners = args.first.to_i > 0 ? args.shift.to_i : 10
    num_winners = args.length <= num_winners ? args.length : num_winners

    list = args.join(' ').split('-').reject {|o| o.strip == ""}
    event.respond "Generating results:"
    results = list.shuffle.take(num_winners).map.with_index {|o, i| "#{num_winners - i}. #{o.strip}"}

    results.each do |winner|
      sleep(5)
      event.respond winner
    end

    "That concludes this raffle. Thanks for participating"
  rescue => e
    e.message
  end
end