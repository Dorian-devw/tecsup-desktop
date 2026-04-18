let students = [
  {
    id: 1,
    name: "Frank Sinca",
    email: "frank.sinca@ejemplo.com",
    course: "Diseño y Desarrollo de Software C24",
    phone: "+51 987654321",
    grade: 20,
    status: "Activo"
  },
  {
    id: 2,
    name: "Roberto MAS",
    email: "roberto.mas@ejemplo.com",
    course: "Diseño y Desarrollo de Software C24",
    phone: "+51 912345678",
    grade: 16,
    status: "Activo"
  },
  {
    id: 3,
    name: "Jaime Farfan",
    email: "luis.gomez@ejemplo.com",
    course: "Diseño y Desarrollo de Software C24",
    phone: "+51 976543210",
    grade: 14,
    status: "Inactivo"
  },
  {
    id: 4,
    name: "Edwin Arevalo",
    email: "maria.lopez@ejemplo.com",
    course: "Diseño y Desarrollo de Software C24",
    phone: "+51 934567890",
    grade: 18,
    status: "Activo"
  }
];


function getAll() {
  return students;
}

function getById(id) {
  return students.find(s => s.id === id);
}

function create(student) {
  if (!student.name || !student.email || !student.course || !student.phone) {
    throw new Error("Campos obligatorios: nombre, correo, carrera y celular");
  }
  student.id = students.length + 1;
  students.push(student);
  return student;
}

function update(id, newData) {
  const index = students.findIndex(s => s.id === id);
  if (index === -1) return null;
  students[index] = { ...students[index], ...newData };
  return students[index];
}

function remove(id) {
  const index = students.findIndex(s => s.id === id);
  if (index === -1) return null;
  const deleted = students[index];
  students.splice(index, 1);
  return deleted;
}

function listByStatus(status) {
  return students.filter(s => s.status === status);
}

function listByGrade(minGrade) {
  return students.filter(s => s.grade >= minGrade);
}

module.exports = { getAll, getById, create, update, remove, listByStatus, listByGrade };