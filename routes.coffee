Router.route '/', ->
  this.render('home')

Router.route '/create-blog',
  name: 'create-blog'
  template: 'createBlog'
