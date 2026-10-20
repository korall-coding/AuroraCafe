# AuroraCafe ☕


## Magyar

Az AuroraCafe egy kávézó weboldala, amely a kávézóban kapható termékek bemutatását, valamint a látogatókkal való kapcsolattartást szolgálja.

A projekt célja egy modern, letisztult, hangulatos és reszponzív weboldal létrehozása.


## Képek és optimalizálás

- A weboldalon szereplő képek forrása az [Unsplash](https://unsplash.com/).
- A képek méreteit a [Fotoszerkeszto.hu](https://fotoszerkeszto.hu/) segítségével egységesítettem.
- A képeket a [TinyPNG](https://tinypng.com/) segítségével tömörítettem és WebP formátumba konvertáltam a fájlméretek csökkentése és a weboldal teljesítményének javítása érdekében.


## Design

A weboldal dizájnját a Figma AI segítségével készítettem el, majd HTML, CSS és ASP.NET Core Razor Pages használatával valósítottam meg.

Az eredeti weboldalterv a projekt repozitóriumában, a `design` mappában található.


## Funkciók

- Kezdőoldal kiemelt termékekkel és vendégvéleményekkel
- Kínálati oldal termékekkel és kategóriákkal
- Bemutatkozó oldal a kávézó történetével és értékeivel
- Kapcsolati oldal elérhetőségekkel és kapcsolatfelvételi űrlappal
- Reszponzív megjelenés különböző képernyőméreteken
- MySQL-adatbázis integrációja


## Felhasznált technológiák

- C#
- .NET 8
- ASP.NET Core Razor Pages
- Entity Framework Core
- HTML5
- CSS3
- MySQL
- Bootstrap Icons


## Követelmények

A projekt futtatásához szükséges:

- .NET 8 SDK
- MySQL Server
- phpMyAdmin vagy más MySQL-adatbázis-kezelő eszköz


## Telepítés és futtatás

### 1. A repozitórium klónozása

	git clone <repository-url>
	cd AuroraCafe

### 2. Az adatbázis beállítása

- Hozd létre az `aurora_cafe_db` nevű MySQL-adatbázist.
- Importáld a `Database/aurora_cafe_db.sql` fájlt phpMyAdmin segítségével.
- Állítsd be az adatbázis-kapcsolatot az `appsettings.json` fájlban a helyi MySQL-konfigurációdnak megfelelően.

### 3. Az alkalmazás elindítása

A projekt könyvtárában állítsd vissza a szükséges NuGet-csomagokat:

	dotnet restore

Indítsd el az alkalmazást:

	dotnet run

A terminálban megjelenő helyi URL-címet nyisd meg a böngészőben.







## English

AuroraCafe is a café website designed to showcase the products available at the café and provide visitors with information and ways to get in touch.

The goal of the project is to create a modern, clean, welcoming, and responsive website.


## Images and Optimization

- Images sourced from [Unsplash](https://unsplash.com/).
- Image dimensions standardized using [Fotoszerkeszto.hu](https://fotoszerkeszto.hu/).
- Images compressed and converted to WebP format using [TinyPNG](https://tinypng.com/) to reduce file sizes and improve website performance.


## Design

The website design was created using Figma AI and then implemented using HTML, CSS, and ASP.NET Core Razor Pages.

The original website design is included in the project repository in the `design` folder.


## Features

- Homepage featuring selected products and customer reviews
- Menu page showcasing products and categories
- About page introducing the café's story and values
- Contact page with contact information and a contact form
- Responsive layout for different screen sizes
- MySQL database integration


## Technologies

- C#
- .NET 8
- ASP.NET Core Razor Pages
- Entity Framework Core
- HTML5
- CSS3
- MySQL
- Bootstrap Icons


## Prerequisites

The following are required to run the project:

- .NET 8 SDK
- MySQL Server
- phpMyAdmin or another MySQL database management tool


## Installation and Running

### 1. Clone the repository

	git clone <repository-url>
	cd AuroraCafe

### 2. Set up the database

- Create a MySQL database named `aurora_cafe_db`.
- Import the `Database/aurora_cafe_db.sql` file using phpMyAdmin.
- Configure the database connection in `appsettings.json` to match your local MySQL settings.

### 3. Run the application

Restore the required NuGet packages from the project directory:

	dotnet restore

Start the application:

	dotnet run

Open the local URL displayed in the terminal in your browser.
