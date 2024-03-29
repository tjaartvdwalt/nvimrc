return {
  {"tpope/vim-projectionist", 
  config = function()
vim.cmd([[
let g:projectionist_heuristics = {
      \   ".github/workflows/*.yml": {
      \     ".github/workflows/*.yml": {"type": "github-workflow"}
      \   },
      \   ".github/actions/*.yml": {
      \     ".github/actions/*.yml": {"type": "github-action"}
      \   },
      \   "bitbucket-pipelines.yml": {
      \     "bitbucket-pipelines.yml": {"type": "pipeline"}
      \   },
      \   ".gitignore": {
      \     ".gitignore": {"type": "gitignore"}
      \   },
      \   "package.json": {
      \     "package.json": {"type": "package"}
      \   },
      \   "nuxt.config.ts": {
      \     "components/*.vue": {
      \       "type": "component",
      \        "alternate": "tests/components/{dirname}/{basename}.test.ts"
      \     },
      \     "layouts/*.vue": {
      \       "type": "layout",
      \        "alternate": "tests/layouts/{dirname}/{basename}.test.ts"
      \     },
      \     "pages/*.vue": {
      \       "type": "page",
      \        "alternate": "tests/pages/{dirname}/{basename}.test.ts"
      \     },
      \     "store/*.ts": {
      \       "type": "store",
      \        "alternate": "tests/store/{dirname}/{basename}.test.ts"
      \     },
      \     "server/*.ts": {
      \        "type": "server", 
      \        "alternate": "tests/server/{dirname}/{basename}.test.ts"
      \     },
      \     "tests/*.test.ts": {
      \       "type": "test",
      \       "alternate": "{}.ts"
      \     }
      \   },
      \   "vue.config.js": {
      \     "src/*.vue": {"type": "source"},
      \     "src/*.ts": {"type": "source"},
      \     "src/*.js": {"type": "source"},
      \     "tests/*.spec.ts": {"type": "test"},
      \     "tests/*.spec.js": {"type": "test"},
      \     "src/components/*.vue": {
      \       "type": "component",
      \       "alternate": "tests/*/{basename}.spec.ts"
      \      },
      \     "src/views/*.vue": {"type": "view"},
      \     "src/store/modules/*.ts": {
      \       "type": "store",
      \       "alternate":"tests/unit/store/modules/{basename}.spec.ts"
      \     },
      \     "src/types/*.ts": {"type": "type"},
      \     "src/router/*.ts": {"type": "route"},
      \     "tests/unit/*.spec.ts": {
      \       "type": "unit",
      \       "alternate":"src/{dirname}/{basename}.ts"
      \     },
      \   },
      \   "sfdx-project.json": {
      \     "force-app/main/default/lwc/*.html": {
      \       "type": "html",
      \       "alternate": "force-app/main/default/lwc/{dirname}/{basename}.js"
      \     },
      \     "force-app/main/default/lwc/*.js": {
      \       "type": "js",
      \       "alternate": "force-app/main/default/lwc/{dirname}/{basename}.html"
      \     },
      \     "force-app/main/default/lwc/*.css": {
      \       "type": "css",
      \       "alternate": "force-app/main/default/lwc/{dirname}/{basename}.html"
      \     },
      \     "force-app/main/default/classes/*.cls": {
      \       "type": "apex",
      \       "alternate": "force-app/main/default/classes/Test_{}.cls"
      \     },
      \     "force-app/main/default/classes/Test_*.cls": {
      \       "type": "apexTest",
      \       "alternate": "force-app/main/default/classes/{}.cls"
      \     },
      \     "force-app/main/default/triggers/*.trigger": {
      \       "type": "trigger"
      \     },
      \     "force-app/main/default/*": {"dispatch": "sfdx force:source:deploy -u WestmontSandbox --sourcepath force-app/main/default/{dirname}"}
      \   },
      \   "setup.py": {
      \     "*.py": {"type": "source",
      \       "alternate": "tests/*/test_{basename}.py"
      \      },
      \     "tests/*.py": {"type": "source",
      \       "alternate": "tests/*/test_{basename}.py"
      \      },
      \   }
      \}
]])
end
}
}
