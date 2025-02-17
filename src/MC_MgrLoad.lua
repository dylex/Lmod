--------------------------------------------------------------------------
-- This is used to load all modulefiles when doing module collection
-- restore.
-- @classmod MC_MgrLoad

require("strict")
--------------------------------------------------------------------------
-- Lmod License
--------------------------------------------------------------------------
--
--  Lmod is licensed under the terms of the MIT license reproduced below.
--  This means that Lua is free software and can be used for both academic
--  and commercial purposes at absolutely no cost.
--
--  ----------------------------------------------------------------------
--
--  Copyright (C) 2008-2018 Robert McLay
--
--  Permission is hereby granted, free of charge, to any person obtaining
--  a copy of this software and associated documentation files (the
--  "Software"), to deal in the Software without restriction, including
--  without limitation the rights to use, copy, modify, merge, publish,
--  distribute, sublicense, and/or sell copies of the Software, and to
--  permit persons to whom the Software is furnished to do so, subject
--  to the following conditions:
--
--  The above copyright notice and this permission notice shall be
--  included in all copies or substantial portions of the Software.
--
--  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
--  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
--  OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
--  NONINFRINGEMENT.  IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
--  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
--  ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
--  CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
--  THE SOFTWARE.
--
--------------------------------------------------------------------------


local MasterControl    = require("MasterControl")
local MC_MgrLoad       = inheritsFrom(MasterControl)
local M                = MC_MgrLoad
local dbg              = require("Dbg"):dbg()
M.my_name              = "MC_MgrLoad"
M.my_sType             = "load"
M.my_tcl_mode          = "load"
M.always_load          = MasterControl.fake_load
M.always_unload        = MasterControl.fake_load
M.add_property         = MasterControl.add_property
M.build_unload         = MasterControl.do_not_build_unload
M.append_path          = MasterControl.append_path
M.color_banner         = MasterControl.color_banner
M.conflict             = MasterControl.conflict
M.depends_on           = MasterControl.fake_load
M.execute              = MasterControl.execute
M.extensions           = MasterControl.quiet
M.family               = MasterControl.family
M.help                 = MasterControl.quiet
M.inherit              = MasterControl.inherit
M.load                 = MasterControl.fake_load
M.load_any             = MasterControl.fake_load
M.load_usr             = MasterControl.fake_load
M.message              = MasterControl.message
M.msg_raw              = MasterControl.msg_raw
M.mgrload              = MasterControl.fake_load
M.myFileName           = MasterControl.myFileName
M.myModuleFullName     = MasterControl.myModuleFullName
M.myModuleUsrName      = MasterControl.myModuleUsrName
M.myModuleName         = MasterControl.myModuleName
M.myModuleVersion      = MasterControl.myModuleVersion
M.prepend_path         = MasterControl.prepend_path
M.prereq               = MasterControl.prereq
M.prereq_any           = MasterControl.prereq_any
M.pushenv              = MasterControl.pushenv
M.remove_path          = MasterControl.remove_path
M.remove_property      = MasterControl.remove_property
M.report               = MasterControl.error
M.setenv               = MasterControl.setenv
M.set_alias            = MasterControl.set_alias
M.set_shell_function   = MasterControl.set_shell_function
M.source_sh            = MasterControl.source_sh
M.try_load             = MasterControl.fake_load
M.unload               = MasterControl.fake_load
M.unload_usr           = MasterControl.fake_load
M.unsetenv             = MasterControl.unsetenv
M.unset_alias          = MasterControl.unset_alias
M.unset_shell_function = MasterControl.unset_shell_function
M.usrload              = MasterControl.fake_load
M.whatis               = MasterControl.quiet
M.LmodBreak            = MasterControl.LmodBreak

return M
