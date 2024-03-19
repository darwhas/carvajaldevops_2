## aws vpc networks

Creacion de componentes de red: vpc, subnet,

### Version v1.0.2:

- Ajuste de tags.

### Version v1.0.1:
- Especificación de outputs.

### Version v1.0.0:
- Modulo que implementa una Vpc, 
- Permite la creacion de multiples subnets
- El rango de direcciones para cada subnet es basado en el el digito "bits" que refiere a la cantidad de bits q se van a adicionar al rango de direcciones de la Vpc
- Aplica PPoS sobre la red
- Aplica NSG por cada subnet especificando reglas por cada una.
- Tags requeridos bajo estructura definida
