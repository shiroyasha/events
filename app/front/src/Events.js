import React from 'react';
import axios from 'axios';

class Event extends React.Component {
  render() {
    return (
      <li>{ this.props.id } - { this.props.name }</li>
    );
  }
}

class Events extends React.Component {

  constructor() {
    super();

    this.state = { events: [] }

    this.fetch();
  }

  render() {
    return (
      <div>
        <h1>Events</h1>

        { this.events() }
      </div>
    );
  }

  events() {
    return this.state.events.map((e) => {
      return (
        <Event key={ e.id } id={ e.id } name={ e.description.event } />
      );
    })
  }

  fetch() {
    axios.get('/api/events')
    .then((response) => {
      console.log(response.data);
      this.setState({ events: response.data });
    })
    .catch(function (error) { console.log(error); });
  }
}

export default Events;
