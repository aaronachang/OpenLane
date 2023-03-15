<h1 align="center">OpenLane</h1>
<p align="center">
    <a href="https://colab.research.google.com/github/chipsalliance/silicon-notebooks/blob/main/digital-inverter-openlane.ipynb"><img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open in Colab"></a>
    <a href="https://opensource.org/licenses/Apache-2.0"><img src="https://img.shields.io/badge/License-Apache%202.0-blue.svg" alt="License: Apache 2.0"/></a>
    <img src="https://github.com/efabless/volare/actions/workflows/ci.yml/badge.svg?branch=main" alt="GitHub Actions Status Badge" />
    <a href="https://openlane.readthedocs.io/"><img src="https://readthedocs.org/projects/openlane/badge/?version=latest" alt="Documentation Build Status Badge"/></a>
    <a href="https://invite.skywater.tools"><img src="https://img.shields.io/badge/Community-Open%20Source%20Silicon%20Slack-ff69b4?logo=slack" alt="Invite to the Open Source Silicon Slack"/></a>
    <a href="https://github.com/psf/black"><img src="https://img.shields.io/badge/python%20code%20style-black-000000.svg" alt="Python Code Style: black"/></a>
</p>

## For EE 541:
Generated files (.sdf, .v) for sims are located in designs/_serializer_/sim

Source files (.v) are located in designs/_serializer_/src

config.json is located in designs/_serializer_

OpenSERDES Serializer design variations:

serializer_unit_cell (original)

serializer_unit_cell_mod (modified)

serializer_unit_cell_16 (16-bit)

Conventional Tree Serializer design variations:

conv_tree_serializer

conv_tree_serializer_16

Low Power Tree Serializer design:

lp_tree_serializer

Simulations are run in the simulation/sim directory.

For each make command, specify TOP=\<serializer_version>, where \<serializer_version> is serdes for OpenSERDES, conv_tree_serializer for the conventional tree, and lp_tree_serializer for the low power tree. 
For pre-synthesis simulations, use TOP=\<serializer_version>.presyn

Make all will run vcs and validate text file output is correct.

Make vcs will run the corresponding testbench module that tests 10 random inputs and outputs a waveform and text file of serializer inputs and outputs. Post-synthesis simulations include sdf annotations. 

Make compare will run check_output.py to check that text file output is correct

Make wave will open the waveform with silicon explorer

Submodule testbenches are in simulation/src/submodule and include files are in simulation/sim/submodule.

Archived top-level testbenches are in simulation/src/archive and their include files are in simulation/sim/archive.

Note that post-apr verification for lp_tree_serializer doesn?t exist because tri-state buffers output Z instead of holding state when disabled. Pre-synthesis verification using latch behavior was determined to be sufficient for our purposes. Materials from our attempts to use hspice to run analog simulations are in simulation/sim/hspice.


##
OpenLane is an automated RTL to GDSII flow based on several components including OpenROAD, Yosys, Magic, Netgen, CVC, SPEF-Extractor, KLayout and a number of custom scripts for design exploration and optimization. The flow performs all ASIC implementation steps from RTL all the way down to GDSII.

You can check out the documentation, including in-depth guides and reference manuals at [ReadTheDocs](https://openlane.readthedocs.io/).

## Quick-start Guide
If you just want to try OpenLane out, try [this Colaboratory](https://colab.research.google.com/github/chipsalliance/silicon-notebooks/blob/main/digital-inverter-openlane.ipynb) by our friends at Google and ChipsAlliance. It's an online Python-based utility, and the best part is, *you don't need to install anything.*

## Installation, the short version
The short version is, to install the OpenLane environment...

> On Windows, install and launch the [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install) before doing anything. We recommend and provide instructions for Ubuntu 20.04.

> On macOS, get [brew](https://brew.sh).

1. [Get Docker](https://docs.docker.com/get-docker/) (or a compatible container engine)
    * On Ubuntu, follow the [Docker post install instructions](https://docs.docker.com/engine/install/linux-postinstall/) after you install Docker.
2. Get Python 3.6 or higher ([macOS](https://formulae.brew.sh/formula/python3) | [Ubuntu](https://packages.ubuntu.com/focal/python3))
    * On Ubuntu, you may also need to install venv: `apt-get install python3-venv`, and pip: `apt-get install python3-pip`.
3. Get git ([macOS](https://formulae.brew.sh/formula/git) | [Ubuntu](https://packages.ubuntu.com/focal/git))
4. Get GNU Make ([macOS](https://formulae.brew.sh/formula/make) | [Ubuntu](https://packages.ubuntu.com/focal/make))


Run the following commands in your command-line prompt:

```sh
cd $HOME
git clone https://github.com/The-OpenROAD-Project/OpenLane
cd OpenLane
make
make test
```

If everything's gone smoothly, that's it. OpenLane is set up on your computer. To enter the OpenLane environment, `cd $HOME/OpenLane` and then `make mount`.

## Installation, the long version
See the installation docs at https://openlane.readthedocs.io/en/latest/getting_started/installation/index.html.

## Usage
After entering the OpenLane environment, you can start hardening chips: the following command, for example, runs the included [spm design](./designs/spm).

```sh
./flow.tcl -design spm
```



## Need more help?
You can join the [Open Source Silicon Slack](https://invite.skywater.tools), where you can ask thousands of other open source hardware enthusiasts for help with setting up or running OpenLane.

## License
[The Apache License, version 2.0](https://www.apache.org/licenses/LICENSE-2.0.txt).

Docker images distributed by Efabless Corporation under the same license.

Binaries in OpenLane distributions may fall under stricter open source licenses.
