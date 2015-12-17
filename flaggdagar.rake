# encoding: UTF-8

require 'date'

# Reference: http://sv.wikipedia.org/wiki/Flaggdagar_i_Sverige
FLAG_DAYS = {
  "1 january"    => "Idag flaggar vi för att det är Nyårsdagen! http://j.mp/aysf7z",
  "28 january"   => "Idag flaggar vi för att det är Konung Carl XVI Gustafs namnsdag! http://j.mp/9VKeWk",
  "12 march"     => "Idag flaggar vi för att det är Kronprinsessan Victorias namnsdag! http://j.mp/9tKqdm",
  "27 march"     => "Idag flaggar vi för att det är Påskdagen! http://j.mp/9nSGf4",
  "15 may"       => "Idag flaggar vi för att det är Konung Carl XVI Gustafs födelsedag! http://j.mp/9VKeWk",
  "1 may"        => "Idag flaggar vi för att det är Första maj! http://j.mp/d4HNV6",
  "24 may"       => "Idag flaggar vi för att det är Pingstdagen! http://j.mp/8ZLWEC",
  "6 june"       => "Idag flaggar vi för att det är Sveriges nationaldag! http://j.mp/bDEpja",
  "25 june"      => "Idag flaggar vi för att det är Midsommardagen! http://bit.ly/b5dHVU",
  "14 july"      => "Idag flaggar vi för att det är Kronprinsessan Victorias födelsedag! http://j.mp/9tKqdm",
  "8 august"     => "Idag flaggar vi för att det är Drottning Silvias namnsdag! http://j.mp/cSJXPi",
  #"14 september" => "Idag flaggar vi för att det är val till riksdagen! http://j.mp/cuYG7H",
  "24 october"   => "Idag flaggar vi för att det är FN-dagen! http://j.mp/db9Kak",
  "6 november"   => "Idag flaggar vi för att det är Gustav Adolfsdagen! http://j.mp/d4X2bE",
  "10 december"  => "Idag flaggar vi för att det är Nobeldagen! http://j.mp/dktGCo",
  "23 december"  => "Idag flaggar vi för att det är Drottning Silvias födelsedag! http://j.mp/cSJXPi",
  "25 december"  => "Idag flaggar vi för att det är Juldagen! http://j.mp/cXHXLZ"
}

namespace :flaggdagar do
  desc "Check if the current day is a flag day and tweet if it is"
  task :check do
    if message = FLAG_DAYS[FLAG_DAYS.keys.detect { |day| Date.parse(day) == Date.today }]
      puts "Tweet! #{message}"
      Twitter.update(message)
    else
      puts "Nothing to tweet today."
    end
  end

  desc "Manually tweet something"
  task :tweet, :message do |t, args|
    puts "Tweeting: #{args.message}"
    Twitter.update(args.message)
  end
end
