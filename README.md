# README

# Planning our Application
1. Answer Questions
	- What are we building?
	- Who are we building for?
	- What features do we need to have?
2. User Stories
3. Model our Data
4. Think through the pages we need in our app

##

1. What are we building? We are building a personal site. A place where we blog, share example of our work, and have people contact us.
2. Who are we Building it for ? W are building it for ourselves, but also the community. Sharing what we are learning by blogging is a great way to learn for ourselves, but we teach others in the process. Sow potential employers that we know what we are doing.
3. What features do you want to have?
			-Posts
					- Create /Edit/ Detroy
					- Markdown
					- Sintax highlighting
					- comments
					- Projetas
						- Create /Edit/ Detroy
					- Contact
						- Contact form
						- sendgrid
					- User [DDevise]

## User Stories

	As s blank, I want to be able to blank, so that blank.
			- As a user, I want to be able to create posts so that I can share what I am learning on my blog.
			- As a user a want to able to edit and destroy posts so I can manage my blog.
				- As a user, I want to be able to write posts in markdown format so that it's easy for me to be able to highlight the various syntax of code blocks that I share on my blog.
				- As a user, I want to show the visitors and potential employers example of my work, or stuff I've built.
				- As a user, I want to be able to have visitors contact me through a form on my site.
				- As a user, I want visitors to be able to leave comments.


	## Modeling our Data

		--Post--
				title:string
				content:string
		--Project--
				title:string
				Description:text
				Link: string
		--User--


## Think through the pages we need in our app

		- Home
		- Posts
		- Posts#show
		- Project#show
		- Contact
