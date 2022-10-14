**Extension of Manticore
**

**We are building the extension of manticore. Our main goal is to improvise, optimize the part of manticore functionalities. The time complexities to run sol file in order to find the vulnerabilities is going to be our main focus on.**

In order to install manticore tool first you need to follow below procedure.(Installation steps are from official github site of manticore)

> Note: We recommend installing Manticore in a [virtual environment](https://packaging.python.org/guides/installing-using-pip-and-virtual-environments/#installing-virtualenv)
 to prevent conflicts with other projects or packages

Option 1: Installing from PyPI:

```bash
pip install manticore
```

Option 2: Installing from PyPI, with extra dependencies needed to execute native binaries:

```bash
pip install "manticore[native]"
```

Option 3: Installing a nightly development build:

```bash
pip install --pre "manticore[native]"
```

Option 4: Installing from the `master` branch:

```bash
git clone https://github.com/trailofbits/manticore.git
cd manticore
pip install -e ".[native]"
```

Option 5: Install via Docker:

```bash
docker pull trailofbits/manticore
```

Once installed, the `manticore` CLI tool and Python API will be available.

For a development installation, see our [wiki](https://github.com/trailofbits/manticore/wiki/Hacking-on-Manticore).

## Usage

### CLI

Manticore has a command line interface which can perform a basic symbolic analysis of a binary or smart contract. 
Analysis results will be placed into a workspace directory beginning with `mcore_`. For information about the workspace, see the [wiki](https://github.com/trailofbits/manticore/wiki/What's-in-the-workspace%3F).

#### EVM
Manticore CLI automatically detects you are trying to test a contract if (for ex.)
 the contract has a `.sol` or a `.vy` extension. See a [demo](https://asciinema.org/a/154012).
<details>
  <summary>Click to expand:</summary>
  
```bash
$ manticore examples/evm/umd_example.sol 
