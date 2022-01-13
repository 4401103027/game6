from django.contrib import admin
from .models import *

admin.site.register(Character)
admin.site.register(Word)
admin.site.register(Text)
admin.site.register(CallSign)
admin.site.register(Account)
admin.site.register(UserDetail)

@admin.register(TopicLesson)
class TopicLessonAdmin(admin.ModelAdmin):
    list_display = ('topiclessonid', 'topicorder', 'name', 'description')

@admin.register(Lesson)
class LessonAdmin(admin.ModelAdmin):
    list_display = ('lessonid', 'lessonorder', 'name', 'description')

@admin.register(Activity)
class ActivityAdmin(admin.ModelAdmin):
    list_display = ('activityid', 'activityorder', 'name', 'description', 'lessonid')

admin.site.register(LessonBadge)

@admin.register(TopicPractice)
class TopicPracticeAdmin(admin.ModelAdmin):
    list_display = ('topicpracticeid', 'topicorder', 'name', 'description')

@admin.register(Game)
class GameAdmin(admin.ModelAdmin):
    list_display = ('gameid', 'gameorder', 'name', 'description', 'topicpracticeid')

@admin.register(GameLevel)
class GameLevelAdmin(admin.ModelAdmin):
    list_display = ('levelid', 'levelorder', 'name', 'gameid')

# admin.site.register(PracticeBadge)
admin.site.register(Competition)
# admin.site.register(CompetitionBadge)
admin.site.register(TimeTest)
admin.site.register(ContentTest)
admin.site.register(Document)
admin.site.register(News)
# admin.site.register(Contact)
