# Bugs

## Wrong pydantic alias name 

### 14 line of app.core.confing.py:

```DATABSE_URL -> DATABASE_URL```

## Miss item.city NoneType checking

### 44 line of app.services.parser.py:

```city_name=item.city.name.strip() -> city_name=item.city.name.strip() if item.city is not None else None```
