# example-httparty

Example of using HttParty for API testing.

I got the https://jsonplaceholder.typicode.com API and developed the `/posts` endpoint automation by testing the verbs/calls and the contract.

# Preconditions:

- Ruby installed.

# Execute the project

- Clone project:

```
git clone https://github.com/marciovrl/example-httparty.git
```

- Install dependencies:

```
bundle install
```

- Run all test suite:

```
cucumber -t ~@notRun
```

- Run tests by tag:

```
cucumber -t @<TAG> -t ~@notRun
```
