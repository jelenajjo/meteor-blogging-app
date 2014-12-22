Meteor.subscribe "Blogs"

Template.createBlog.helpers
	blogs: ()->
		return Blogs.find()

Template.createBlog.events
	"submit #create-blog-form": (e)->
		e.preventDefault()
		blogTitle = $('#create-blog-input').val()
		console.log "this is client"
		Meteor.call "createBlog", blogTitle
