# encoding: UTF-8

# Reference: http://sv.wikipedia.org/wiki/Flaggdagar_i_Sverige
FLAG_DAYS = {
  "1 january"    => "Idag flaggar vi för att det är Nyårsdagen http://j.mp/aysf7z #svpt",
  "28 january"   => "Idag flaggar vi för att det är Konung Carl XVI Gustafs namnsdag http://j.mp/9VKeWk #svpt",
  "12 march"     => "Idag flaggar vi för att det är Kronprinsessan Victorias namnsdag http://j.mp/9tKqdm #svpt",
  "8 april"      => "Idag flaggar vi för att det är Påskdagen http://j.mp/9nSGf4 #svpt",
  "30 april"     => "Idag flaggar vi för att det är Konung Carl XVI Gustafs födelsedag http://j.mp/9VKeWk #svpt",
  "1 may"        => "Idag flaggar vi för att det är Första maj http://j.mp/d4HNV6 #svpt",
  "27 may"       => "Idag flaggar vi för att det är Pingstdagen http://j.mp/8ZLWEC #svpt",
  "6 june"       => "Idag flaggar vi för att det är Sveriges nationaldag http://j.mp/bDEpja #svpt",
  "23 june"      => "Idag flaggar vi för att det är Midsommardagen http://bit.ly/b5dHVU #svpt",
  "14 july"      => "Idag flaggar vi för att det är Kronprinsessan Victorias födelsedag http://j.mp/9tKqdm #svpt",
  "8 august"     => "Idag flaggar vi för att det är Drottning Silvias namnsdag http://j.mp/cSJXPi #svpt",
  #"19 september" => "Idag flaggar vi för att det är val till riksdagen http://j.mp/cuYG7H #svpt",
  "24 october"   => "Idag flaggar vi för att det är FN-dagen http://j.mp/db9Kak #svpt",
  "6 november"   => "Idag flaggar vi för att det är Gustav Adolfsdagen http://j.mp/d4X2bE #svpt",
  "10 december"  => "Idag flaggar vi för att det är Nobeldagen http://j.mp/dktGCo #svpt",
  "23 december"  => "Idag flaggar vi för att det är Drottning Silvias födelsedag http://j.mp/cSJXPi #svpt",
  "25 december"  => "Idag flaggar vi för att det är Juldagen http://j.mp/cXHXLZ #svpt"
}

desc "Check if the current day is a flag day and tweet if it is"
task :flaggdagar do
  if message = FLAG_DAYS[FLAG_DAYS.keys.detect { |day| Date.parse(day) == Date.today }]
    puts "Tweeet! #{message}"
    #Twitter.update(message)
  else
    puts "Nothing to tweet today."
  end
end