-- INSERCION UNIVERSO
insert into universo (idUniverso,NombreUniverso)
values (1, 'Universo 1'),
	   (2, 'Universo 2'),
       (3, 'Universo 3'),
       (4, 'Universo 4'),
       (5, 'Universo 5'),
       (6, 'Universo 6'),
       (7, 'Universo 7'),
       (8, 'Universo 8'),
       (9, 'Universo 9'),
       (10, 'Universo 10'),
       (11, 'Universo 11'),
	   (12, 'Universo 12');
       
select * from universo;
-- INSERCION ANGELES
insert into angeles (NombreAngel,Universo_idUniverso)
values ('Awamo',1),
	   ('Sour',2),
       ('Camparri',3),
	   ('Cognic',4),
       ('Cucatail',5),
	   ('Vados',6),
       ('Whis',7),
	   ('Korn',8),
       ('Mojito',9),
	   ('Kus',10),
       ('Marcarita',11),
	   ('Martinu',12);
       
select * from angeles;

-- INSERCION DIOSES
insert into dioses (NombreDios,Universo_idUniverso,Angeles_NombreAngel)
values ('Iwen',1,'Awamo'),
	   ('Jerez',2,'Sour'),
       ('Mule',3,'Camparri'),
	   ('Quitela',4,'Cognic'),
       ('Arak',5,'Cucatail'),
	   ('Champa',6,'Vados'),
       ('Beerus',7,'Whis'),
	   ('Liquir',8,'Korn'),
       ('Sidra',9,'Mojito'),
	   ('Rumoosh',10,'Kus'),
       ('Vermoud',11,'Marcarita'),
	   ('Geen',12,'Martinu');
       
select * from dioses;

-- INSERCION KaioShin
insert into kaioshin (NombreKaioshin,Universo_idUniverso)
values ('Anat',1),
	   ('Perú',2),
       ('Ea',3),
	   ('Kur',4),
       ('Ogma',5),
	   ('Fuwa',6),
       ('Shin',7),
	   ('Ill',8),
       ('Rou',9),
	   ('Gowas',10),
       ('Kai',11),
	   ('Ugg',12);
       
select * from kaioshin;

insert into personajes (NombrePersonaje,AlturaPersonaje,Universo_idUniverso,Edad,Poder,Genero,Afiliacion)
values ('Goku',175,7,44,'25 Septillones','Masculino','Guerreros Z'),
	   ('Vegeta',164,7,48,'19 Septillones','Masculino','Guerreros Z'),
       ('Jiren',185,11,270000,'15 Septillones','Masculino','Tropas del Orgullo'),
	   ('Broly',274,7,48,'30 Septillones','Masculino','Otros'),
       ('Ribrianne',165,2,780,'3 Septillones','Femenino','Escuadron Doncella'),
	   ('Hit',193,6,1000,'5 Septillones','Masculino','Asesino'),
       ('Gohan',176,7,23,'24 Septillones','Masculino','Guerreros Z'),
	   ('Zamasu',189,10,770,'7 Septillones','Masculino','Aprendiz de KaioShin'),
       ('Bergamo',180,9,80,'1 Septillones','Masculino','Trio del Peligro'),
	   ('Celula',213,7,34,'90 Billones','Masculino','Otros'),
       ('Freezer',158,7,70,'12 Septillones','Masculino','Ejercito de Freezer'),
	   ('Majin Buu',250,7,5000000,'100 Trillones','Masculino','Guerreros Z');
       
select * from personajes;

insert into personaje_tecnica (Personajes_NombrePersonaje,Tecnicas_Especiales_NombreTecnica)
values ('Goku','Kamehameha'),
	   ('Vegeta', 'Final Flash'),
       ('Jiren','Magnetrón de Calor Omega'),
	   ('Broly', 'Lluvia de Meteoros'),
       ('Celula','Martillo Sólido'),
	   ('Bergamo', 'Incisión Wolfgang'),
       ('Freezer','Rayo Mortal'),
	   ('Gohan', 'Masenko'),
       ('Hit','Salto Temporal'),
	   ('Majin Buu', 'Lluvia de Asalto'),
       ('Ribrianne','Superducha de Amor de Ribrianne'),
	   ('Zamasu', 'Rebanador Divino');
       
select * from personaje_tecnica;

insert into tecnicas_especiales (NombreTecnica,Color)
values ('Kamehameha','Amarillo'),
	   ('Final Flash','Amarillo'),
       ('Magnetrón de Calor Omega','Rojo'),
	   ('Lluvia de Meteoros','Verde'),
       ('Martillo Sólido','Morado'),
	   ('Incisión Wolfgang','Rojo'),
       ('Rayo Mortal','Azul'),
	   ('Masenko','Amarillo'),
       ('Salto Temporal','Morado'),
	   ('Lluvia de Asalto','Rosa'),
       ('Superducha de Amor de Ribrianne','Rosa'),
	   ('Rebanador Divino','Amarillo');
       
select * from tecnicas_especiales;

insert into transformaciones (NombreTransformacion,Color)
values ('SuperSaiyan','Amarillo'),
	   ('SuperSaiyan 2','Amarillo'),
       ('SuperSaiyan 3','Amarillo'),
	   ('Golden','Dorado'),
       ('FullPower','Rojo'),
	   ('SuperSaiyan Dios','Rojo'),
       ('SuperSaiyan Blue','Azul'),
	   ('Forma Gigante','Blanco'),
       ('Ultra Instinto','Plateado'),
	   ('Super','Rosa'),
       ('SuperSaiyan Legendario','Verde'),
	   ('Bestia','Rojo');
       
select * from transformaciones;

insert into personaje_transformacion (Personajes_NombrePersonaje,Transformaciones_NombreTransformacion)
values ('Goku','SuperSaiyan'),
	   ('Vegeta','SuperSaiyan 2'),
       ('Goku','SuperSaiyan 3'),
	   ('Freezer','Golden'),
       ('Jiren','FullPower'),
	   ('Goku','SuperSaiyan Dios'),
       ('Vegeta','SuperSaiyan Blue'),
	   ('Ribrianne','Forma Gigante'),
       ('Goku','Ultra Instinto'),
	   ('Majin Buu','Super'),
       ('Broly','SuperSaiyan Legendario'),
	   ('Gohan','Bestia');
       
select * from personaje_transformacion;

insert into heroe (idPersonaje,Personajes_NombrePersonaje)
values (1,'Goku'),
	   (2,'Vegeta'),
       (3,'Ribrianne'),
	   (4,'Gohan'),
       (5,'Jiren');

       
select * from heroe;

insert into villano (idPersonaje,Personajes_NombrePersonaje)
values (1,'Bergamo'),
	   (2,'Broly'),
       (3,'Celula'),
	   (4,'Freezer'),
       (5,'Hit'),
	   (6,'Majin Buu'),
       (7,'Zamasu');
       
select * from villano;

-- PROCEDIMIENTO 1--
-- Listar los pj por universos, en caso de que no haya pj de ese universo no devuelve nada
DELIMITER //
CREATE PROCEDURE listarPersonajesPorUniverso(IN nombreUniverso VARCHAR(50))
BEGIN
    SELECT p.NombrePersonaje, p.AlturaPersonaje, p.Edad, p.Poder, p.Genero
    FROM personajes p
    JOIN universo u ON p.Universo_idUniverso = u.idUniverso
    WHERE u.NombreUniverso = nombreUniverso;
END //
DELIMITER ;

-- LLAMAR AL PROCEDIMIENTO

CALL listarPersonajesPorUniverso('Universo 11');

-- PROCEDIMIENTO 2--
DELIMITER //

CREATE PROCEDURE agregarTransformacionPersonaje(
    IN nombrePersonaje VARCHAR(50),
    IN nombreTransformacion VARCHAR(50)
)
BEGIN
    -- Verificar si la transformacion existe en la tabla transformaciones
    IF NOT EXISTS (
        SELECT 1 FROM transformaciones WHERE NombreTransformacion = nombreTransformacion
    ) THEN
        -- Si no existe, la insertamos con un color por defecto
        INSERT INTO transformaciones (NombreTransformacion, Color) 
        VALUES (nombreTransformacion, 'Desconocido');
    END IF;
    
    -- Insertar la transformacion para el personaje en personaje_transformacion
    INSERT INTO personaje_transformacion (Personajes_NombrePersonaje, Transformaciones_NombreTransformacion)
    VALUES (nombrePersonaje, nombreTransformacion);
END //

DELIMITER ;

-- PRIMERO HAY QUE INSERTAR LA TRANSFORMACION EN LA TABLA TRANSFORMACIONES
-- INSERT INTO transformaciones (NombreTransformacion, Color)
-- VALUES ('SuperSaiyan 4', 'Amarillo');

CALL agregarTransformacionPersonaje('Goku', 'SuperSaiyan 4');

-- Funcion 1
-- Devuelve el numero de personaje por universo
DELIMITER //
CREATE FUNCTION totalPersonajesPorUniverso(nombreUniverso VARCHAR(50)) 
RETURNS INT
READS SQL DATA
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total
    FROM personajes p
    JOIN universo u ON p.Universo_idUniverso = u.idUniverso
    WHERE u.NombreUniverso = nombreUniverso;
    RETURN total;
END;//
DELIMITER ;

SELECT totalPersonajesPorUniverso('Universo 7');

-- Funcion 2
-- Devuelve si el personaje es heroe o villano
DELIMITER //
CREATE FUNCTION verificarAfiliacionPersonaje(nombrePersonaje VARCHAR(50)) 
RETURNS VARCHAR(10)
READS SQL DATA
BEGIN
    IF EXISTS (SELECT 1 FROM heroe WHERE Personajes_NombrePersonaje = nombrePersonaje) THEN
        RETURN 'Héroe';
    ELSEIF EXISTS (SELECT 1 FROM villano WHERE Personajes_NombrePersonaje = nombrePersonaje) THEN
        RETURN 'Villano';
    ELSE
        RETURN 'Desconocido';
    END IF;
END;//
DELIMITER ;

SELECT verificarAfiliacionPersonaje('Freezer');


-- TRIGGER 1
-- AL INTENTAR INSERTAR UN PJ HEROE EN LA TABLA VILLANO NO TE DEJA
DELIMITER //
CREATE TRIGGER verificarVillanoAntesDeInsertarHeroe
BEFORE INSERT ON heroe
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM villano WHERE Personajes_NombrePersonaje = NEW.Personajes_NombrePersonaje) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El personaje ya está registrado como villano, no puede ser héroe.';
    END IF;
END //
DELIMITER ;

-- insert into villano (idPersonaje,Personajes_NombrePersonaje)
-- values (8,'Goku');

-- TRIGGER 2
-- AL INTENTAR INSERTAR UN PJ VILLANO EN LA TABLA HEROE NO TE DEJA
DELIMITER //
CREATE TRIGGER verificarHeroeAntesDeInsertarVillano
BEFORE INSERT ON villano
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM heroe WHERE Personajes_NombrePersonaje = NEW.Personajes_NombrePersonaje) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El personaje ya está registrado como héroe, no puede ser villano.';
    END IF;
END//
DELIMITER ;
