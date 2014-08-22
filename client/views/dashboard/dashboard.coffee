Meteor.subscribe "Blogs"

Template.dashboard.helpers
	blogs: ()->
		return Blogs.find()

Template.dashboard.events
	"submit #create-blog-form": (e)->
		e.preventDefault()
		blogTitle = $('#create-blog-input').val()
		console.log "this is client"
		Meteor.call "createBlog", blogTitle


		