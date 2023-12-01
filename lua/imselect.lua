-- 都是粉色的手动发送地方定义一个函数来切换输入法
local M = {}

function M.setInputMethod()
  vim.fn.system('/usr/local/bin/im-select com.apple.keylayout.ABC')
end

return M
