# Boris Bikes

Week 1 project of Makers Academy. Introduction to TDD creating a simple program using objects and methods.

The project created in Ruby and emulates London's Santander Cycles including docking stations, bikes, and infrastructure (repair staff, and so on).


## User stories

User stories are brief descriptions of a feature told from the perspective of a person who desires that capability

- [ ] User Story 1
```
As a person,  
So that I can use a bike,  
I'd like a docking station to release a bike.
```

- [ ] User Story 2
```
As a person,  
So that I can use a good bike,  
I'd like to see if a bike is workinG
```

- [ ] User Story 3
```
As a member of the public  
So I can return bikes I've hired  
I want to dock my bike at the docking station
```

- [ ] User Story 4
```
As a member of the public  
So I can decide whether to use the docking station  
I want to see a bike that has been docked
```

- [ ] User Story 5
```
As a maintainer of the system,  
So that I can control the distribution of bikes,  
I'd like docking stations not to accept more bikes than their capacity.
```

- [ ] User Story 6
```
As a system maintainer,  
So that I can plan the distribution of bikes,  
I want a docking station to have a default capacity of 20 bikes.
```

- [ ] User Story 7
```
As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like vans to take broken bikes from docking stations and deliver them to garages to be fixed.
```

- [ ] User Story 8
```
As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like vans to collect working bikes from garages and distribute them to docking stations.
```

## Domain Model

Objects | Messages
---------|----------
 Person | 
 Member of Public | 
 System Maintainer | 
 DockingStation | release_bike <br> dock_bike <br> @storage (array of stored bikes) <br>
 Bike | working? 

