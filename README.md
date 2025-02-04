# Info

## Author Information

- **Name:** Juan Vicente Herrera Ruiz de Alejo
- **GitHub:** [@juanviz](https://github.com/juanviz)
- **Role:** Author and Maintainer
- **Affiliation:** ICAI

## License
This project is licensed under the MIT License - see the [MIT License](https://opensource.org/licenses/MIT) for details.

# Dockerized MySQL and PHP with Apache

This repository provides a Docker Compose configuration to set up a MySQL 5.7 database and a PHP environment with Apache and Phalcon.

## Services

### MySQL
- **Container Name:** `mysql`
- **Image:** `mysql:5.7`
- **Environment Variables:**
  - `MYSQL_ROOT_PASSWORD`: Default is `'secret'`, change this for security.
- **Ports:**
  - Exposes MySQL on `3306:3306`.
- **Volumes:**
  - `./data:/var/lib/mysql` → Persistent database storage.
  - `./init.sql:/docker-entrypoint-initdb.d/init.sql` → Initial SQL script for database setup.

### PHP with Apache and Phalcon
- **Container Name:** `php`
- **Image:** `szabacsik/ubuntu_apache_php_phalcon:latest`
- **Ports:**
  - Exposes Apache on `80:80`.
- **Volumes:**
  - `./html:/var/www/html` → Mounts local HTML/PHP files to the web root.

## Getting Started

### Prerequisites
- Docker installed on your system.
- Docker Compose installed.

### Usage
1. Clone this repository:
   ```sh
   git clone <repository-url>
   cd <repository-folder>
   ```
2. Ensure your `init.sql` file is ready if you need initial database setup.
3. Start the services:
   ```sh
   docker-compose up -d
   ```
4. Access the services:
   - MySQL: `localhost:3306`
   - Apache/PHP: `http://localhost`

### Stopping the Services
To stop and remove the containers, run:
```sh
docker-compose down
```

## Customization
- Modify `init.sql` to change database initialization.
- Update `docker-compose.yml` to adjust configurations.

## License
This project is provided under the MIT License.

## Contributions
Feel free to submit pull requests for improvements!

---
For issues or support, open an issue in this repository.

