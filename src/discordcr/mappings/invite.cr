require "./converters"
require "./user"

module Discord
  struct Invite
    JSON.mapping(
      code: String,
      guild: InviteGuild,
      channel: InviteChannel
    )
  end

  struct InviteMetadata
    JSON.mapping(
      code: String,
      guild: InviteGuild,
      channel: InviteChannel,
      inviter: User,
      users: UInt32,
      max_uses: UInt32,
      max_age: UInt32,
      temporary: Bool,
      created_at: {type: Time, converter: TimestampConverter},
      revoked: Bool
    )
  end

  struct InviteGuild
    JSON.mapping(
      id: Snowflake,
      name: String,
      splash_hash: String?
    )
  end

  struct InviteChannel
    JSON.mapping(
      id: Snowflake,
      name: String,
      type: UInt8
    )
  end
end
