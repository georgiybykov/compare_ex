compare_ex
======

[![RuboCop](https://github.com/georgiybykov/compare_ex/actions/workflows/rubocop.yml/badge.svg)](https://github.com/georgiybykov/compare_ex/actions)

You can search for a number in an array and a set and compare the runtime benchmark results.

---

#### Fetch the project and execute the code:

```bash
$ git clone git@github.com:georgiybykov/compare_ex.git
$ cd compare_ex

# Install dependencies:
$ bundle install
```

#### Run linter:
```bash
$ bundle exec rubocop
```

---

### **Examples:**

```bash
$ ruby main.rb 3 100000

Time to find inside an array: 0.00038289000804070383
Time to find inside a set: 3.868000931106508e-06
The search was faster in: Set
****************************************************************
Time to find inside an array: 0.00033888900361489505
Time to find inside a set: 2.6040070224553347e-06
The search was faster in: Set
****************************************************************
Time to find inside an array: 8.118004188872874e-06
Time to find inside a set: 1.2959935702383518e-06
The search was faster in: Set
****************************************************************
```
 
You should pass an argument values from command line to execute Ruby script, i.e. from above:
- `3` - is a number of runs;
- `100000` - is an upper border range limit for an array or set values.
___
