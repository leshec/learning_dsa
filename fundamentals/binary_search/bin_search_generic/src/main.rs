//call from the command line with:
//'cargo run -- 10'
//'cargo run -- c'
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

fn main() {
    let needle = std::env::args().nth(1).expect("No argument provided");

    let num_arr = [-10, -5, -2, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100];
    let char_arr = ['a', 'b', 'c', 'd', 'e'];

    match needle.as_str() {
        s if s.parse::<i32>().is_ok() => {
            let target: i32 = s.parse().unwrap();
            match binary_search(&num_arr, target) {
                Some(x) => println!("Found number at index: {}", x),
                None => println!("Number {} not found", target),
            }
            println!("For reference: Array {:?} \n Target {:?}", num_arr, target);
        }

        s if s.len() == 1 && s.chars().next().unwrap().is_alphabetic() => {
            let letter = s.chars().next().unwrap();
            match binary_search(&char_arr, letter) {
                Some(x) => println!("Found letter at index: {}", x),
                None => println!("Letter '{}' not found", letter),
            }
            println!(
                "For reference: Array {:?} \n Target {:?}",
                &char_arr, letter
            );
        }
        _ => println!("Invalid or mixed input"),
    }
}
