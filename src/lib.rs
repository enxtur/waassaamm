use wasm_bindgen::prelude::wasm_bindgen;

#[wasm_bindgen]
extern {
    pub fn alert(s: &str);
}

#[wasm_bindgen]
pub fn greet(name: &str) {
    alert(&format!("Hello, {}!", name));
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn it_works() {
        greet("world");
    }
}
