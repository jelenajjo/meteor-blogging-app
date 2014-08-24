Meteor.subscribe "Blogs"

Template.create-blog.helpers
	blogs: ()->
		return Blogs.find()

Template.create-blog.events
	"submit #create-blog-form": (e)->
		e.preventDefault()
		blogTitle = $('#create-blog-input').val()
		console.log "this is client"
		Meteor.call "createBlog", blogTitle


		