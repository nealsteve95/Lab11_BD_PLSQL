-------------Problema 1---------------------------------
DECLARE
  numero_dia NUMBER;
  dia_semana VARCHAR2(20);
BEGIN
  -- Solicitar al usuario que ingrese un número de día
  numero_dia := &numero_dia; -- Se pedirá al usuario que ingrese el número de día

  -- Verificar el número ingresado y asignar el día de la semana correspondiente
  IF numero_dia = 1 THEN
    dia_semana := 'Lunes';
  ELSIF numero_dia = 2 THEN
    dia_semana := 'Martes';
  ELSIF numero_dia = 3 THEN
    dia_semana := 'Miércoles';
  ELSIF numero_dia = 4 THEN
    dia_semana := 'Jueves';
  ELSIF numero_dia = 5 THEN
    dia_semana := 'Viernes';
  ELSIF numero_dia = 6 THEN
    dia_semana := 'Sábado';
  ELSIF numero_dia = 7 THEN
    dia_semana := 'Domingo';
  ELSE
    dia_semana := 'Número de día inválido. Por favor, ingrese un número del 1 al 7.';
  END IF;

  -- Mostrar el día de la semana correspondiente
  DBMS_OUTPUT.PUT_LINE('El día de la semana es: ' || dia_semana);
END;

---------------- Problema 2 ------------------------------
DECLARE
  numero_mes NUMBER;
  nombre_mes VARCHAR2(20);
BEGIN
  -- Solicitar al usuario que ingrese un número de mes
  numero_mes := &numero_mes; -- Se pedirá al usuario que ingrese el número de mes

  -- Asignar el nombre del mes correspondiente utilizando CASE
  CASE numero_mes
    WHEN 1 THEN
      nombre_mes := 'Enero';
    WHEN 2 THEN
      nombre_mes := 'Febrero';
    WHEN 3 THEN
      nombre_mes := 'Marzo';
    WHEN 4 THEN
      nombre_mes := 'Abril';
    WHEN 5 THEN
      nombre_mes := 'Mayo';
    WHEN 6 THEN
      nombre_mes := 'Junio';
    WHEN 7 THEN
      nombre_mes := 'Julio';
    WHEN 8 THEN
      nombre_mes := 'Agosto';
    WHEN 9 THEN
      nombre_mes := 'Septiembre';
    WHEN 10 THEN
      nombre_mes := 'Octubre';
    WHEN 11 THEN
      nombre_mes := 'Noviembre';
    WHEN 12 THEN
      nombre_mes := 'Diciembre';
    ELSE
      nombre_mes := 'Número de mes inválido. Por favor, ingrese un número del 1 al 12.';
  END CASE;

  -- Verificar si el número de mes es inválido y mostrar mensaje correspondiente
  IF numero_mes > 12 THEN
    nombre_mes := 'Número de mes inválido. Por favor, ingrese un número del 1 al 12.';
  END IF;

  -- Imprimir el nombre del mes
  DBMS_OUTPUT.PUT_LINE('El mes es: ' || nombre_mes);
END;

-------------------- Problema 3 / Problema 4 ------------------------------
DECLARE
  -- Declarar variables para los campos de la tabla
  id_producto NUMBER;
  nombre VARCHAR2(100);
  tipo VARCHAR2(200);
  precio NUMBER;
  cantidad NUMBER; -- Sera el mismo valor para todos los productos generados
  descripción VARCHAR2(100);
  Calidad VARCHAR2(100);
  
BEGIN
  -- Bucle LOOP para agregar 20 registros a la tabla "productos"
  FOR i IN 1..20 LOOP
    -- Generar valores aleatorios para los campos
    id_producto := i;
    nombre := 'Producto ' || i;
    tipo := 'La categoria del producto ' || i;
    precio := DBMS_RANDOM.VALUE(10, 100); -- Generar un precio aleatorio entre 10 y 100
    cantidad := DBMS_RANDOM.VALUE(5,50);
    descripción := 'Descripcion del producto' || i;
    Calidad := 'La calidad del producto' || i;

    -- Insertar el registro en la tabla "productos"
    INSERT INTO productos (id_producto, nombre, tipo, precio,cantidad, descripción, Calidad)
    VALUES (id_producto, nombre,tipo, precio,cantidad, descripción, Calidad);
  END LOOP;

  -- Imprimir mensaje de éxito
  DBMS_OUTPUT.PUT_LINE('Se han agregado 20 registros a la tabla "producto".');
END;

CREATE TABLE productos (
  id_producto NUMBER,
  nombre VARCHAR2(100),
  tipo VARCHAR2(200),
  precio NUMBER,
  cantidad NUMBER,
  descripcion VARCHAR2(100),
  calidad VARCHAR2(100)
);


select * from productos;
drop table productos;
------------------------- Menú sin operaciones ------------------------------         
DECLARE
    opcion NUMBER;

BEGIN
    -- Mostrar el menú de opciones
    DBMS_OUTPUT.PUT_LINE('Menu');
    DBMS_OUTPUT.PUT_LINE('1. Agregar');
    DBMS_OUTPUT.PUT_LINE('2. Buscar por nombre');
    DBMS_OUTPUT.PUT_LINE('3. Listar');
    DBMS_OUTPUT.PUT_LINE('4. Eliminar');
    DBMS_OUTPUT.PUT_LINE('5. Actualizar');
    DBMS_OUTPUT.PUT_LINE('6. Salir');

    -- Leer la opción seleccionada
    opcion := &opcion;

    -- Ejecutar la opción seleccionada
    CASE opcion
        WHEN 1 THEN
            -- Opción de agregar
            DBMS_OUTPUT.PUT_LINE('Opción seleccionada: Agregar');
            -- Aquí puedes agregar la lógica para la opción de agregar

        WHEN 2 THEN
            -- Opción de buscar por nombre
            DBMS_OUTPUT.PUT_LINE('Opción seleccionada: Buscar por nombre');
            -- Aquí puedes agregar la lógica para la opción de buscar por nombre

        WHEN 3 THEN
            -- Opción de listar
            DBMS_OUTPUT.PUT_LINE('Opción seleccionada: Listar');
            -- Aquí puedes agregar la lógica para la opción de listar

        WHEN 4 THEN
            -- Opción de eliminar
            DBMS_OUTPUT.PUT_LINE('Opción seleccionada: Eliminar');
            -- Aquí puedes agregar la lógica para la opción de eliminar

        WHEN 5 THEN
            -- Opción de actualizar
            DBMS_OUTPUT.PUT_LINE('Opción seleccionada: Actualizar');
            -- Aquí puedes agregar la lógica para la opción de actualizar

        WHEN 6 THEN
            -- Opción de salir
            DBMS_OUTPUT.PUT_LINE('Opción seleccionada: Salir');

        ELSE
            -- Opción inválida
            DBMS_OUTPUT.PUT_LINE('Opción inválida. Intente nuevamente.');
    END CASE;
END;

------------------Metodo para agregar-------------------------------

DECLARE
    v_id_producto NUMBER;
    v_nombre VARCHAR2(100);
    v_tipo VARCHAR2(200);
    v_precio NUMBER;
    v_cantidad NUMBER;
    v_descripcion VARCHAR2(100);
    v_calidad VARCHAR2(100);
    opcion NUMBER;

BEGIN
    -- Mostrar el menú de opciones
    DBMS_OUTPUT.PUT_LINE('Menu');
    DBMS_OUTPUT.PUT_LINE('1. Agregar');
    DBMS_OUTPUT.PUT_LINE('2. Salir');

    -- Leer la opción seleccionada
    opcion := &opcion;

    -- Ejecutar la opción seleccionada
    IF opcion = 1 THEN
        -- Leer los valores ingresados por el usuario
        DBMS_OUTPUT.PUT_LINE('Ingrese el ID del producto:');
        v_id_producto := &id_producto;

        DBMS_OUTPUT.PUT_LINE('Ingrese el nombre del producto:');
        v_nombre := '&nombre';

        DBMS_OUTPUT.PUT_LINE('Ingrese el tipo del producto:');
        v_tipo := '&tipo';

        DBMS_OUTPUT.PUT_LINE('Ingrese el precio del producto:');
        v_precio := &precio;

        DBMS_OUTPUT.PUT_LINE('Ingrese la cantidad del producto:');
        v_cantidad := &cantidad;

        DBMS_OUTPUT.PUT_LINE('Ingrese la descripción del producto:');
        v_descripcion := '&descripcion';

        DBMS_OUTPUT.PUT_LINE('Ingrese la calidad del producto:');
        v_calidad := '&calidad';

        -- Insertar el nuevo producto en la tabla
        INSERT INTO productos (id_producto, nombre, tipo, precio, cantidad, descripcion, calidad)
        VALUES (v_id_producto, v_nombre, v_tipo, v_precio, v_cantidad, v_descripcion, v_calidad);

        DBMS_OUTPUT.PUT_LINE('Producto agregado correctamente.');
 END IF;
 END;


----------- Metodo para borrar ----------------
DECLARE
    v_id_producto NUMBER;
    v_count NUMBER;
BEGIN
    -- Mostrar el menú de opciones
    DBMS_OUTPUT.PUT_LINE('Menu');
    DBMS_OUTPUT.PUT_LINE('1. Agregar');
    DBMS_OUTPUT.PUT_LINE('2. Buscar por nombre');
    DBMS_OUTPUT.PUT_LINE('3. Listar');
    DBMS_OUTPUT.PUT_LINE('4. Eliminar');
    DBMS_OUTPUT.PUT_LINE('5. Actualizar');
    DBMS_OUTPUT.PUT_LINE('6. Salir');
    DBMS_OUTPUT.PUT_LINE('Ingrese el ID del producto a eliminar:');
    v_id_producto := &id_producto;
    
    -- Verificar si el producto existe en la tabla antes de borrarlo
    SELECT COUNT(*) INTO v_count FROM productos WHERE id_producto = v_id_producto;
    
    IF v_count > 0 THEN
        -- Borrar el producto de la tabla
        DELETE FROM productos WHERE id_producto = v_id_producto;
        DBMS_OUTPUT.PUT_LINE('Producto eliminado correctamente.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('No se encontró ningún producto con el ID proporcionado.');
    END IF;
END;

------------ Metodo para buscar por nombre --------------------

DECLARE
    v_nombre_buscar VARCHAR2(100);
    v_id_producto NUMBER;
BEGIN
    -- Leer el nombre del producto a buscar
    DBMS_OUTPUT.PUT_LINE('Ingrese el nombre del producto a buscar:');
    v_nombre_buscar := '&nombre_buscar';
    
    -- Buscar el producto por nombre
    SELECT id_producto INTO v_id_producto FROM productos WHERE nombre = v_nombre_buscar;
    
    -- Verificar si se encontró el producto
    IF v_id_producto IS NOT NULL THEN
        DBMS_OUTPUT.PUT_LINE('Producto encontrado. ID: ' || v_id_producto);
    ELSE
        DBMS_OUTPUT.PUT_LINE('No se encontró ningún producto con el nombre proporcionado.');
    END IF;
END;


--------------- Listar los elementos -----------------------
BEGIN
    -- Listar los productos
    FOR producto IN (SELECT * FROM productos) LOOP
        -- Mostrar los detalles de cada producto
        DBMS_OUTPUT.PUT_LINE('ID: ' || producto.id_producto);
        DBMS_OUTPUT.PUT_LINE('Nombre: ' || producto.nombre);
        DBMS_OUTPUT.PUT_LINE('Tipo: ' || producto.tipo);
        DBMS_OUTPUT.PUT_LINE('Precio: ' || producto.precio);
        DBMS_OUTPUT.PUT_LINE('Cantidad: ' || producto.cantidad);
        DBMS_OUTPUT.PUT_LINE('Descripción: ' || producto.descripcion);
        DBMS_OUTPUT.PUT_LINE('Calidad: ' || producto.calidad);
        DBMS_OUTPUT.PUT_LINE('-----------------------------');
    END LOOP;
END;

------------------- Editar datos de la tabla productos ------------------

DECLARE
    v_nombre_producto VARCHAR2(100);
    v_nuevo_precio NUMBER;
BEGIN
    -- Leer el nombre del producto a editar
    DBMS_OUTPUT.PUT_LINE('Ingrese el nombre del producto a editar:');
    v_nombre_producto := '&nombre_producto';

    -- Leer el nuevo precio del producto
    DBMS_OUTPUT.PUT_LINE('Ingrese el nuevo precio:');
    v_nuevo_precio := &nuevo_precio;

    -- Actualizar el precio del producto
    UPDATE productos
    SET precio = v_nuevo_precio
    WHERE nombre = v_nombre_producto;

    -- Verificar si se realizó la actualización
    IF SQL%ROWCOUNT > 0 THEN
        DBMS_OUTPUT.PUT_LINE('El precio del producto "' || v_nombre_producto || '" se actualizó correctamente.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('No se encontró ningún producto con el nombre "' || v_nombre_producto || '".');
    END IF;
END;

--------------------------------- Menu completo--------------------------

DECLARE
    opcion NUMBER;

BEGIN
    -- Mostrar el menú de opciones
    DBMS_OUTPUT.PUT_LINE('Menu');
    DBMS_OUTPUT.PUT_LINE('1. Agregar');
    DBMS_OUTPUT.PUT_LINE('2. Buscar por nombre');
    DBMS_OUTPUT.PUT_LINE('3. Listar');
    DBMS_OUTPUT.PUT_LINE('4. Eliminar');
    DBMS_OUTPUT.PUT_LINE('5. Actualizar');
    DBMS_OUTPUT.PUT_LINE('6. Salir');

    -- Leer la opción seleccionada
    opcion := &opcion;

    -- Ejecutar la opción seleccionada
    CASE opcion
        WHEN 1 THEN
            DECLARE
            v_id_producto NUMBER;
            v_nombre VARCHAR2(100);
            v_tipo VARCHAR2(200);
            v_precio NUMBER;
            v_cantidad NUMBER;
            v_descripcion VARCHAR2(100);
            v_calidad VARCHAR2(100);
            opcion NUMBER;

        BEGIN
        -- Leer los valores ingresados por el usuario
        DBMS_OUTPUT.PUT_LINE('Ingrese el ID del producto:');
        v_id_producto := &id_producto;

        DBMS_OUTPUT.PUT_LINE('Ingrese el nombre del producto:');
        v_nombre := '&nombre';

        DBMS_OUTPUT.PUT_LINE('Ingrese el tipo del producto:');
        v_tipo := '&tipo';

        DBMS_OUTPUT.PUT_LINE('Ingrese el precio del producto:');
        v_precio := &precio;

        DBMS_OUTPUT.PUT_LINE('Ingrese la cantidad del producto:');
        v_cantidad := &cantidad;

        DBMS_OUTPUT.PUT_LINE('Ingrese la descripción del producto:');
        v_descripcion := '&descripcion';

        DBMS_OUTPUT.PUT_LINE('Ingrese la calidad del producto:');
        v_calidad := '&calidad';

        -- Insertar el nuevo producto en la tabla
        INSERT INTO productos (id_producto, nombre, tipo, precio, cantidad, descripcion, calidad)
        VALUES (v_id_producto, v_nombre, v_tipo, v_precio, v_cantidad, v_descripcion, v_calidad);

        DBMS_OUTPUT.PUT_LINE('Producto agregado correctamente.');
 
 END;
        WHEN 2 THEN
            DECLARE
            v_nombre_buscar VARCHAR2(100);
            v_id_producto NUMBER;
        BEGIN
            -- Leer el nombre del producto a buscar
            DBMS_OUTPUT.PUT_LINE('Ingrese el nombre del producto a buscar:');
            v_nombre_buscar := '&nombre_buscar';
            
            -- Buscar el producto por nombre
            SELECT id_producto INTO v_id_producto FROM productos WHERE nombre = v_nombre_buscar;
            
            -- Verificar si se encontró el producto
            IF v_id_producto IS NOT NULL THEN
                DBMS_OUTPUT.PUT_LINE('Producto encontrado. ID: ' || v_id_producto);
            ELSE
                DBMS_OUTPUT.PUT_LINE('No se encontró ningún producto con el nombre proporcionado.');
            END IF;
        END;

        WHEN 3 THEN
           BEGIN
            -- Listar los productos
            FOR producto IN (SELECT * FROM productos) LOOP
                -- Mostrar los detalles de cada producto
                DBMS_OUTPUT.PUT_LINE('ID: ' || producto.id_producto);
                DBMS_OUTPUT.PUT_LINE('Nombre: ' || producto.nombre);
                DBMS_OUTPUT.PUT_LINE('Tipo: ' || producto.tipo);
                DBMS_OUTPUT.PUT_LINE('Precio: ' || producto.precio);
                DBMS_OUTPUT.PUT_LINE('Cantidad: ' || producto.cantidad);
                DBMS_OUTPUT.PUT_LINE('Descripción: ' || producto.descripcion);
                DBMS_OUTPUT.PUT_LINE('Calidad: ' || producto.calidad);
                DBMS_OUTPUT.PUT_LINE('-----------------------------');
            END LOOP;
        END;

        WHEN 4 THEN
        DECLARE
            v_id_producto NUMBER;
            v_count NUMBER;
        BEGIN
            -- Mostrar el menú de opciones
            DBMS_OUTPUT.PUT_LINE('Menu');
            DBMS_OUTPUT.PUT_LINE('1. Agregar');
            DBMS_OUTPUT.PUT_LINE('2. Buscar por nombre');
            DBMS_OUTPUT.PUT_LINE('3. Listar');
            DBMS_OUTPUT.PUT_LINE('4. Eliminar');
            DBMS_OUTPUT.PUT_LINE('5. Actualizar');
            DBMS_OUTPUT.PUT_LINE('6. Salir');
            DBMS_OUTPUT.PUT_LINE('Ingrese el ID del producto a eliminar:');
            v_id_producto := &id_producto;
            
            -- Verificar si el producto existe en la tabla antes de borrarlo
            SELECT COUNT(*) INTO v_count FROM productos WHERE id_producto = v_id_producto;
            
            IF v_count > 0 THEN
                -- Borrar el producto de la tabla
                DELETE FROM productos WHERE id_producto = v_id_producto;
                DBMS_OUTPUT.PUT_LINE('Producto eliminado correctamente.');
            ELSE
                DBMS_OUTPUT.PUT_LINE('No se encontró ningún producto con el ID proporcionado.');
            END IF;
        END;  

        WHEN 5 THEN
        DECLARE
            v_nombre_producto VARCHAR2(100);
            v_nuevo_precio NUMBER;
        BEGIN
            -- Leer el nombre del producto a editar
            DBMS_OUTPUT.PUT_LINE('Ingrese el nombre del producto a editar:');
            v_nombre_producto := '&nombre_producto';
        
            -- Leer el nuevo precio del producto
            DBMS_OUTPUT.PUT_LINE('Ingrese el nuevo precio:');
            v_nuevo_precio := &nuevo_precio;
        
            -- Actualizar el precio del producto
            UPDATE productos
            SET precio = v_nuevo_precio
            WHERE nombre = v_nombre_producto;
        
            -- Verificar si se realizó la actualización
            IF SQL%ROWCOUNT > 0 THEN
                DBMS_OUTPUT.PUT_LINE('El precio del producto "' || v_nombre_producto || '" se actualizó correctamente.');
            ELSE
                DBMS_OUTPUT.PUT_LINE('No se encontró ningún producto con el nombre "' || v_nombre_producto || '".');
            END IF;
        END;   
        WHEN 6 THEN
            -- Opción de salir
            DBMS_OUTPUT.PUT_LINE('Opción seleccionada: Salir');
        ELSE
            -- Opción inválida
            DBMS_OUTPUT.PUT_LINE('Opción inválida. Intente nuevamente.');
    END CASE;
END;



