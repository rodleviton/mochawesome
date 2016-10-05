var chai = require('chai');
var expect = chai.expect;
var request = require('superagent');
require('superagent-proxy')(request);
var proxy = process.env.http_proxy;

describe('API Test Suite', function() {
  describe('Get Posts', function() {
    it('should return a status of 200', function (done) {
      request.get('http://jsonplaceholder.typicode.com/posts')
      // .proxy(proxy)
        .end(function (err, res) {
          expect(res.status).to.equal(200);
          done();
        });
    });

    it('should return a valid payload', function (done) {
      request.get('http://jsonplaceholder.typicode.com/posts')
      // .proxy(proxy)
        .end(function (err, res) {
          expect(res).to.exist;
          done();
        });
    });
  });

  describe('Get User', function() {
    it('should return a status of 200', function (done) {
      request.get('http://jsonplaceholder.typicode.com/posts?userId=1')
      // .proxy(proxy)
        .end(function (err, res) {
          expect(res).to.exist;
          expect(res.status).to.equal(200);
          console.log(res);
          done();
        });
    });

    it('should return a valid payload', function (done) {
      request.get('http://jsonplaceholder.typicode.com/posts?userId=1')
      // .proxy(proxy)
        .end(function (err, res) {
          expect(res).to.exist;
          done();
        });
    });
  });
});