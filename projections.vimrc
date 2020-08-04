let g:projectionist_heuristics = {
      \   ".git/": {
      \     "bitbucket-pipelines.yml": {"type": "pipeline"}
      \   },
      \   "package.json": {
      \     "package.json": {"type": "package"}
      \   },
      \   "nuxt.config.js": {
      \     "components/*.vue": {"type": "component"},
      \     "layouts/*.vue": {"type": "layout"},
      \     "pages/*.vue": {"type": "page"},
      \     "store/*.ts": {"type": "store"},
      \     "test/*.spec.js": {"type": "test"}
      \   },
      \   "vue.config.js": {
      \     "src/*.vue": {"type": "vue"},
      \     "tests/*.spec.ts": {"type": "test"},
      \     "src/components/*.vue": {
      \       "type": "component",
      \       "alternate": "tests/unit/{basename}.ts"
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
      \     "tests/e2e/specs/*.js": {"type": "integration"}
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
      \   }
      \}


