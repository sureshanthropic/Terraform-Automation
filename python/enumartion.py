from enum import Enum

class OrderStatus(Enum):
    PENDING = 1
    SHIPPED = 2
    DELIVERED = 3

# Accessing members
print(OrderStatus.SHIPPED)       # OrderStatus.SHIPPED
print(OrderStatus.SHIPPED.name)  # SHIPPED
print(OrderStatus.SHIPPED.value) # 2

# Iteration
for status in OrderStatus:
    print(status.value)
