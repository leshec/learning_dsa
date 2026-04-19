1. The "Examples" Folder (Most Professional)

Rust has a built-in convention for this. If you create a folder named examples/ in your project root (next to src/), any .rs file you put in there becomes a standalone executable.

    File Path: your_project/examples/binary_search_notes.rs

    How to run it: cargo run --example binary_search_notes -- <input>

This is the idiomatic way to store "how-to" code or reference implementations for your future self.
2. The "Bins" Approach

If you want to keep multiple "main" files in the src/ directory, you can create a src/bin/ folder. Every file inside src/bin/ will be treated as its own separate program.

    File Path: src/bin/notes.rs

    How to run it: cargo run --bin notes -- <input>
