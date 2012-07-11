# Expands a message to a named group of people into their individual names
#
# merlin: <your message>

josiah = "Jkiehl"
cliff = "cdickerson"
ivey = "michael.ivey"
chong = "Chong Yan"
jamie = "Jamie Winsor"
jesse = "Jesse Howarth"

merlin_remote_members = [
  cliff,
  ivey
]

ef_devs = [
  jesse,
  josiah,
  ivey,
  chong
]

merlin_lax_members = [
  jesse,
  josiah,
  jamie,
  chong
]

chef_repo_mergers = [
  jesse,
  ivey,
  cliff
]

merlin_members = merlin_remote_members.concat merlin_lax_members

module.exports = (robot) ->
  robot.hear /^(merlin|dat)( team| dudes| guys)*:(.+)/i, (msg) ->
    msg.send merlin_members.join(", ") + ": ^^"

  robot.hear /^(merlin|dat)-lax( team| dudes| guys)*:(.+)/i, (msg) ->
    msg.send merlin_lax_members.join(", ") + ": ^^"

  robot.hear /^(merlin|dat)-remote( team| dudes| guys)*:(.+)/i, (msg) ->
    msg.send merlin_remote_members.join(", ") + ": ^^"

  robot.hear /^(glastonbury|ef|environment factory|factory)( team| dudes| guys)*:(.+)/i, (msg) ->
    msg.send ef_devs.join(", ") + ": ^^"

  robot.hear /^mergers:(.+)/i, (msg) ->
    msg.send chef_repo_mergers.join(", ") + ": ^^"
