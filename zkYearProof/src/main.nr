use dep::std;

fn main(year: u32, guess_year: Field, yearHash: pub Field) {
    assert(year == guess_year as u32);

    // Check integrity of year hash
    let computed_hash = std::hash::pedersen_commitment([guess_year]);
    assert(computed_hash.x == yearHash);
}

#[test]
fn test_main() {
    let year_hash = std::hash::pedersen_commitment([2022]);
    std::println(year_hash);
    main(2022, 2022, year_hash.x);
}

