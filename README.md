Takeaway
======
Task n.2 of the second week challenge: 
write a takeaway service that can list dishes and place orders. Upon placing the order, the customer receives a text message informing them that the order will be delivered in the next half an hour.
Technologies:
-----------
- Ruby
- Rspec
- Twilio API

How to use
----------
Clone the repository:
```shell
$ git clone https://github.com/elenagarrone/takeaway_task2.git
```
Change into the directory:
```shell
$ cd takeaway_task2
```
Create a tokens.rb file:
```shell
$ touch lib/tokens.rb
```
Sign up for a free Twilio account and populate the tokens.rb file with your Twilio tokens:
```shell
  ACCOUNT_SID = '(your ACCOUNT_SID)'
  AUTH_TOKEN = '(your AUTH_TOKEN)'
```

To test it:
```shell
$ rspec
```

