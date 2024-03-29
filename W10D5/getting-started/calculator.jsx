import React from "react";

class Calculator extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
        num1: "",
        num2: "",
        result: 0
    }
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.add = this.add.bind(this);
    this.subtract = this.subtract.bind(this);
    this.multiply = this.multiply.bind(this);
    this.divide = this.divide.bind(this);
    this.clear = this.clear.bind(this);
  }

  setNum1(e) {
    let num1 = e.target.value ? parseInt(e.target.value) : ""
    this.setState({num1})
  }
  setNum2(e) {
    let num2 = e.target.value ? parseInt(e.target.value) : ""
    this.setState({num2})
  }
  add (e) {
    e.preventDefault()
    let result = this.state.num1 + this.state.num2
    this.setState({result})
  }
  subtract (e) {
    e.preventDefault()
    let result = this.state.num1 - this.state.num2
    this.setState({result})
  }

  multiply (e) {
    e.preventDefault()
    let result = this.state.num1 * this.state.num2
    this.setState({result})
  }
  divide (e) {
    e.preventDefault()
    let result = this.state.num1 / this.state.num2
    this.setState({result})
  }

  clear(e){
    e.preventDefault()
    let result = 0
    this.setState({result: result, num1: "", num2: ""})
  }

  // your code here

  render() {
    const {num1, num2, result} = this.state
    return (
        <div>
      <div>
        <h1>{result}</h1> 
      </div>
      <div>
        <input type="text" value={num1} onChange={this.setNum1}/>
      </div>
      <div>
        <input type="text" value={num2} onChange={this.setNum2}/>
      </div>
      <button onClick={this.add}>+</button>
      <button onClick={this.subtract}>-</button>
      <button onClick={this.multiply}>*</button>
      <button onClick={this.divide}>/</button>
      <button onClick={this.clear}>Clear</button>
      </div>
    );
  }
}


export default Calculator;