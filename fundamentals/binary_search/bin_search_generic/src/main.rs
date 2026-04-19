use std::error::Error;

fn binary_search<T: PartialOrd>(arr: &[T], target: T) -> Option<usize> {
    if arr.is_empty() {
        return None;
    }
    recursive_helper(arr, target, 0, arr.len() - 1)
}

fn recursive_helper<T: PartialOrd>(arr: &[T], target: T, l: usize, r: usize) -> Option<usize> {
    if l > r {
        return None;
    }

    let m = l + (r - l) / 2;

    if arr[m] == target {
        Some(m)
    } else if arr[m] < target {
        recursive_helper(arr, target, m + 1, r)
    } else {
        if m == 0 {
            return None;
        }
        recursive_helper(arr, target, l, m - 1)
    }
}

fn main() -> Result<(), Box<dyn Error>> {
    let args: Vec<String> = std::env::args().collect();

    if args.len() < 2 {
        return Err("No argument provided. \n 'cargo run -- d or cargo run -- -5'".into());
    }

    let needle = &args[1];
    let letters = ['a', 'b', 'c', 'd', 'e', 'f', 'g'];
    let nums = [-10, -5, -2, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100];

    let report = |res: Option<usize>, target: &dyn std::fmt::Debug| match res {
        Some(x) => println!("The answer is: {}", x),
        None => println!("Element {:?} was not found", target),
    };

    match needle.as_str() {
        s if s.parse::<i32>().is_ok() => {
            let target: i32 = s.parse().unwrap();
            let index = binary_search(&nums, target);
            report(index, &target);
            println!("Ref: {:?} | Needle: {}", nums, target);
        }

        s if s.len() == 1 && s.chars().next().unwrap().is_alphabetic() => {
            let letter = s.chars().next().unwrap();
            let index = binary_search(&letters, letter);
            report(index, &letter);
            println!("Ref: {:?} | Needle: {}", letters, letter);
        }

        _ => println!("Invalid or mixed input"),
    }
    Ok(())
}
