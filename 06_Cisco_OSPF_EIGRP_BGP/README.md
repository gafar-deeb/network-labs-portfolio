# Cisco Routing – OSPF, EIGRP Interconnection via BGP

## Lab Objective
Design and implement interconnection between two independent routing domains using different IGPs (OSPF and EIGRP), with BGP used as the inter-domain routing protocol.

## Environment
- Cisco routers
- One routing domain running OSPF
- One routing domain running EIGRP
- BGP used for routing exchange between the two domains

## Topology Overview
- OSPF domain operating as one autonomous system
- EIGRP domain operating as a separate autonomous system
- Edge routers running BGP to exchange routes between domains

## Configuration Summary
- OSPF configured within AS 65001
- EIGRP configured within AS 65002
- BGP peering established between edge routers
- Route redistribution between IGPs and BGP
- Loop prevention and routing control applied

## Design Considerations
- Clear separation between IGP and EGP roles
- Controlled redistribution to avoid routing loops
- BGP used strictly as inter-domain protocol

## Result
Successful end-to-end connectivity achieved between OSPF and EIGRP networks via BGP, with stable routing tables and predictable path selection.

## Notes
This lab simulates a real-world multi-AS environment commonly found in ISP and enterprise edge designs.
