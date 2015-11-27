do

function run(msg, matches)
  return 'critech security '.. VERSION .. [[ 
  anti spammer and
  group manager robot
 by cri-technology team
  @willaim_critech
  @heisenberg_critech for more info.]]
end

return {
  description = "Shows bot version", 
  usage = "!version: Shows bot version",
  patterns = {
    "^!version$"
  }, 
  run = run 
}

end
