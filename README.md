<p align="center">
  <a href="http://nestjs.com/" target="blank"><img src="https://nestjs.com/img/logo_text.svg" width="320" alt="Nest Logo" /></a>
</p>
 
<p align="center">
  A progressive <a href="http://nodejs.org" target="blank">Node.js</a> framework for building efficient and scalable server-side applications, heavily inspired by <a href="https://angular.io" target="blank">Angular</a>.
</p>

# Code Challenge Grupo ZAP - Backend

This is the [Backend Code Challenge](https://grupozap.github.io/cultura/challenges/engineering.html) project for the [&copy;Grupo ZAP](https://github.com/grupozap).

[Download](https://github.com/julianomacielferreira/eng-zap-challenge-backend/archive/master.zip) this repository and follow the [installation steps](https://github.com/julianomacielferreira/eng-zap-challenge-backend#installation) to get it up and running.

## Description

**The below description was taken from the [public available link](https://grupozap.github.io/cultura/challenges/engineering.html).**

**A big part of the requirements are already available in the [eng-zap-challenge-frontend](https://github.com/julianomacielferreira/eng-zap-challenge-frontend/blob/master/README.md#description) repository.**

This project was generated with [Nest](https://github.com/nestjs/nest) framework TypeScript starter repository.

## The current business rules are as follows:

- It is only eligible for the **ZAP** portal:
    - When **renting** and at least the amount is $3,500.00.
    - When **selling** and at least the value is $600,000.00.

- It is only eligible for the **Viva Real** portal:
    - When **renting** and at least the amount is $4,000.00.
    - When **selling** and at least the value is $700,000,00.

**Where:**

```js
...
pricingInfos: {
  price: 200000, // Sale value
  rentalTotalPrice: 1200, // Rent Amount
  businessType: "RENTAL|SALE", // defines whether it is rent or sale
}
```

## The challenge

Well, this is where you come in! We need this logic to be abstracted in the best way for the user. The legacy code is there to clear things up, in case you have any doubts. For the rest, it will not be used for anything.

### What will be evaluated?

- Organization
- Maintainability
- Traceability
- Testability
- Performance
- Portability
- Understanding the problem (your interpretation, as well as your understanding of the proposed rules is also part of the test, as we are evaluating how you understand and solve problems)

It must be **PRODUCTION READY**.

# Option B: Make an API (backend)

Put this logic in a backend API, where given the **origin of the portal** in a request your response will be the **list of properties**. The application routing is up to you.

As with the front, **it is mandatory** to work with all data manipulation **in memory**, so you will need to load the _source_ at some point and make an **HTTP request** to one of the urls below to obtain the data. We would like to check your ability to write algorithm, _so it is not allowed to use any type of database_. Using an interface with a query language abstracts a great deal of complexity and makes testing very trivial. Therefore, the use of a database is not allowed, neither with persistence on disk nor with persistence in memory.

The payload of the _response_, in addition to containing the list of properties with the _output_ contract, **must contain** the following pagination and totals metadata, implementing these metadata **is mandatory**:

```js
 {
    pageNumber: int32,
    pageSize: int32,
    totalCount: int32,
    listings: [
      ...
    ]
  }
```

Make this API thinking that it can be consumed by various types of customers and for different purposes - so implement what you find most relevant and that makes sense.

You must use ```source-2``` **or** ```source-2.json``` as source (~10000 records):
- [http://grupozap-code-challenge.s3-website-us-east-1.amazonaws.com/sources/source-2.json](http://grupozap-code-challenge.s3-website-us-east-1.amazonaws.com/sources/source-2.json)
- [http://grupozap-code-challenge.s3-website-us-east-1.amazonaws.com/sources/source-2](http://grupozap-code-challenge.s3-website-us-east-1.amazonaws.com/sources/source-2)

# Business rules you need to implement

The same business rules are already available in the section [Business rules you need to implement](https://github.com/julianomacielferreira/eng-zap-challenge-frontend#business-rules-you-need-to-implement) of the [eng-zap-challenge-frontend](https://github.com/julianomacielferreira/eng-zap-challenge-frontend/blob/master/README.md#description) repository.

## Installation

```bash
$ npm install
```

## Running the app

```bash
# development
$ npm run start

# watch mode
$ npm run start:dev

# production mode
$ npm run start:prod
```

**And then access [http://localhost:3000](http://localhost:3000) on your browser.**

## Test

```bash
# unit tests
$ npm run test

# e2e tests
$ npm run test:e2e

# test coverage
$ npm run test:cov
```

# Running with Docker

You must have [Docker](https://docs.docker.com/install/) and [Docker Compose](https://docs.docker.com/compose/install/) installed.

In the root project folder build the image and fire up the container:

```bash
$ docker-compose up -d --build
```

Open your browser to **http://localhost:4200** and you should see the app. Try making a change to the AppComponent’s template (src/app/app.component.html) within your code editor. You should see the app hot-reload. 

Ensure the app is running in the browser and test hot-reloading again. 

Stop the container before moving on:

```bash
$ docker-compose stop
```

## Support

Nest is an MIT-licensed open source project. It can grow thanks to the sponsors and support by the amazing backers. If you'd like to join them, please [read more here](https://docs.nestjs.com/support).

# References

- Nest: [https://nestjs.com/](https://nestjs.com/)

- TypeScript: [https://www.typescriptlang.org/](https://www.typescriptlang.org/)

- Node.js: [https://nodejs.org/](https://nodejs.org/)

- Axios - Promise based HTTP client for the browser and node.js: https://github.com/axios/axios](https://github.com/axios/axios)

- Code Challenge Grupo ZA: [https://grupozap.github.io/cultura/challenges/engineering.html](https://grupozap.github.io/cultura/challenges/engineering.html)

# License

Please see the [license agreement](https://github.com/julianomacielferreira/eng-zap-challenge-backend/blob/master/LICENSE).
