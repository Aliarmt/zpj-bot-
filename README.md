# <p align="center">merbot

<p align="center">A Telegram Bot based on plugins using [tg](https://github.com/vysheng/tg).

Bot Commands
------------
<table>
  <thead>
    <tr>
      <td><strong>Name</strong></td>
      <td><strong>Description</strong></td>
      <td><strong>Usage</strong></td>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>banhammer.lua</td>
      <td>Plugin to manage bans, kicks and white/black lists.</td>
      <td>!whitelist &lt;enable&gt;/&lt;disable&gt; : Enable or disable whitelist mode<br>
          !whitelist user &lt;user_id&gt; : Allow user to use the bot when whitelist mode is enabled<br>
          !whitelist user &lt;username&gt; : Allow user to use the bot when whitelist mode is enabled<br>
          !whitelist chat : Allow everybody on current chat to use the bot when whitelist mode is enabled<br>
          !whitelist delete user &lt;user_id&gt; : Remove user from whitelist<br>
          !whitelist delete chat : Remove chat from whitelist<br>
          !ban user &lt;user_id&gt; : Kick user from chat and kicks it if joins chat again<br>
          !ban user &lt;username&gt; : Kick user from chat and kicks it if joins chat again<br>
          !ban delete &lt;user_id&gt; : Unban user<br>
          !kick &lt;user_id&gt; : Kick user from chat group by id<br>
          !kick &lt;username&gt; : Kick user from chat group by username<br>
          !superban user &lt;user_id&gt; : Kick user from all chat and kicks it if joins again<br>
          !superban user &lt;username&gt; : Kick user from all chat and kicks it if joins again<br>
          !superban delete &lt;user_id&gt; : Unban user<br></td>
    </tr>
    <tr>
      <td>channels.lua</td>
      <td>Plugin to manage channels. Enable or disable channel.</td>
      <td>!channel enable : enable current channel<br>!channel disable : disable current channel<br></td>
    </tr>
    <tr>
      <td>groupmanager.lua</td>
      <td>Plugin to manage group chat.</td>
      <td>!group create &lt;group_name&gt; : Create a new group (admin only)<br>
          !group set about &lt;description&gt; : Set group description<br>
          !group about : Read group description<br>
          !group set rules &lt;rules&gt; : Set group rules<br>
          !group rules : Read group rules<br>
          !group set name &lt;new_name&gt; : Set group name<br>
          !group set photo : Set group photo<br>
          !group &lt;lock|unlock&gt; name : Lock/unlock group name<br>
          !group &lt;lock|unlock&gt; photo : Lock/unlock group photo<br>
          !group &lt;lock|unlock&gt; member : Lock/unlock group member<br>
          !group settings : Show group settings<br></td>
    </tr>
    <tr>
      <td>help.lua</td>
      <td>Help plugin. Get info from other plugins. </td>
      <td>!help : Show list of plugins.<br>!help all : Show all commands for every plugin.<br>!help [plugin name] : Commands for that plugin.<br></td>
    </tr>
    <tr>
        <td>id.lua</td>
        <td>Know your id or the id of a chat members.</td>
        <td>!id : Return your ID and the chat id if you are in one.<br>!id(s) chat : Return the IDs of the chat members.<br></td>
    </tr>
    <tr>
      <td>invite.lua</td>
      <td>Invite other user to the chat group</td>
      <td>!invite name [user_name]<br>!invite id [user_id]<br></td>
    </tr>
    <tr>
      <td>moderation.lua</td>
      <td>Moderation plugin.</td>
      <td>!promote &lt;username&gt; : Promote user as moderator<br>
          !demote &lt;username&gt; : Demote user from moderator<br>
          !modlist : List of moderators<br>
          !modadd : Add group to moderation list<br>
          !modrem : Remove group from moderation list<br>
          !adminprom &lt;username&gt; : Promote user as admin (must be done from a group)<br>
          !admindem &lt;username&gt; : Demote user from admin (must be done from a group)<br></td>
    </tr>
    <tr>
      <td>plugins.lua</td>
      <td>Plugin to manage other plugins. Enable, disable or reload.</td>
      <td>!plugins : list all plugins.<br>!plugins enable [plugin] : enable plugin.<br>!plugins disable [plugin] : disable plugin.<br>!plugins disable [plugin] chat : disable plugin only this chat.<br>!plugins reload : reloads all plugins.<br></td>
    </tr>
    <tr>
      <td>stats.lua</td>
      <td>Plugin to update user stats.</td>
      <td>!stats : Returns a list of Username [telegram_id]: msg_num</td>
    </tr>
    <tr>
      <td>version.lua</td>
      <td>Shows bot version</tdd>
      <td>!version : Shows bot version</td>
    </tr>
  </tbody>
</table>

[Installation](https://github.com/yagop/telegram-bot/wiki/Installation)
------------
```bash
# Tested on Debian 8, for other OSs check out https://github.com/yagop/telegram-bot/wiki/Installation
sudo apt update
sudo apt upgrade
sudo apt install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev libjansson-dev libpython-dev make unzip git redis-server g++
```

```bash
# After those dependencies, lets install the bot
cd $HOME
git clone https://github.com/rizaumami/merbot.git
cd merbot
./launch.sh install
./launch.sh # Will ask you for a phone number & confirmation code.
```

Enable more [`plugins`](https://github.com/rizaumami/merbot/tree/master/plugins)
-------------
See the plugins list with !plugins` command.

Enable a disabled plugin by !plugins enable [name]`.

Disable an enabled plugin by !plugins disable [name]`.

Those commands require a privileged user, privileged users are defined inside `data/config.lua` (generated by the bot), stop the bot and edit if necessary.
