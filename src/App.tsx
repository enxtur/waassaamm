import { useEffect } from 'react';
import logo from './logo.svg';
import './App.css';
import { greet, initSync } from "wasm-test/wasm_test";

const fetchWasm = async () => {
  const response = await fetch("/static/media/wasm_test_bg.ce4b2ed509b574cc7efe.wasm");
  const buffer = await response.arrayBuffer();
  return buffer;
}

function App() {
  useEffect(() => {
    fetchWasm().then(buffer => {
      console.log("buffer", buffer);
      initSync(buffer);
    });
  }, []);

  const onClick = () => {
    greet("WebAssembly with npm");
  }

  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.tsx</code> and save to reload.
        </p>
        <button type="button" onClick={onClick}>Click me</button>
      </header>
    </div>
  );
}

export default App;
