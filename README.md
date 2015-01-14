# Refile Bug

PoC App to show that an uploaded image will make the record invalid all the time.

# Installation

```sh
git clone git@github.com:tbuehlmann/refile-bug.git
cd refile-bug
bin/setup
bin/rails runner "Movie.last.tap { |m| m.valid?; puts m.errors.inspect }"
```

will output

```
# => #<ActiveModel::Errors:0x007f2d48a850d0 @base=#<Movie id: 1, name: "Cat Movie", image_id: "a33b3faabd54839a3bd4acb8630503cb3f92fdbdd1912884b5...", created_at: "2015-01-14 19:05:18", updated_at: "2015-01-14 19:05:18">, @messages={:image=>["has an invalid file format"]}>
```
