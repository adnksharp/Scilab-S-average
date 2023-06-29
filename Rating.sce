m = 0;
n = 0;
u = 0;
fact = [];
val = []
average = [];
class = [];
name = [];

mprintf("\tPromedio de notas de los alumnos\n\nCantidad de factores a considerar:");
m = strtod(input("--", "s"));
if m < 1 then
	mprintf("Error: la cantidad de factores debe ser mayor o igual a 1\n");
	return;
end


for i = 1:m,
	mprintf("Ingrese el nombre del factor %d considerado: ", i);
	fact(i) = input("--", "s");
end
for i = 1:m,
	while 1,
		mprintf("Ingrese el peso del factor %s: ", fact(i));
		val(i) = strtod(input("--", "s"));
		if val(i) <= 0 then
			mprintf("Error: el peso debe ser mayor o igual a 0\n");
		else
			break;
		end
	end
end

val = val / sum(val);

while 1,
	mprintf("\nIngrese el número de alumnos a considerar: ");
	n = strtod(input("--", "s"));
	if n < 1 then
		mprintf("Error: el número de alumnos debe ser mayor o igual a 1\n");
	else
		break;
	end
end

while 1,
	mprintf("Ingrese el número de unidades a considerar: ");
	u = strtod(input("--", "s"));
	if u < 1 then
		mprintf("Error: el número de unidades debe ser mayor o igual a 1\n");
	else
		break;
	end
end

for i = 1:u,
	for j = 1:m,
		for k = 1:n,
			class(i, j, k) = 0;
		end
	end
end

for k = 1:n,
	mprintf("\nIngrese el nombre del alumno: ");
	name(k) = input("--", "s");
	for i = 1:u,
		average(i, k) = 0;
		for j = 1:m,
			mprintf("Ingrese la calificación de %s (U%d): ", fact(j), i);
			while 1,
				class(i, j, k) = strtod(input("--", "s"));
				if class(i, j, k) < 0 | class(i, j, k) > 10 then
					mprintf("Error: la calificación debe ser mayor a 0 y menor o igual a 10\n");
				else
					break;
				end
			end
			average(i, k) = average(i, k) + class(i, j, k) * val(j);
		end	
	end
	a(k) = sum(average(:, k)) / u;
end

for i = 1:n,
	mprintf("\n\n\nAlumno: %s\n", name(i));
	mprintf("Calificación final: %g\n\nfact\t", a(i));
	for j = 1:u,
		mprintf("\tU%d", j);
	end
	mprintf("\n");
	for j = 1:m,
		mprintf("%s", fact(j));
		for k = 1:u,
			mprintf("\t%g", class(k, j, i));
		end
		mprintf("\n");
	end
	mprintf("total\t");
	for j = 1:u,
		mprintf("\t%g", average(j, i));
	end
end
