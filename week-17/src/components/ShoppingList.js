import React, { Component } from 'react';
import ShoppingItem from './ShoppingItem';

class ShoppingList extends React.Component {
  render() {
    const list = this.props.list;
    const items = list.map((item) => {
      return <ShoppingItem item={item} />
    });


    return (
      <ul className="shopping-list">
        {items}
      </ul>
    );
  }
}

export default ShoppingList;
