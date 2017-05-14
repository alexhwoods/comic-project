# Reactor Comics

This is a project I completed for one of my classes at Georgia Tech. (CS 4365, Intro to Enterprise Computing, with Calton Pu). 

At some point in the near future I'll write about the functionality of this web app on my [website](https://www.alexhwoods.com/).

## The Goal

The goal was to create (on a smaller scale) [Goodreads](https://www.goodreads.com/) for comics. The main challenges involved with this project were data related, since there isn't a nice clean data API to grab comic data from. 

So, the project consisted of mostly web scraping, cleaning the data, designing and filling the database, and then finally writing a (basic) web app in Ruby on Rails that allows the user to interact with the data. 

The web app in itself is not completely done, but it's to a point where continuing the project is now a problem of web development and web design, so I'm putting this project on the back burner, since data science is my real interest.

### Tech Used

I used a large number of tools for this project. 

* [Beautiful Soup](https://pypi.python.org/pypi/beautifulsoup4) - A Python library for web scraping, that is pretty easy to get up and running with.
*  [Postgres](https://www.postgresql.org/) - The relationship database I chose to use. Note that it merges with rails really nicely, and the idea of migrations make changing the schema painless.
* [Ruby on Rails](http://rubyonrails.org/) - A framework to make web applications. I'm not a good web developer, and working with Ruby on Rails was such a good choice (thanks Dean!). 
* [Bootstrap](http://getbootstrap.com/) - A framework for the visual part of the web app. This made writing HTML and CSS so much better. 
* [Python](https://www.python.org/) - Is there a better language to clean data in?
* (There were more, but that covers the meat of the project)


### Further Work

If any of you out there want to work on this (and have good web development skills!!!!) hit me up! I'd love to go farther with this, but I'm not dying to do hours and hours of web development when that's not really the part of Computer Science I enjoy. 

My ultimate goal for this project would be to get the site running and have real users, and then be able to give comic recomendations. In order to get there I'd need a front end web dev partner.

### Installing


There will probably be a nice explanation of the sites functionality on my website  [alexhwoods](https://alexhwoods.com/) soon, and if you're an employer browsing my github, that would be the best use of your time.

But if you're a fellow programmer and are morbidly curious, I'll include some setup instructions. (Feel free to email me, don't waste to much time on step 3). 


1. Install the dependencies (they're listed below). 

2. You'll need to make a the database and create the username in postgres, and then edit the 3 blocks (here is the development one) in database.yml

```bash
development:
  adapter: postgresql
  encoding: utf8
  database: your_db
  host: 127.0.0.1
  pool: 5
  database: nightwing
  username: comicsruby
  password: JacketIPA59     # yes, I enjoy craft beer and have school pride
```

3. Seed the db. There is a [ruby command](http://www.xyzpub.com/en/ruby-on-rails/3.2/seed_rb.html) for this. Uncomment the code in db/seeds.rb, then run that command.
Note - if you want the images to show, you'll have to use the string parsing in comics_controllers.rb from one of the older commits. My local database has been getting cleaner and cleaner ever since I got the hang of connecting to Postgres through Python, so there are some inconsistencies in the earlier seed data, that have since been weeded out. 

4. Run the server.
```bash
$ rails s
```



#### Dependencies

| Name | How to install | Version I used |
| ------ | ------ | ----- |
| Ruby on Rails | [Getting Started with Ruby on Rails](http://guides.rubyonrails.org/getting_started.html) | ruby-2.3.1@rails5.0|
| PostgreSQL | [Download](https://www.postgresql.org/download/) | 9.6.1 |
