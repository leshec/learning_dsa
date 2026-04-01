//questions:
//best number type to store the info e.g. u64, check size. u32 breaks on input "12345".
//Input "1234567890" breaks for u64.
//unisigned for this case, must be large enough to meet bound
//write non-idiomatic port of Ruby and then transform
//
//Do i need floor division on / 10

fn main() {
    let result = duplicate_digits(1234567890);

    println!("The result is: {}", result);
}

fn duplicate_digits(n: u64) -> u64 {
    //insert checks e.g size
    //if length 1, then return early etc
    let mut digit_sum: u64 = 0;
    let mut mult: u64 = 1;
    let mut n: u64 = n;

    while n > 0 {
        //point where may get too big
        digit_sum += ((n % 10) * mult) + ((n % 10) * mult * 10);
        mult *= 100;
        n = n / 10;
    }
    return digit_sum;
}
