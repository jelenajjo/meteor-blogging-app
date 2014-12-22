hostile = Meteor.npmRequire 'hostile'

Meteor.methods
	createBlog: (blogTitle)->
		Blogs.insert
			title: blogTitle
			createdAt: new Date()
		console.log "am here"


		hostile.set "127.0.0.1", "#{blogTitle}.localhost", (err) ->
		  
		  if err
		  	console.error err
		  else
		  	console.log 'success'
