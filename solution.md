# Bugs

## Wrong pydantic alias name 

### 14 line of app.core.confing.py:

```DATABSE_URL -> DATABASE_URL```

## Miss item.city NoneType checking

### 44 line of app.services.parser.py:

```city_name=item.city.name.strip() -> city_name=item.city.name.strip() if item.city is not None else None```

## Miss db container_name

### 5 line of docker-compose.yml

Added ```container_name: db```

## Wrong parser call time

### 13 line of app.services.scheduler.py:

```seconds=settings.parse_schedule_minutes, -> seconds=settings.parse_schedule_minutes * 60,```

## Wrong post method statuscode on error handling

### 53 line of app.api.v1.vacancies.py:

```status_code=status.HTTP_200_OK, -> status_code=status.HTTP_409_CONFLICT,```

