.class public Lcom/twitter/android/dm/DMNotifReplyIntentService;
.super Landroid/app/IntentService;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "ReplyIntent"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 52
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()Landroid/app/NotificationManager;
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/twitter/android/dm/DMNotifReplyIntentService;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 57
    new-instance v0, Lcom/twitter/library/api/dm/requests/w;

    invoke-direct {v0}, Lcom/twitter/library/api/dm/requests/w;-><init>()V

    .line 58
    invoke-virtual {v0, p0}, Lcom/twitter/library/api/dm/requests/w;->a(Landroid/content/Context;)Lcom/twitter/library/api/dm/requests/w;

    move-result-object v0

    .line 59
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/api/dm/requests/w;->a(Lcom/twitter/library/client/Session;)Lcom/twitter/library/api/dm/requests/w;

    move-result-object v0

    .line 60
    invoke-virtual {v0, p3}, Lcom/twitter/library/api/dm/requests/w;->b(Ljava/lang/String;)Lcom/twitter/library/api/dm/requests/w;

    move-result-object v0

    .line 61
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/api/dm/requests/w;->c(Ljava/lang/String;)Lcom/twitter/library/api/dm/requests/w;

    move-result-object v0

    .line 62
    invoke-virtual {v0, p4}, Lcom/twitter/library/api/dm/requests/w;->d(Ljava/lang/String;)Lcom/twitter/library/api/dm/requests/w;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/twitter/library/api/dm/requests/w;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/api/dm/requests/s;

    .line 64
    invoke-static {p0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, p1, p2}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "messages:notifications:::send_dm"

    aput-object v3, v1, v2

    .line 66
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 65
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 67
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 35
    invoke-static {p1}, Landroid/support/v4/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 36
    const-string/jumbo v1, "extra_conversation_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-direct {p0, v0, v1}, Lcom/twitter/android/dm/DMNotifReplyIntentService;->a(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    const-string/jumbo v2, "extra_notification_reply"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    const-string/jumbo v2, "extra_owner_id"

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 41
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/twitter/android/dm/DMNotifReplyIntentService;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/dm/DMNotifReplyIntentService;->a()Landroid/app/NotificationManager;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    const-string/jumbo v1, "extra_notification_id"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 46
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 49
    :cond_1
    return-void
.end method
