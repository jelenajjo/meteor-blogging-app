Meteor.publish "Blogs", ->
  return Blogs.find()

Blogs.allow
  insert: () ->
    return true

  update: () ->
    return true

  remove: () ->
    return true





