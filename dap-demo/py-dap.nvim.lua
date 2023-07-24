local dap = require('dap')

dap.adapters.debugpy = {
    type = 'executable',
    command = 'python',
    args = { '-m', 'debugpy.adapter' },
}

dap.configurations.python = {
    {
        type = 'debugpy',
        request = 'launch',
        name = "Debug Files",
        program = "${file}",
    },
}
