.class public Lcom/twitter/android/revenue/u;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeLog;Lcom/twitter/library/scribe/TwitterScribeLog;Lcss;JJJ)V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 32
    invoke-static {p1, p2}, Lcom/twitter/util/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 34
    if-eqz p3, :cond_0

    .line 36
    invoke-virtual {p3, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->f(I)Lcom/twitter/library/scribe/ScribeLog;

    .line 37
    invoke-static {p3}, Lbjf;->a(Lbjh;)V

    .line 39
    :cond_0
    if-eqz p4, :cond_1

    .line 40
    invoke-virtual {p4, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->f(I)Lcom/twitter/library/scribe/ScribeLog;

    .line 41
    invoke-virtual {p4}, Lcom/twitter/library/scribe/TwitterScribeLog;->e()Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 43
    :cond_1
    if-eqz p5, :cond_2

    .line 44
    sget-object v0, Lcom/twitter/library/api/PromotedEvent;->s:Lcom/twitter/library/api/PromotedEvent;

    .line 45
    invoke-static {v0, p5}, Lcft;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)Lcfv;

    move-result-object v0

    invoke-virtual {v0}, Lcfv;->a()Lcft;

    move-result-object v0

    .line 46
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 53
    :cond_2
    :goto_0
    return-void

    .line 48
    :cond_3
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v0

    add-long v2, p6, p8

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 50
    invoke-virtual/range {p0 .. p11}, Lcom/twitter/android/revenue/u;->b(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeLog;Lcom/twitter/library/scribe/TwitterScribeLog;Lcss;JJJ)V

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeLog;Lcom/twitter/library/scribe/TwitterScribeLog;Lcss;JJJ)V
    .locals 8

    .prologue
    .line 62
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/client/AppBroadcastReceiver;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "app_id"

    .line 63
    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "scribe_log"

    .line 64
    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "scribe_download_log"

    .line 65
    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "promoted_content"

    sget-object v4, Lcss;->a:Lcom/twitter/util/serialization/d;

    .line 67
    invoke-static {p5, v4}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v4

    .line 66
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "timestamp"

    .line 68
    invoke-virtual {v2, v3, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "timeframe"

    .line 69
    move-wide/from16 v0, p8

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "polling_interval"

    .line 70
    move-wide/from16 v0, p10

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/card/j;->a:Ljava/lang/String;

    .line 71
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/card/j;->b:Landroid/net/Uri;

    .line 72
    invoke-static {v3, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 74
    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {p1, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 76
    const-string/jumbo v2, "alarm"

    .line 77
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 78
    const/4 v4, 0x0

    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v6

    add-long v6, v6, p10

    invoke-virtual {v2, v4, v6, v7, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 80
    return-void
.end method
