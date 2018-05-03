# password-generator

## Usage

```
./generate [-n num_of_pass] [-m min_pass_len] [-x max_pass_len]
```

- `-n` the number of password you want to generate
  - If not given, default is 10
- `-m` the minimum length of password
  - If not given, default is 10
- `-x` the maximum length of password
  - If not given, default is 12

## Example

```
./generate.sh
gvvQfxalH5
sZ38F9Gzo7Rd
rQAM3IoGZtg
l9lhqq5zii
LmvUIMqiG4T
pLB7jXDBLlRX
Ojp5SzOVxTM
igEJdntF3Z
dRZyENpetJ
vrU88RCzI0P
```

```
./generate.sh -n 5
OZKBQg2iSKi
PBFbLYsPv3IF
x4IjAu8HhaYO
LByVKbqUCW
1FWI3EAwLeT
```

```
./generate.sh -n 3 -m 1 -x 10
A
HZQkwKeyh
6MeVYd
```



