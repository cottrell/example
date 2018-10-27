Example of hugo and vue

    vueapp/dist/js $ lr
    total 1008
    -rw-r--r--  1 davidcottrell  staff    4765 27 Oct 17:09 app.445b8fb0.js
    -rw-r--r--  1 davidcottrell  staff   80447 27 Oct 17:09 chunk-vendors.869468b2.js
    -rw-r--r--  1 davidcottrell  staff   23868 27 Oct 17:09 app.445b8fb0.js.map
    -rw-r--r--  1 davidcottrell  staff  397528 27 Oct 17:09 chunk-vendors.869468b2.js.map

how to
    a) put ALL dependencies in here (not just the ones used in the site)
    b) include in the Hugo site, for example something like in partials/layouts/head.html

    <script src='{{ .Resources.GetMatch "/app.*.js" }}'></script>

For example:

    cd vueapp
    npm run build # see the build script it copies things into mysite/state/vueapp

    cd ../mysite/static/vueapp/js
    mysite/static/vueapp/js $ grep -i jquery * # no results
    mysite/static/vueapp/js $
