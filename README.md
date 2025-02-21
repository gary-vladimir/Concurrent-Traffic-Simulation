# CPPND: Program a Concurrent Traffic Simulation

![traffic_simulation](./data/traffic_simulation.gif)

This is the project for the fourth course in the Udacity C++ Nanodegree Program: **Concurrency**.

## Project Overview

This simulation models a **traffic system** with **vehicles, streets, intersections, and traffic lights** using **concurrency and multithreading** in C++. The system ensures that vehicles move through the streets efficiently while obeying traffic light rules.

The project implements:

- **Multi-threaded Traffic Light Control** with `std::thread`
- **Message Queues** for passing signals between components
- **Condition Variables & Mutexes** to avoid race conditions
- **Thread-safe Vehicle Queueing System** for intersections

---

## Dependencies for Running Locally

Ensure you have the following dependencies installed:

- **cmake** >= 2.8
  - Installation: https://cmake.org/install/
- **make** >= 4.1 (Linux/Mac), 3.81 (Windows)
  - Linux: `make` is installed by default
  - Mac: Install Xcode command line tools
  - Windows: Install `make` via GNU: http://gnuwin32.sourceforge.net/packages/make.htm
- **OpenCV** >= 4.1
  - Installation: https://github.com/opencv/opencv/tree/4.1.0
- **gcc/g++** >= 5.4
  - Linux: Installed by default
  - Mac: Installed via Xcode command line tools
  - Windows: Recommended using MinGW: http://www.mingw.org/
- **X11 Server** (For Windows GUI display)
  - Install VcXsrv or Xming

---

## Basic Build Instructions

1. **Clone the Repository**  
   Run the following command in your terminal:  
   `git clone https://github.com/gary-vladimir/Concurrent-Traffic-Simulation`  
   `cd Concurrent-Traffic-Simulation`

2. **Create a Build Directory**  
   `mkdir build && cd build`

3. **Compile the Project**  
   `cmake .. && make`

4. **Run the Simulation**  
   `./traffic_simulation`

---

## Running with Docker (Optional)

If you prefer an isolated environment, you can run the simulation using **Docker**.

Running a GUI application inside a Docker Linux container on Windows requires an X server on your host system. Install an X Server on Windows. A popular choice is **VcXsrv**. Install and launch it with default settings.

1. Install Docker Desktop and run it.
2. `docker build -t traffic-simulator .`
3. `docker run -it -v "$(pwd -W):/workspace" traffic-simulator`
4. Inside the container run:

```
export DISPLAY=host.docker.internal:0
```

AFTER exporting the DISPLAY variable, compile and run the game: `./traffic_simulation`. Make sure that VcXsrv is running.

## Notes & Troubleshooting

- If you experience issues with OpenCV not displaying correctly inside **Docker**, ensure that you have an **X11 server** running.
- On **Windows**, use `set DISPLAY=host.docker.internal:0` before running the container.
- The **Docker image** includes all dependencies, so you don’t need to install anything manually.

---

## License

This project is licensed under the **MIT License**.

---
