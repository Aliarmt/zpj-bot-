do

function run(msg, matches)
  return 'Merbot '.. VERSION .. [[ 
  Checkout -untuk diisi-
  GNU GPL v2 license.
  @si_kabayan for more info.]]
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
