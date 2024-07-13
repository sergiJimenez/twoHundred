```md
                       ___    __  __                        __                    __     
                     /'___`\ /\ \/\ \                      /\ \                  /\ \    
                    /\_\ /\ \\ \ \_\ \   __  __    ___     \_\ \   _ __    __    \_\ \   
                    \/_/// /__\ \  _  \ /\ \/\ \ /' _ `\   /'_` \ /\`'__\/'__`\  /'_` \  
                       // /_\ \\ \ \ \ \\ \ \_\ \/\ \/\ \ /\ \L\ \\ \ \//\  __/ /\ \L\ \ 
                      /\______/ \ \_\ \_\\ \____/\ \_\ \_\\ \___,_\\ \_\\ \____\\ \___,_\
                      \/_____/   \/_/\/_/ \/___/  \/_/\/_/ \/__,_ / \/_/ \/____/ \/__,_ /
```

[![en](https://img.shields.io/badge/lang-en-red.svg)](https://github.com/sergiJimenez/twoHundred/blob/master/README.md)
[![es](https://img.shields.io/badge/lang-es-yellow.svg)](https://github.com/sergiJimenez/twoHundred/blob/master/README.es.md)

## Descripción
Este script de shell automatiza la ejecución repetida de pruebas para un proyecto Node.js utilizando npm. Está diseñado para ejecutar un conjunto de pruebas definidas en el proyecto repetidamente, con un número específico de iteraciones controlado por el usuario. Además, proporciona estadísticas sobre el éxito y el fracaso de las pruebas, así como el tiempo total de ejecución.

## Instalación y Ejecución
1. Clonar el repositorio.
2. Arrastrar el archivo twoHundred.bash a tu proyecto donde quieres ejecutar los tests. **Es importante ubicarlo en el root del proyecto**.
3. Abrir una terminal que permita ejecutar scripts bash.
4. Navegar hasta el directorio donde se encuentra el proyecto, y el script.
5. Abrir el script con cualquier editor de código.
6. Modificar el número de iteraciones deseado cambiando el valor de la variable `n`.
7. Ejecutar el script con el comando `./twoHundred.sh`.

## Dependencias mínimas
- Node.js.
- npm.
- El proyecto debe tener un script de prueba definido en el archivo `package.json` que pueda ser ejecutado con `npm run test`.
- Opcionalmente, si se desea recibir una notificación auditiva al completar todas las pruebas con éxito, se debe proporcionar una ruta válida al archivo de sonido en la línea que utiliza `powershell`. En caso opuesto puede eliminar la línea 29 del archivo `twoHundred.bash`.

## Uso
El usuario puede cambiar la variable `n` al número deseado de iteraciones para ejecutar las pruebas. Luego, el script ejecutará las pruebas definidas en el proyecto con `npm run test`, ya que este es el comando por defecto para ejecutar los tests, tantas veces como se haya especificado. Si alguna de las pruebas falla, el script detendrá la ejecución y mostrará un mensaje de error indicando la falla.

## Resultados
Después de completar todas las iteraciones, el script proporciona información sobre el número total de pruebas exitosas y fallidas. Si todas las pruebas son exitosas, el script puede proporcionar una notificación auditiva (opcional) y abrir el archivo de cobertura de código en un navegador web.
