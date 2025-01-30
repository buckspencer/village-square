import logo from './logo.svg';
import './App.css';
import React, { useState, useEffect } from 'react';

function App() {
  let [versions, setVersions] = useState('loading...');

  useEffect(() => {
    fetch('api/versions')
    .then(response => response.json())
    .then(versions => {
      setVersions(Object.entries(versions)
        .map(([name, version]) => `${name}: ${version}`).join(', ')
      )
    });
  });

  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>{ versions }</p>
      </header>
    </div>
  );
}

export default App;
