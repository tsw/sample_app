module UsersHelper

	# returns the gravatar for a given user
	def gravatar_for(user)
		# pass in lowercase email since MD5 is based on lowercase
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		gravatar_url = "https//secure.gravatar.com/avatar/#{gravatar_id}"
		#return the image image_tag
		image_tag(gravatar_url, alt: user.name, class: "gravatar")
	end
end
