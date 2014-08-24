Router.map ->
  @route 'home',
    path: '/'

  @route 'create-blog',
    path: '/create-blog'

  @route 'notFound',
    path: '*'
    where: 'server'
    action: ->
      @response.statusCode = 404
      @response.end Handlebars.templates['404']()
