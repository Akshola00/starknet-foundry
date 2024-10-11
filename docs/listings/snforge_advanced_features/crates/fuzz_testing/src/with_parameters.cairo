fn sum(a: felt252, b: felt252) -> felt252 {
    return a + b;
}

#[cfg(test)]
mod tests {
    use super::sum;

    #[test]
    #[fuzzer(runs: 22, seed: 38)]
    fn test_sum(x: felt252, y: felt252) {
        assert_eq!(sum(x, y), x + y);
    }
}