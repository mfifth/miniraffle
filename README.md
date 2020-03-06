# README

This is a very simple application.
These are the rules that were stated.

---
Create an app that allows people to sign up for a raffle using their email address. They should have to enter their email address, and choose which raffle they would like to enter from a drop-down. The initial choices can be:1. Win a fancy dinner2. Win a kid’s toy3. Win a free bottle of perfume. When they sign up, they should get a message saying “Thanks for signing up! Your odds of winning are <xyz>!”Notes: Please use a git repo to make the app, and make sure all your code is committed when you submit it. A monolithic app is preferred (Use any templating language that you like)Other specifications:1. Don’t allow the same email address to sign up for a given raffle more than once (they can sign up for as many different raffles as they want)2. The list of raffles should be pulled from a db table, and not hardcoded3. When someone signs up, you need to tell them what their actual odds of winning are. So if they’re the first person to sign up, it should say “100%“. If they’re the 2nd person, it should say “50%“, and so on
---


Run rake db:seed
go to localhost:3000
enter a raffle
