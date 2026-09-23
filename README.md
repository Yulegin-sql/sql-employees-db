# \# 🗄 База сотрудников (HR Database)

# 

# \### 🎯 Проектирование БД, ER-диаграмма, аналитические запросы

# 

# Спроектировал и реализовал корпоративную базу данных для HR-отдела: сотрудники, отделы, должности, проекты. Написал 7 аналитических запросов — от простых JOIN'ов до оконных функций и сводных отчётов.

# 

# ⭐ \*Ищу стажировку или Junior-позицию в аналитике данных / SQL-разработке\*

# 

# \---

# 

# \## 🛠 Стек проекта

# 

# !\[MySQL](https://img.shields.io/badge/MySQL-8.0-4479A1?style=flat-square\&logo=mysql\&logoColor=white)

# !\[SQL](https://img.shields.io/badge/SQL-Advanced-336791?style=flat-square)

# !\[DBeaver](https://img.shields.io/badge/DBeaver-Client-372B4C?style=flat-square)

# !\[Git](https://img.shields.io/badge/Git-Version\_Control-F05032?style=flat-square\&logo=git\&logoColor=white)

# 

# \---

# 

# \## 📊 ER-диаграмма

# 

# !\[ER-диаграмма](er\_diagram.png)

# 

# \---

# 

# \## 📋 Мои запросы

# 

# | Запрос | Описание | Стек |

# | :--- | :--- | :--- |

# | \[Сотрудники с отделами](queries/1\_employees\_with\_departments.sql) | JOIN трёх таблиц: сотрудник + отдел + должность | SQL |

# | \[Средняя зарплата по отделам](queries/2\_avg\_salary\_by\_dept.sql) | GROUP BY + AVG, COUNT, SUM | SQL |

# | \[Топ-5 высокооплачиваемых](queries/3\_top\_paid\_employees.sql) | Фильтрация активных, ORDER BY, LIMIT | SQL |

# | \[Сотрудники на проектах](queries/4\_employees\_on\_projects.sql) | Связь M:N через промежуточную таблицу | SQL |

# | \[Отделы выше средней ЗП](queries/5\_departments\_above\_avg.sql) | Подзапрос + HAVING, CTE | SQL |

# | \[Ранг внутри отдела](queries/6\_rank\_in\_dept.sql) | Оконные функции RANK, COUNT OVER | SQL |

# | \[Сводка по отделам](queries/7\_department\_summary.sql) | Комплексный отчёт: MIN, MAX, AVG, SUM | SQL |

# 

# \---

# 

# \## 🏗 Структура БД

# 

# \*\*5 таблиц:\*\*

# 

# | Таблица | Что хранит | Связи |

# | :--- | :--- | :--- |

# | `departments` | Отделы компании | 1:M → employees |

# | `positions` | Должности и грейды | 1:M → employees |

# | `employees` | Сотрудники | M:1 → departments, positions |

# | `projects` | Проекты компании | M:N → employees |

# | `employee\_projects` | Связь сотрудников и проектов | Промежуточная таблица |

# 

# \*\*Ключевые решения:\*\*

# \- \*\*Внешние ключи\*\* для связей 1:M и M:N.

# \- \*\*CHECK\*\* на `min\_salary <= max\_salary` и `status IN (...)`.

# \- \*\*UNIQUE\*\* на `email` и `name` отдела.

# \- \*\*ON DELETE CASCADE\*\* для связующей таблицы.

# 

# \---

# 

# \## 🔍 Что демонстрирует проект

# 

# \- 📌 \*\*Проектирование БД с нуля\*\* — 5 таблиц, связи 1:M и M:N

# \- 📌 \*\*JOIN 3+ таблиц\*\* — сотрудники + отделы + должности

# \- 📌 \*\*Агрегация\*\* — COUNT, AVG, MIN, MAX, SUM с GROUP BY

# \- 📌 \*\*Подзапросы и HAVING\*\* — сравнение со средней по компании

# \- 📌 \*\*CTE (WITH)\*\* — вынос повторяющихся подзапросов

# \- 📌 \*\*Оконные функции\*\* — RANK() OVER (PARTITION BY ...), COUNT() OVER

# \- 📌 \*\*M:N связь\*\* — через промежуточную таблицу `employee\_projects`

# 

# \---

# 

# \## 🚀 Как запустить проект

# 

# \- 📥 Установить MySQL 8.0 и DBeaver

# \- 🗄 Создать БД: `CREATE DATABASE company\_db;`

# \- 📦 Выполнить `schema.sql` — создаст 5 таблиц

# \- 📤 Выполнить `seed.sql` — заполнит тестовыми данными

# \- ▶️ Выполнить любой запрос из папки `queries/`

# 

# \---

# 

# \## 📬 Связаться со мной

# 

# \[!\[Telegram](https://img.shields.io/badge/Telegram-@your\_telegram-2CA5E0?style=flat-square\&logo=telegram\&logoColor=white)](https://t.me/your\_telegram)

# \[!\[Gmail](https://img.shields.io/badge/Gmail-your.email@gmail.com-D14836?style=flat-square\&logo=gmail\&logoColor=white)](mailto:your.email@gmail.com)

# 

# \---

# 

# ⭐ \*\*Если проект оказался полезным — поставь звезду репозиторию!\*\*

