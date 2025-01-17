/*const app = require('../api.js'); 
const chai = require('chai');
const expect = chai.expect;
const request = require('supertest');

const User = require('../src/database/model/user').User;
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');

describe('User registration', () => {
 
  
    it('should register a new user', (done) => {
      const user = {
        name: 'Foulen',
        email: 'foulen@example.com',
        password: 'password'
      };
  
      request(app)
        .post('/users/user')
        .send(user)
        .end((err, res) => {
          console.log(res.body); 
          console.log(res.status); 
          expect(res.status).to.equal(200);
          
          // Verify that user is saved in the database
          User.findOne({ where: { email: user.email } })
            .then((user) => {
              expect(user).to.not.be.null;
              expect(user.name).to.equal('foulen');
              // Verify that password is hashed
              bcrypt.compare('password', user.password)
                .then((result) => {
                  expect(result).to.be.true;
                  done();
                })
                .catch((err) => done(err));
            })
            .catch((err) => done(err));
        });
    });
  });*/