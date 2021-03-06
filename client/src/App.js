
import React, { Component } from 'react';
import styled from "styled-components";
import { BrowserRouter as Router, Route, Link, Switch } from 'react-router-dom';
import Homepage from './components/Homepage';
import OwnersList from './components/OwnersList';
import Owner from './components/Owner';
import './App.css';

class App extends Component {
  render() {
    return (
      <div>
        <Router>
          <div>
            <Switch>
              <Route exact path="/" component={Homepage} />
              <Route exact path="/owners" component={OwnersList} />
              <Route exact path="/owners/:ownerId" component={Owner} />
              
            </Switch>
          </div>
        </Router>
      </div>
    );
  }
}

export default App;