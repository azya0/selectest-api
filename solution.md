# Bugs

## Wrong pydantic alias name 

### 14 line of app.core.confing.py:

```DATABSE_URL -> DATABASE_URL```

## Miss item.city NoneType checking

### 44 line of app.services.parser.py:

```city_name=item.city.name.strip() -> city_name=item.city.name.strip() if item.city is not None else None```

## Wrong parser call time

### 13 line of app.services.scheduler.py:

```seconds=settings.parse_schedule_minutes, -> seconds=settings.parse_schedule_minutes * 60,```

## Wrong post method statuscode on error handling

### 53 line of app.api.v1.vacancies.py:

```status_code=status.HTTP_200_OK, -> status_code=status.HTTP_409_CONFLICT,```

## Wrong REST method is used for update_vacancy_endpoint

### 56 line of app.api.v1.vacancies.py:

```@router.put -> @router.patch```

## Fix "update" rest method for external_id (???)

### 67-71 line of app.api.v1.vacancies.py:

Added 

```
if payload.external_id is not None:
    vacancy_by_external_id = await get_vacancy_by_external_id(session, payload.external_id)

    if vacancy_by_external_id is not None and vacancy_by_external_id.id != vacancy.id:
        raise HTTPException(status.HTTP_409_CONFLICT, detail="Vacancy with external_id already exists")
```

## Fix wrong function typehint (???):

```
async def get_session() -> AsyncSession:
    async with async_session_maker() as session:
        yield session
```

This function isn't returning AsyncSession. It's AsyncGenerator

Changed to:

```
async def get_session() -> AsyncGenerator[AsyncSession, None]:
    async with async_session_maker() as session:
        yield session
```
