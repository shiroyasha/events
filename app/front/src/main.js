import React from 'react';
import ReactDOM from 'react-dom';
import Events from './Events';

document.addEventListener('DOMContentLoaded', function() {
  ReactDOM.render(
    React.createElement(Events),
    document.getElementById('mount')
  );
});
