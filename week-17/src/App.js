import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';

class App extends Component {
  constructor() {
    super();

    // Our shopping list contains:
    // Poptarts, 2 boxes
    // ---> { name: 'Poptarts', quantity: 2, unit: 'boxes' }
    // Clementines, 1 bag
    // Chocolate Milk, 3 cartons

    this.state = {
      shoppingList: [
        { name: 'Poptarts', quantity: 2, unit: 'boxes' },
        { name: 'Clementines', quantity: 1, unit: 'bag' },
        { name: 'Chocolate Milk', quantity: 3, unit: 'cartons' }
      ]
    };
  }

  render() {
    return (
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <h1 className="App-title">Welcome to React</h1>
        </header>
        <p className="App-intro">
          To get started, edit <code>src/App.js</code> and save to reload.
        </p>
      </div>
    );
  }
}

export default App;
