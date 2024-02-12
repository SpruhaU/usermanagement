from django.db import models

#Model class for User
class Users_List(models.Model):
    
    title = models.CharField(max_length=100)

    def __str__(self) -> str:
        return self.title
    

class Groups_list(models.Model):

    title2 = models.CharField(max_length=100)

    def __str__(self) -> str:
        return self.title2
    

