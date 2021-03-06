
    Teacher.create(first_name: "Jillian", last_name: "Keeling", alter_ego: "Sherah")
    Teacher.create(first_name: "Daniel", last_name: "Carning", alter_ego: "Lycanthrope")
    Teacher.create(first_name: "Blair", last_name: "Weber", alter_ego: "White Queen")
    Teacher.create(first_name: "Deondre", last_name: "Tromp", alter_ego: "Ziggy Stardust")
    Teacher.create(first_name: "Aaron", last_name: "Hamill", alter_ego: "Lycanthrope")

    Student.create(teacher_id: 3,
    first_name: "Bella",
    last_name: "Lockman",
    age: 93,
    current_score: 9,
    magical: false,
    teacher_id: 1)

    Student.create(teacher_id: 2,
    first_name: "Rosa",
    last_name: "Streich",
    age: 48,
    current_score: 9,
    magical: false ,
    teacher_id: 2)

    Student.create(teacher_id: 2,
    first_name: "Elnora",
    last_name: "Anderson",
    age: 64,
    current_score: 8,
    magical: true ,
    teacher_id: 3)

    Student.create(teacher_id: 2,
    first_name: "Shayna",
    last_name: "Mann",
    age: 96,
    current_score: 7,
    magical: false,
    teacher_id: 4)

    Student.create(teacher_id: 3,
    first_name: "Kirk",
    last_name: "Parisian",
    age: 76,
    current_score: 5,
    magical: false,
    teacher_id: 1)

    Student.create(teacher_id: 3,
    first_name: "Marley",
    last_name: "Wiegand",
    age: 41,
    current_score: 2,
    magical: true,
    teacher_id: 2)

    Student.create(teacher_id: 3,
    first_name: "Jamaal",
    last_name: "Weissnat",
    age: 54,
    current_score: 3,
    magical: true,
    teacher_id: 5)

    Student.create(teacher_id: 1,
    first_name: "Aimee",
    last_name: "Moen",
    age: 51,
    current_score: 1,
    magical: false ,
    teacher_id: 5)
