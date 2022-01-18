from django.shortcuts import render, redirect
from django.contrib.auth import login, authenticate, logout
from django.contrib.auth.models import User
from homepage.models import *
from django.core.paginator import Paginator
from django.core.mail import send_mail
from django.contrib import messages
from django.core.files.storage import FileSystemStorage
from django.http import JsonResponse

def ajaxtrackcompleteactivity(request):
    flag = True
    if request.user.is_authenticated: 
        current_user = request.user
        account = Account.objects.get(username = current_user.id)
        topiclessonid = request.GET.get('topiclessonid')
        lessonid = request.GET.get('lessonid')
        activityid = request.GET.get('activityid')
        
        # Cộng 10 điểm kinh nghiệm
        account.experience += 10
        account.save()

        tracking = TrackingActivity.objects.filter(accountid = account, activityid = activityid, topiclessonid = topiclessonid, lessonid = lessonid)
        if (len(tracking) == 0):
            print ('no tracking exist')
            new_tracking = TrackingActivity()
            new_tracking.accountid = account
            new_tracking.topiclessonid = TopicLesson.objects.get(pk = topiclessonid)
            new_tracking.lessonid = Lesson.objects.get(pk = lessonid)
            new_tracking.activityid = Activity.objects.get(pk = activityid)
            new_tracking.save()
        else:
            print ('tracking exist')

    data = {
        'flag': flag,
    }
    return JsonResponse(data)

def ajaxtrackcompletelevelgame(request):
    flag = True
    if request.user.is_authenticated: 
        current_user = request.user
        account = Account.objects.get(username = current_user.id)
        gameid = request.GET.get('gameid')
        levelid = request.GET.get('levelid')
        stars = request.GET.get('stars')

        # Cộng 10 điểm kinh nghiệm
        account.experience += 10
        account.save()

        # if tracking đã tồn tại -> ghi đè tracking -> how to check tracking was exist?
        # 1 tracking thuộc về 1 account và 1 game, 1 level (qhe 1-1)
        # 1 account có 1 tracking đối với 1 game -> need creat model trackinggame ?
        # 1 account có 1 tracking đối với 1 level game (1-1)

        # check if tracking exists
        tracking = TrackingLevelGame.objects.filter(accountid = account, gameid = gameid, levelid = levelid)
        if (len(tracking) != 0):
            print ('tracking exist')
            if stars > tracking.stars:
                tracking.stars = stars
            # tracking.editdate = 
            tracking.save()            
        # else create new tracking
        else:
            print ('no tracking exist')
            new_tracking = TrackingLevelGame()
            new_tracking.accountid = account
            new_tracking.gameid = Game.objects.get(pk = gameid)
            new_tracking.levelid = GameLevel.objects.get(pk = levelid)
            new_tracking.stars = stars
            new_tracking.save()

    data = {
        'flag': flag,
    }
    return JsonResponse(data)
