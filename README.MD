## Install env
- NodeJS >= 16
## Install lib
```
npm install
```
## Add fn `clean` to Smartcontract
```rust
use near_sdk::json_types::Base64VecU8;
#[near_bindgen]
impl Contract {
    #[private]
    #[init(ignore_state)]
    pub fn clean(keys: Vec<Base64VecU8>) {
        for key in keys.iter() {
            env::storage_remove(&key.0);
        }
    }
}
```
## Run clear state
Change Smartcontract ID in file `remove_state.sh` and run
```
./remove_state.sh
```