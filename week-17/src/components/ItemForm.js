import React, { Component } from 'react';

class ItemForm extends Component {
  constructor(props) {
    super(props);

    this.state = {
      name: props.item.name,
      quantity: props.item.quantity,
      unit: props.item.unit,
    };
  }

  render() {
    return (
      <form className='item-form' onSubmit={this.onSubmit} >
        <input type='text' value={this.state.name} onChange={this.onNameChange} />
        <input type='text' value={this.state.quantity} onChange={this.onQuantityChange} />
        <input type='text' value={this.state.unit} onChange={this.onUnitChange} />
        <input type='submit' value='Update Item' />
      </form>
    );
  }

  onSubmit = (event) => {
    event.preventDefault();

    this.props.updateCallback(this.state, this.props.index);
  }

  onNameChange = (event) => {
    const name = event.target.value;
    this.setState({
      name: name
    });
  }

  onQuantityChange = (event) => {
    const quantity = event.target.value;
    this.setState({
      quantity: quantity
    });
  }

  onUnitChange = (event) => {
    const unit = event.target.value;
    this.setState({
      unit: unit
    });
  }
}

export default ItemForm;
