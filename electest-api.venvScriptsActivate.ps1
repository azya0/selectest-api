[33mcommit bfab3437590906d53aec73c7fa29c39e8177fae3[m[33m ([m[1;36mHEAD[m[33m -> [m[1;32mmain[m[33m)[m
Author: azya0 <azyadr@yandex.ru>
Date:   Fri Feb 20 22:43:15 2026 +0200

    fix(select-api): remove container_name
    
    It's not a problem. Dockernetwork works fine without it

[33mcommit cfc2978d4673019aa19af3cb7d8d0f29b49daabb[m
Author: azya0 <azyadr@yandex.ru>
Date:   Thu Feb 19 18:31:23 2026 +0200

    fix(select-api): fix update_vacancy endpoint
    
    Fix REST method and Vacancy with  same xternal_id checking

[33mcommit 313921a89ba809d45e80dc5ee2d550fbd632e7b7[m
Author: azya0 <azyadr@yandex.ru>
Date:   Thu Feb 19 17:54:30 2026 +0200

    fix(select-api): change error return to raise
    
    Fix returning of response to raising HTTPException

[33mcommit 721fa96869e3e7f79ab05c99fe1150af2cd781d2[m
Author: azya0 <azyadr@yandex.ru>
Date:   Thu Feb 19 17:51:32 2026 +0200

    fix(select-api): fix wrong status code
    
    Change status code from 200 to 409 in error handling

[33mcommit 5f40a8abdf778b091f40aa9cb3701102cf57c9e5[m
Author: azya0 <azyadr@yandex.ru>
Date:   Thu Feb 19 17:34:45 2026 +0200

    debug(select-api): add adminer to debug db

[33mcommit 34ee075f0633478a38d01b2f74a4bbdef5ba7cf6[m
Author: azya0 <azyadr@yandex.ru>
Date:   Thu Feb 19 17:28:03 2026 +0200

    fix(select-api): fix wrong time of parser interval
    
    AsyncIOScheduler add a new parsing job every 5 second instead of 5 minutes

[33mcommit 8aa57c60164c6fa0d21e6e1607d17845aaaa2ebd[m
Author: azya0 <azyadr@yandex.ru>
Date:   Thu Feb 19 17:16:22 2026 +0200

    debug(select-api): add migration container

[33mcommit d57c3f8b5e11017d7ab22bee8062234c4522afd1[m
Author: azya0 <azyadr@yandex.ru>
Date:   Thu Feb 19 17:02:07 2026 +0200

    fix(select-api): add db container a name
    
    Docker hosts requires a containers name for a connection

[33mcommit 920f99592583b5383eb8ac508c652a46bd013b07[m
Author: azya0 <azyadr@yandex.ru>
Date:   Thu Feb 19 17:00:22 2026 +0200

    fix(select-api): fix missing NoneType checking

[33mcommit 1ee0dd5d6d4c667bb876edf72c5cf88386b10717[m
Author: azya0 <azyadr@yandex.ru>
Date:   Thu Feb 19 16:35:05 2026 +0200

    fix(select-api): fix pydantic alias name
    
    Read more in solution.md file

[33mcommit 3501365fcda1583e65223c85bc8ebf3c6f6e04d7[m
Author: azya0 <azyadr@yandex.ru>
Date:   Thu Feb 19 16:28:05 2026 +0200

    base(select-api): base version
