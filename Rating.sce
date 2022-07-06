out = 0;
f = [ "Trabajos" "Tareas" "Proyectos" "Cuestionarios" "Asistencia" "Examen final" ]

mprintf("\n\t\tDeterminar calificiones\n\tFactores (0-100)\t|\tCalificaciónes (0-100)\n");
unit = strtod(input("Unidades: ", "s"));
factor = zeros(unit)
ratings = zeros(6, unit)
 
while 1 then
    for i = 1: 6
        str = f(i) + ": ";
        factor(i) = strtod(input(str, "s"));
    end
    if factor(1) + factor(2) + factor(3) + factor(4) + factor(5) + factor(6) == 100 then
        break
    else
        mprintf("Valores invalidos\n");
    end
end
clc
for c = 1:5
    for i = 1:unit
        if factor(c) > 0 then
            while 1 then
                str = "Calificación " + string(i) + " de "+ f(c) + ": "
                ratings(c,i) = strtod(input(str, "s"))
                if ratings(c,i) >= 0  & ratings(c,i) <= 100 then
                    ratings(c,i) = ratings(c,i) * factor(c) / 100;
                    break
                end
            end
        end
    end
    clc
end

while 1 then
    ratings(6) = strtod(input("Calificación del examen final: ", "s"));
    if ratings(6) >= 0  & ratings(6) <= 100 then
        ratings(6) = ratings(6) * factor(6) / 100;
        break
    end
end

for c = 1:5
    aux = 0;
    for i = 1:unit,1
         aux = aux + ratings(c,i);
    end
    out = out + (aux / unit);
end
out = out + ratings(6);

sout = "ZZZ con toda la intención de ofender"
if out > 93 then
    sout = "A";
elseif out > 90 then
    sout = "A-";
elseif out > 87 then
    sout = "B+";
elseif out > 83 then
    sout = "B";
elseif out > 80 then
    sout = "C+";
elseif out > 77 then
    sout = "C";
elseif out > 73 then
    sout = "D+";
elseif out > 70 then
    sout = "D";
elseif out > 67 then
    sout = "D-";
elseif out > 63 then
    sout = "E";
elseif out > 60 then
    sout = "E-";
elseif out > 57 then
    sout = "F";
end

mprintf("%s\nCalificacion final: %f \n", sout, out)