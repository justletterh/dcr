require "log"
require "./discordcr/*"

module Discord
  Log = ::Log.for("discord",level: ::Log::Severity::Error)
end
