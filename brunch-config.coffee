exports.config = 
  modules:
    wrapper: false
    definition: false
  files:
    stylesheets:
      joinTo: 'css/app.css'
      ignored: /^\_*/
    javascripts:
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': /^(vendor|bower_components)/
    templates:
      joinTo:
        'assets/templates.js': /.+\.jade$/
  plugins:
    jaded:
      staticPatterns: /^app(\/|\\)(.+)\.jade$/
      jade:
        pretty: yes
    autoReload:
      enabled: true
      delay: 200
