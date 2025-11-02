# Robot Framework Automation - Automation Practice

Projeto de automação de testes utilizando **Robot Framework** com a biblioteca **Browser**, focado na prática de testes end-to-end (E2E) e de interface.

## 📌 Objetivo

Automatizar rotinas de cadastro e login no site [http://automationpratice.com.br](http://automationpratice.com.br), aplicando boas práticas de testes automatizados e evolução contínua do código.

## 🚀 Tecnologias utilizadas

- [Robot Framework](https://robotframework.org/)
- [Robot Framework Browser](https://marketsquare.github.io/robotframework-browser/)
- Python 3.10+
- VSCode (com extensão para Robot Framework)


## ✅ Como executar os testes

### 1. Crie o ambiente virtual e ative:

```bash
python -m venv .venv
.venv\Scripts\Activate.ps1   # No PowerShell

### 2. Instale as dependências:
pip install -r requirements.txt
rfbrowser init

### 3. Execute todos os testes:
robot -d logs tests/

### 4. Execute por tag:
robot -i valid_login -d logs tests/login.robot


## 🔧 Melhorias em andamento

- [x] Separação dos testes por arquivos (login e cadastro)
- [x] Uso de `Test Setup` e `Test Teardown` para evitar repetições
- [x] Aplicação do padrão **Page Object Model (POM)**
- [x] Extração de seletores para arquivos dedicados (`locators`)
- [x] Criação de **keywords customizadas** reutilizáveis
- [x] Organização da estrutura em pastas: `tests/`, `resources/`, `keywords/`, `locators/`
- [x] Validação de mensagens de erro com dados dinâmicos
- [ ] Criação de massa de dados para testes
- [x] Integração contínua com **GitHub Actions**
- [x] Adição de testes negativos com cenários mais variados
- [ ] Implementação de testes parametrizados com `FOR` e variáveis



 Autor: Mateus — em constante evolução na jornada de QA Automation 🚀






