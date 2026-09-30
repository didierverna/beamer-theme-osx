-- build.lua --- l3build configuration

-- Copyright (C) 2026 Didier Verna

-- Author: Didier Verna <didier@didierverna.net>

-- This file is part of Beamer Theme OSX.

-- Beamer Theme OSX may be distributed and/or modified under the conditions of
-- the LaTeX Project Public License, either version 1.3c of this license or
-- (at your option) any later version. The latest version of this license is
-- in http://www.latex-project.org/lppl.txt and version 1.3c or later is part
-- of all distributions of LaTeX version 2008 or later.

-- Beamer Theme OSX consists of the files listed in the file `MANIFEST.md'.


-- Commentary:


-- Code:

module   = "beamer-theme-osx"
ctanpkg  = "beamer-theme-osx"

sourcefiles  = {"*.dtx", "*.ins", "img/*.png", "img/*.jpg"}
demofiles    = {"demo/*.tex", "demo/*.png"}
installfiles = {"*.sty", "*.png", "*.jpg"}

-- Usage: l3build tag vX.Y [--date YYYY/MM/DD]
function update_tag (file, content, tagname, tagdate)
   local date = string.gsub (tagdate, "-", "/")
   content = string.gsub (content, "%d%d%d%d/%d%d/%d%d v%d[%w%.%-]*",
			  date .. " " .. tagname)
   return content
end

uploadconfig = {
   pkg = "Beamer Theme OSX",
   version = "v1.0",
   author = "Didier Verna",
   uploader = "Didier Verna",
   license = "lppl1.3c",
   summary = "A MacOS X 10.5 (Leopard) look for your slides.",
   ctanPath = "/macros/latex/contrib/beamer-theme-osx",

   home = "https://www.didierverna.net/projects/doceng/beamer-theme-osx/",
   repository = "https://github.com/didierverna/beamer-theme-osx",
   topic = {"Presentation", "Beamer", "Theme"},
   note = "Uploaded via l3build.",
}
