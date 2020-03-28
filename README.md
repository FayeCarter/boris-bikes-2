# Boris Bikes

Project created in Ruby to emulate all the docking stations, bikes, and infrastructure (repair staff, and so on) required to make Santander Cycles.


## User stories

User stories are brief descriptions of a feature told from the perspective of a person who desires that capability

> As a person,  
> So that I can use a bike,  
> I'd like a docking station to release a bike.

> As a person,  
> So that I can use a good bike,  
> I'd like to see if a bike is working

> As a member of the public  
> So I can return bikes I've hired  
> I want to dock my bike at the docking station

> As a member of the public  
> So I can decide whether to use the docking station  
> I want to see a bike that has been docked

> As a maintainer of the system,  
> So that I can control the distribution of bikes,  
> I'd like docking stations not to accept more bikes than their capacity.

> As a system maintainer,  
> So that I can plan the distribution of bikes,  
> I want a docking station to have a default capacity of 20 bikes.

> As a maintainer of the system,
> So that I can manage broken bikes and not disappoint users,
> I'd like vans to take broken bikes from docking stations and deliver them to garages to be fixed.

>As a maintainer of the system,
>So that I can manage broken bikes and not disappoint users,
>I'd like vans to collect working bikes from garages and distribute them to docking stations.


## Domain Model

Objects | Messages
---------|----------
 Person | 
 Member of Public | 
 System Maintainer | 
 DockingStation | release_bike <br> dock_bike <br> @storage (array of stored bikes) <br>
 Bike | working? 

