local M = {
  Opts = {}
}

R = function ()
  package.loaded["rest-client"] = nil
  require"rest-client"
end

M.setup = function(opts)
  P(opts)
  M.Opts = opts
end

M.hello = function ()
  print("Hello from function inside plugin")
end

-- M.read_buffer = function ()
--   
-- end

return M
