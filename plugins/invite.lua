-- Invite other user to the chat group.
-- Use !invite name User_name or !invite id id_number
-- The User_name is the print_name (there are no spaces but _)

do

local function res_user_callback(cb_extra, success, result)
  local receiver = cb_extra.receiver
  local user = 'user#id'..result.id
  local chat = 'chat#id'..cb_extra.chat_id
  if success == 0 then
    return send_large_msg(receiver, "Can't invite user to this group.")
  end
  chat_add_user(chat, user, cb_ok, false)
end

local function run(msg, matches)
  -- The message must come from a chat group
  if msg.to.type == 'chat' then
    local chat = 'chat#id'..msg.to.id
    local user = matches[2]

    -- User submitted a name
    if matches[1] == "name" then
      user = string.gsub(user," ","_")
      chat_add_user(chat, user, callback, false)
    end

    -- User submitted a user name
    if matches[1] == "username" then
      username = string.gsub(user,"@","")
      msgr = res_user(username, res_user_callback, {receiver=receiver, chat_id=msg.to.id})
    end

    -- User submitted an id
    if matches[1] == "id" then
      user = 'user#id'..user
      chat_add_user(chat, user, callback, false)
    end

    return "Add "..user.." to "..chat
  else
    return "This isn't a chat group!"
  end
end

return {
  description = "Invite other user to the chat group",
  usage = {
    "!invite name [name]",
    "!invite username [user_name]",
    "!invite id [user_id]"
  },
  patterns = {
    "^!invite (name) (.*)$",
    "^!invite (username) (.*)$",
    "^!invite (id) (%d+)$"
  },
  run = run,
  moderation = true
}

end
