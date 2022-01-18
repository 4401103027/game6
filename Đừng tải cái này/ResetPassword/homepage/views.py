from decimal import Context
from django.shortcuts import render, redirect
from django.contrib.auth import login, authenticate, logout
from django.contrib.auth.models import User
from homepage.models import *
from django.core.paginator import Paginator
from django.core.mail import send_mail
from django.contrib import messages
from homepage.homefunction import *
import random
from django.contrib.auth.forms import (
    AuthenticationForm, PasswordChangeForm, PasswordResetForm, SetPasswordForm,
)

#sử dụng cho password reset
from django.shortcuts import render, redirect
from django.core.mail import send_mail, BadHeaderError
from django.http import HttpResponse
from django.contrib.auth.forms import PasswordResetForm
from django.contrib.auth.models import User
from django.template.loader import get_template, render_to_string
from django.db.models.query_utils import Q
from django.utils.http import urlsafe_base64_encode
from django.contrib.auth.tokens import default_token_generator
from django.utils.encoding import force_bytes
from django.contrib import messages
from django.core.mail import EmailMultiAlternatives
from django import template

# introduction
def index(request):
    users = User.objects.all()
    headers = Header.objects.all()
    context = {
        'users': users,
        'headers': headers,
    }
    return render(request, 'homepage/index.html', context)

def about(request):
    headers = Header.objects.all()
    context = {
        'headers': headers,
    }
    return render(request, 'homepage/about.html', context)

def aboutbee(request):
    headers = Header.objects.all()
    context = {
        'headers': headers,
    }   
    return render(request, 'homepage/aboutbee.html', context)

# login - logout - dashboard
new_user = User()
def myregister(request):
    message = ''
    # Nếu đã đăng nhập --> index
    if request.user.is_authenticated:
        return render(request, 'homepage/updateinfo.html')
    else:
        if request.method == 'POST':  
            username = request.POST.get('username')
            password1 = request.POST.get('password1')
            password2 = request.POST.get('password2')
            avatar = request.FILES.get('avatar')

            # Kiểm tra username, password1 và password2 có rỗng hoặc password1 != password2 hay không
            if username == '' or password1 == '' or password2 == '' or password1 != password2:
                return render(request, 'homepage/register.html')
            else:
                
                new_user.username = username
                new_user.set_password(password1)
                new_user.save()
                user = authenticate(username=username, password=password1)
                login(request, user)

                new_account = Account()
                new_account.username = new_user
                new_account.callsignid = CallSign.objects.get(pk = 1)
                new_account.password = password1
                new_account.experience = 0
                # new_account.avatar = tokenFile(avatar, username)
                new_account.avatar = tokenFile(avatar,'media/users', username ,1)

                new_account.save()
                # return render(request, 'homepage/updateinfo.html')
                return redirect('homepage:updateinfo')
        return render(request, 'homepage/register.html')

def updateinfo(request):
    if request.method == 'POST':
        firstname = request.POST.get('firstname')
        lastname = request.POST.get('lastname')
        userobject = request.POST.get('objectchoice')
        grade = request.POST.get('gradelevelchoice')
        yearofbirth = request.POST.get('yearofbirth')
        guardian = request.POST.get('guardian')
        email = request.POST.get('email')
        phone = request.POST.get('phone')

        print(userobject, grade)
        
        current_user = request.user
        account = Account.objects.get(username = current_user.id)

        new_user_detail = UserDetail()
        new_user_detail.accountid = account
        new_user_detail.lastname = lastname
        new_user_detail.firstname = firstname
        new_user_detail.objectchoice = userobject
        new_user_detail.gradelevel = grade
        new_user_detail.yearofbirth = yearofbirth
        new_user_detail.guardian = guardian
        new_user_detail.email = email
        new_user_detail.phone = phone
        new_user_detail.save()

        
        new_user.email = email
        new_user.save()
    
        # print(new_account.avatar)
        return redirect('homepage:index')
    return render(request, 'homepage/updateinfo.html')

def mylogin(request):
    if request.user.is_authenticated: 
        return redirect('homepage:index')
    else:
        if request.method == 'POST':
            # Lấy username và password
            username = request.POST.get('username')
            password = request.POST.get('password')  
            # kiểm tra xem username và password có trong dữ liệu không
            user = authenticate(username=username, password=password)
            if user is not None: # Nếu tìm thấy user có username và password đã nhập
                if user.is_active: # Tài khoản có bị vô hiệu chưa - đã/ còn hiệu lực
                    print('active')
                    login(request, user)
                    # trả về trang index
                    return redirect('homepage:index')
                else:
                    return render(request, 'homepage/login.html', {'message':'Tài khoản đã bị vô hiệu hóa'})
            else:
                return render(request, 'homepage/login.html', {'message':'Tài khoản không tồn tại'})
        return render(request, 'homepage/login.html')
    
def mylogout(request):
    # Nếu không có tài khoản nào thì không thực hiện hàm đăng xuất
    try:
        logout(request)
    except:
        pass
    # Nếu đăng xuất thành công => trả về trang đăng nhập - login
    # return render(request, 'homepage/login.html')
    return redirect('homepage:index')

def dashboard(request, id):
    user = User.objects.get(pk = id)
    account = Account.objects.get(username = id)
    userdetail = UserDetail.objects.get(accountid = account.pk)

    if request.method == 'POST': 
        avatar = request.FILES.get('avatar')
        
        account.avatar = tokenFile(avatar,'media/users', user.username ,1)
        account.save()

    context = {
        'user': user,
        'account': account,
        'userdetail': userdetail,
    }
    return render(request, 'homepage/dashboard.html', context)

def password_reset_request(request):
	if request.method == "POST":
		password_reset_form = PasswordResetForm(request.POST)
		if password_reset_form.is_valid():
			data = password_reset_form.cleaned_data['email']
			associated_users = User.objects.filter(Q(email=data)|Q(username=data))
			if associated_users.exists():
				for user in associated_users:
					subject = "Password Reset Requested"
					plaintext = template.loader.get_template('homepage/password_message.txt')
					htmltemp = template.loader.get_template('homepage/password_message.html')
					c = { 
					"email":user.email,
					'domain':'127.0.0.1:8000',
					'site_name': 'SmartTying',
					"uid": urlsafe_base64_encode(force_bytes(user.pk)),
					"user": user,
					'token': default_token_generator.make_token(user),
					'protocol': 'http',
					}
					text_content = plaintext.render(c)
					html_content = htmltemp.render(c)
					try:
						msg = EmailMultiAlternatives(subject, text_content, '', [user.email], headers = {'Reply-To': 'admin@example.com'})
						msg.attach_alternative(html_content, "text/html")
						msg.send()
					except BadHeaderError:
						return HttpResponse('Invalid header found.')
					messages.info(request, "Password reset instructions have been sent to the email address entered.")
					return redirect ("password_reset_done")
	password_reset_form = PasswordResetForm()
	return render(request=request, template_name="homepage/password_reset.html", context={"password_reset_form":password_reset_form})

# lessons
def lesson(request):
    topiclessons = {}
    for i in TopicLesson.objects.all():
        topiclessons[i] = Lesson.objects.filter(topiclessonid=i)
    context = {
        'topiclessons': topiclessons,
    }

    # dang nhap -> ktra tracking theo user, lesson -> dung filter trackingactivity

    if request.user.is_authenticated: 
        current_user = request.user
        account = Account.objects.get(username = current_user.id)

        # tracking theo lesson -> thanh tien do lesson hoac mo khoa lesson on tap trong chu de do
        # tracking theo chu de -> mo khoa chu de tiep theo

        for topic in topiclessons:
            # for lesson in lessons:
            for lesson in topiclessons[topic]: 
                activities = Activity.objects.filter(lessonid = lesson)
                tracking = TrackingActivity.objects.filter(accountid = account, lessonid = lesson)
                if len(tracking) != 0:
                    print(len(tracking)/len(activities)*100)
                    lesson.percent = len(tracking)/len(activities)*100
                else:
                    lesson.percent = 0
        # level_tracking = []
        # for i in tracking:
        #     level_tracking.append(i.levelid)
        # # check if level has tracking
        # for level in levels:
        #     if level in level_tracking:
        #         stars = tracking.get(levelid = level).stars
        #         new_link = level.image.split('.')
        #         level.image = new_link[0] + '_' + str(stars) + '.' + new_link[1]
    else:
        pass

    return render(request, 'homepage/lesson.html', context)

def lessondetail(request, id1, id2):
    topiclesson = TopicLesson.objects.get(pk=id1)
    lesson = Lesson.objects.get(pk=id2)
    activities = Activity.objects.filter(lessonid=id2).order_by('activityorder')
    context = {
        'topiclesson': topiclesson,
        'lesson': lesson,
        'activities': activities,
    }
    return render(request, 'homepage/lessondetail.html', context)

def activitydetail(request, id1, id2, id3):
    topiclesson = TopicLesson.objects.get(pk=id1)
    lesson = Lesson.objects.get(pk=id2)    
    activity = Activity.objects.get(activityid=id3)
    context = {
        'topiclesson': topiclesson,
        'lesson': lesson,
        'activity': activity,
    }
    return render(request, 'homepage/activitydetail.html', context)

# game practices
def practice(request):
    topicpractices = {}
    for i in TopicPractice.objects.all():
        topicpractices[i] = Game.objects.filter(topicpracticeid=i)
    context = {
        'topicpractices': topicpractices,
    }
    return render(request, 'homepage/practice.html', context)

def practicelevel(request, id):
    game = Game.objects.get(pk=id)
    levels = GameLevel.objects.filter(gameid=id)

    if request.user.is_authenticated: 
        current_user = request.user
        account = Account.objects.get(username = current_user.id)
        tracking = TrackingLevelGame.objects.filter(accountid = account, gameid = game)
        level_tracking = []
        for i in tracking:
            level_tracking.append(i.levelid)
        # check if level has tracking
        for level in levels:
            if level in level_tracking:
                stars = tracking.get(levelid = level).stars
                new_link = level.image.split('.')
                level.image = new_link[0] + '_' + str(stars) + '.' + new_link[1]
    else:
        pass

    context = {
        'game': game,
        'levels': levels,
    }
    return render(request, 'homepage/practicelevel.html', context)

def practicedetail(request, id1, id2):
    game = Game.objects.get(pk=id1)
    level = GameLevel.objects.get(pk=id2)
    hidemenu = True
    context = {
        'game': game,
        'level': level,
    }
    return render(request, 'homepage/practicedetail.html', context)

# test
def test(request):
    # timetest = TimeTest.objects.all()
    timetest1 = TimeTest.objects.filter(isenable = 1)[:3]
    timetest2 = TimeTest.objects.filter(isenable = 1)[3:]
    contenttest = ContentTest.objects.all()
    context = {
        'timetest1': timetest1,
        'timetest2': timetest2,
        'contenttest': contenttest,
    }
    return render(request, 'homepage/test.html', context)

def timetestdetail(request, id):
    test = TimeTest.objects.get(pk=id)
    context = {
        'test': test,
    }
    return render(request, 'homepage/testdetail.html', context)

def contenttestdetail(request, id):
    contenttest = ContentTest.objects.get(pk=id)
    context = {
        'test': test,
    }
    return render(request, 'homepage/testdetail.html', context)

def competition(request):
    competitions = Competition.objects.filter(isenable=1).order_by('createdate')
    context = {
        'competitions': competitions,
    }
    return render(request, 'homepage/competition.html', context)

def news(request):
    news = News.objects.all()
    if 'q' in request.GET:
        q=request.GET['q']
        posts=News.objects.filter(title__icontains=q)
    else:
        posts=News.objects.all().order_by("-createdate")
    # Pagintion
    paginator=Paginator(posts,3)
    page_number=request.GET.get('page')
    page_obj=paginator.get_page(page_number)
    
    context = {
       # 'blogcategorylist': blogcategorylist,
        'page_obj':page_obj,
        'news': news,        
    }
    return render(request, 'homepage/news.html', context)

   

def newsdetail(request, id):
    news = News.objects.get(pk=id)
    context = {
        'news': news
    }
    return render(request, 'homepage/newsdetail.html', context)

def document(request):
    documents = Document.objects.all()
    if 'q' in request.GET:
        q=request.GET['q']
        posts=Document.objects.filter(title__icontains=q)
    else:
        posts=Document.objects.all().order_by("-createdate")
    # Pagintion
    paginator=Paginator(posts,3)
    page_number=request.GET.get('page')
    page_obj=paginator.get_page(page_number)
    context = {
        'page_obj':page_obj,
        'documents': documents
    }
    return render(request, 'homepage/document.html', context)

def docdetail(request, id):
    document = Document.objects.get(pk=id)
    context = {
        'document': document
    }
    return render(request, 'homepage/docdetail.html', context)

def support(request):
    if 'q' in request.GET:
        q=request.GET['q']
        posts=News.objects.filter(metaKeywords__icontains=q)
    else:
        posts=News.objects.all().order_by("-createdate")
    # Pagintion
    paginator=Paginator(posts,3)
    page_number=request.GET.get('page')
    page_obj=paginator.get_page(page_number)
    context = {
        'page_obj':page_obj,
    }
    return render(request, 'homepage/support.html', context)

def faq(request):
    questions = FAQ.objects.all()
    context = {
        'questions':questions,
    }
    return render(request, 'homepage/faq.html', context)

def contact(request):
    # form = ContactForm()
    # if request.method == 'POST':
    #     form=ContactForm(request.POST)
    #     if form.is_valid():
    #         name = form.cleaned_data['name']
    #         email = form.cleaned_data['email']
    #         message = form.cleaned_data['messages']
    #         date = timezone.now()
    #         obj=Contact()
    #         obj.date=date
    #         obj.name=name
    #         obj.email=email
    #         obj.messages=message
    #         obj.save()
    #         contact ={'message': 'Cảm ơn phản hồi của bạn'}
    #         return render(request,'homepage/feedback.html',contact)
    #         #messages.success(request,"Cảm ơn phản hồi của bạn"
    # context={'form' :form}
    # return render(request,'homepage/contact.html',context)
    # if request.method == 'POST':
    #     # form = FormContact()
    #     message = 'Cảm ơn phản hồi của bạn'
    #     context = {
    #         'message': message,
    #     }
    #     return render(request,'homepage/support.html',context)
    return render(request,'homepage/contact.html')

def feedback(request):
    pass
    # return render(request,'homepage/feedback.html',contact)
