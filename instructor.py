from nss_person import NSSPerson

class Instructor(NSSPerson):

    def __init__(self, first, last, slack, cohort, specialty):
        super().__init__(first, last, slack, cohort)
        self.speciality = specialty
        
    def add_exercises(self, student, exercise):
        student.exercise.extend(exercise)
