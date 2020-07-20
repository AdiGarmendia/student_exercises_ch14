from cohort import Cohort
from exercise import Exercise
from instructor import Instructor
from student import Student

cthulu = Exercise("Cthulu", "Vanilla JavaScript")
kandy_korner = Exercise("Kandy Korner", "React")
glassdale = Exercise("Glassdale", "Vanilla JavaScript")
critters = Exercise("Critters and Croquettes", "Python")

exercises = [cthulu, kandy_korner, glassdale, critters]


c37 = Cohort("Cohort day 37")
c40 = Cohort("Cohort day 40")
c41 = Cohort("Cohort day 41 ")

dwight = Student("Dwight", "Schrutte", "beet_farmer", c37)
reptar = Student("King", "Reptar", "king_of_dinosaurs", c40)
puig = Student("Yasiel", "Puig", "fear_of_commitment", c41)
capn = Student("Captain", "Crunch", "simply_the_best", c40)

tony = Instructor("Tony", "Perez", "HoFer", "long bombs", c37)
count = Instructor("Count", "von Count", "1234", "counting ah ah ah", c40)
andre = Instructor("Andre", "3000", "BoB", "Ice Cold", c41)

c37.students.extend([dwight, ])
c40.students.extend([reptar, capn ])
c41.students.extend([puig, ])

c37.instructors.extend([tony])
c40.instructors.extend([count])
c41.instructors.extend([andre])

tony.add_exercises(dwight, [cthulu, glassdale])
count.add_exercises(reptar, [kandy_korner, critters])
count.add_exercises(capn, [critters, glassdale])
andre.add_exercises(puig, [kandy_korner, critters])

students = [dwight, reptar, puig, capn]
for person in students:
    print(f"{person.first_name} {person.last_name}")

for work in exercises:
    print(f"{work.name} uses {work.language}.")

def print_report():
    for student in students:
        exercises = []
        for exercise in student.exercise:
            exercises.append(exercise.name)
        print(f"{student.first_name} {student.last_name} is currently working on {' and '.join(exercises)}.")


print_report()