#!/bin/env lua

--
--    vutils - any small programs for debugging and other things.
--    Copyright (C) 2016  Nikolay Shamanovich shm013@yandex.ru
--
--    This program is free software: you can redistribute it and/or modify
--    it under the terms of the GNU General Public License as published by
--    the Free Software Foundation, either version 3 of the License, or
--    (at your option) any later version.
--
--    This program is distributed in the hope that it will be useful,
--    but WITHOUT ANY WARRANTY; without even the implied warranty of
--    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--    GNU General Public License for more details.
--
--    You should have received a copy of the GNU General Public License
--    along with this program.  If not, see <http://www.gnu.org/licenses/>.
--

-- Print all nodes in table 'o'.
function ptable(o)
    for k,v in pairs(o) do print(k, ':', v) end
end

-- Reload module 'm' added with require.
function reload(m)
    package.loaded[m]=nil
    require (m)
end
