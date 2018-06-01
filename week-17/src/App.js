import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import ShoppingList from './components/ShoppingList';

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
        <ShoppingList list={this.state.shoppingList} />
      </div>
    );
  }
}



export default App;
