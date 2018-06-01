import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import ShoppingList from './components/ShoppingList';
import ItemForm from './components/ItemForm';

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
      ],
      selectedItem: null
    };
  }

  render() {
    let form = '';
    if (this.state.selectedItem !== null) {
      const item = this.state.shoppingList[this.state.selectedItem];

      form = <ItemForm
                item={item}
                index={this.state.selectedItem}
                updateCallback={this.onItemUpdate}
             />;
    }

    return (
      <div className="App">
        <ShoppingList list={this.state.shoppingList} selectCallback={this.onItemSelect} />
        {form}
      </div>
    );
  }

  onItemUpdate = (item, index) => {
    let shoppingList = this.state.shoppingList;

    shoppingList[index] = item;

    this.setState({
      shoppingList: shoppingList
    });
  }

  onItemSelect = (index) => {
    this.setState({
      selectedItem: index
    });
  }
}



export default App;
