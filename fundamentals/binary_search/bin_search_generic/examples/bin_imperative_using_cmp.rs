use std::cmp::Ordering;
use std::error::Error;

/// Performs a binary search on a sorted slice.
/// Returns `Some(index)` if found, `None` otherwise.
///
/// # Constraints
/// The input slice must be sorted in ascending order.
#[must_use]
pub fn binary_search<T: PartialOrd>(arr: &[T], target: T) -> Option<usize> {
    let mut left = 0;
    let mut right = arr.len();

    while left < right {
        let mid = left + (right - left) / 2;

        // Using cmp is more idiomatic than < and >
        match arr[mid].partial_cmp(&target) {
            Some(Ordering::Equal) => return Some(mid),
            Some(Ordering::Less) => left = mid + 1,
            Some(Ordering::Greater) | None => right = mid,
        }
    }
    None
}

fn main() -> Result<(), Box<dyn Error>> {
    let args: Vec<String> = std::env::args().collect();

    // Guard clause for arguments
    let needle = args.get(1).ok_or("Usage: cargo run -- <i32|char>")?;

    let letters = ['a', 'b', 'c', 'd', 'e', 'f', 'g'];
    let nums = [-10, -5, -2, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100];

    // Professional closures use 'move' if they capture variables,
    // and explicit parameter types for clarity.
    let report = |res: Option<usize>, target: &dyn std::fmt::Debug| match res {
        Some(x) => println!("Target {:?} found at index: {}", target, x),
        None => eprintln!("Target {:?} not found", target),
    };

    match needle.as_str() {
        // Try parsing as integer first
        s if s.parse::<i32>().is_ok() => {
            let target = s.parse::<i32>()?;
            report(binary_search(&nums, target), &target);
        }

        // Try treating as a single character
        s if s.len() == 1 && s.chars().next().unwrap().is_alphabetic() => {
            let target = s.chars().next().unwrap();
            report(binary_search(&letters, target), &target);
        }

        _ => return Err("Invalid input: must be an integer or a single letter".into()),
    }

    Ok(())
}
