import React, { Component } from 'react';

// ---> { name: 'Poptarts', quantity: 2, unit: 'boxes' }


class ShoppingItem extends Component {
  render() {
    const item = this.props.item;

    return (
      <li className='shopping-item'>
        <h1>{item.name}</h1>
        <h3>{item.quantity} {item.unit}</h3>
      </li>
    );
  }
}

export default ShoppingItem;
