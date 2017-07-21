# rand-hash
A Simplest way of Getting of randomized hash string.

# Scripts 
## SQL on SQLServer
### Prerequisites
- Make a view for generation Random Numbers.
``` SQL
CREATE VIEW VW_RAND(GetRAND)
AS
	SELECT RAND()
GO    
```
