# Ruby - Social Network

EN: Building a Social Network using Bootstrap 5 with Ruby on Rails 6 in MVC pattern.

EN: This repository is part of the [Curso Ruby on Rails](https://web.dio.me/home) on Digital Innovation One. Professor Luciano Cesar Cordeiro.
<br/><br/>

<h3>👨‍💻 Technologies Used</h3>

<table>
  <tr>
    <td>Ruby version</td>
    <td>
      3.0.2
    </td>
    <td>
      https://guides.rubyonrails.org/getting_started.html
    </td>
  </tr>
  <tr>
    <td>Rails version</td>
    <td>
      6.1.4.1
    </td>
    <td>
      https://guides.rubyonrails.org/getting_started.html
    </td>
  </tr>
  <tr>
    <td>Database</td>
    <td> PostgreSQL - Gem 1.1</td>
    <td>
      https://www.postgresql.org/docs/
    </td>
  </tr>
    <tr>
    <td>Bootstrap</td>
    <td>
      5
    </td>
    <td>
      https://getbootstrap.com/docs/5.1/getting-started/introduction/
    </td>
  </tr>
</table>
<br/><br/>

## Initial settings to run the project

```bash
# clone the project
git clone https://github.com/derikbf/ruby-social-network.git

# enter the cloned directory
cd ruby-social-network

# install Ruby on Rails dependencies
bundle install

# install Node dependencies
yarn install

# create the development and test databases
rails db:create

# create the tables
rails db:migrate

# create Posts Fakes
rails db:seed

# run the project
rails s
```
<br/><br/>
Open the browser at the address `http://localhost:3000`

Open the browser at the address [https://dio-ruby-social-network.herokuapp.com/](https://ruby-blog.herokuapp.com)

<!--Banner session-->
<p align="center">
  <img src="./app/assets/images/banner-dio.png" alt="DIO" title="Digital Innovation One">
</p>

<!--About session-->
<h1 align="center">Ruby on Rails: Building a social network<br>Digital Innovation One</h1>

# Developed features:
- Like and enjoy posts
- Create comments
- Follow and stop following other users
- Create comments
<br/><br/>

<!-- GIF -->
<p align="center"><img src="./app/assets/images/social-network.gif" title="Ruby - Social Network"></p>
