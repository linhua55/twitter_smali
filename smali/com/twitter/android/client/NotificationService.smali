.class public Lcom/twitter/android/client/NotificationService;
.super Landroid/app/Service;
.source "Twttr"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;

.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private l:Lcom/twitter/android/client/al;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twitter/config/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".notif.dismiss"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/client/NotificationService;->a:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twitter/config/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".notif.undo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/client/NotificationService;->b:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twitter/config/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".notif.reply"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/client/NotificationService;->c:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twitter/config/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".notif.retweet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/client/NotificationService;->d:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twitter/config/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".notif.favorite"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/client/NotificationService;->e:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twitter/config/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".notif.follow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/client/NotificationService;->f:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twitter/config/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".notif.follow.accept"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/client/NotificationService;->g:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twitter/config/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".notif.follow.decline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/client/NotificationService;->h:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twitter/config/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".notif.tweetTo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/client/NotificationService;->i:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twitter/config/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".notif.open"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/client/NotificationService;->j:Ljava/lang/String;

    .line 120
    invoke-static {}, Lcom/twitter/util/collection/v;->e()Lcom/twitter/util/collection/v;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/client/NotificationService;->a:Ljava/lang/String;

    const/4 v2, 0x0

    .line 121
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/client/NotificationService;->b:Ljava/lang/String;

    const/4 v2, 0x1

    .line 122
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/client/NotificationService;->c:Ljava/lang/String;

    .line 123
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/client/NotificationService;->d:Ljava/lang/String;

    .line 124
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/client/NotificationService;->e:Ljava/lang/String;

    .line 125
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/client/NotificationService;->f:Ljava/lang/String;

    .line 126
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/client/NotificationService;->g:Ljava/lang/String;

    .line 127
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/client/NotificationService;->h:Ljava/lang/String;

    .line 128
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/client/NotificationService;->i:Ljava/lang/String;

    .line 129
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/client/NotificationService;->j:Ljava/lang/String;

    const/4 v2, 0x3

    .line 130
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/twitter/android/client/NotificationService;->k:Ljava/util/Map;

    .line 120
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a(Landroid/app/PendingIntent;)V
    .locals 2

    .prologue
    .line 290
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V

    .line 294
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/twitter/android/client/NotificationService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 401
    const-string/jumbo v0, "sb_account_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 402
    const-string/jumbo v0, "sb_notification"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/notifications/StatusBarNotif;

    .line 405
    const-string/jumbo v1, "android_push_notification_disaggregation_2520"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "one"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "one_five"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "two"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "two_five"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "three"

    aput-object v6, v4, v5

    .line 406
    invoke-static {v1, v4}, Lcom/twitter/config/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 414
    invoke-static {}, Lcom/twitter/app/common/util/f;->a()Lcom/twitter/app/common/util/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/app/common/util/f;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 415
    const-string/jumbo v1, "notif_scribe_log"

    .line 419
    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 420
    if-eqz v1, :cond_0

    .line 421
    invoke-static {v1}, Lbjf;->a(Lbjh;)V

    .line 424
    :cond_0
    invoke-static {}, Lzk;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 425
    const-string/jumbo v1, "notif_scribe_log_for_preview_experiment"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 427
    if-eqz v1, :cond_1

    .line 428
    invoke-static {v1}, Lbjf;->a(Lbjh;)V

    .line 431
    :cond_1
    invoke-static {p0}, Lcom/twitter/android/client/y;->a(Landroid/content/Context;)Lcom/twitter/android/client/y;

    move-result-object v1

    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->N()[I

    move-result-object v0

    invoke-virtual {v1, v0, v2, v3}, Lcom/twitter/android/client/y;->a([IJ)V

    .line 432
    return-void

    .line 417
    :cond_2
    const-string/jumbo v1, "notif_scribe_log_from_background"

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 301
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    const-string/jumbo v1, "sb_account_id"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/client/bk;->b(J)Lcom/twitter/library/client/Session;

    move-result-object v3

    .line 302
    const/4 v1, 0x0

    .line 303
    sget-object v0, Lcom/twitter/android/client/NotificationService;->e:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    new-instance v1, Lbrp;

    const-string/jumbo v0, "status_id"

    .line 305
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo v0, "rt_status_id"

    .line 306
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lbrp;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JJ)V

    .line 322
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 323
    const-string/jumbo v0, "Notification actions are triggered by user actions. The app may or may not be visible."

    invoke-virtual {v1, v0}, Lcom/twitter/library/service/x;->l(Ljava/lang/String;)Lcom/twitter/library/service/x;

    .line 325
    invoke-static {p1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 327
    :cond_1
    return-void

    .line 307
    :cond_2
    sget-object v0, Lcom/twitter/android/client/NotificationService;->f:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 308
    const-string/jumbo v0, "user_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 309
    new-instance v1, Lbtz;

    const/4 v6, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lbtz;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;)V

    goto :goto_0

    .line 310
    :cond_3
    sget-object v0, Lcom/twitter/android/client/NotificationService;->d:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 311
    const-string/jumbo v0, "status_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 312
    const-string/jumbo v0, "ref_status_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 313
    new-instance v1, Lbti;

    const/4 v8, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lbti;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JJLcss;)V

    goto :goto_0

    .line 314
    :cond_4
    sget-object v0, Lcom/twitter/android/client/NotificationService;->g:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/twitter/android/client/NotificationService;->h:Ljava/lang/String;

    .line 315
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    :cond_5
    const-string/jumbo v0, "user_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 317
    sget-object v0, Lcom/twitter/android/client/NotificationService;->g:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v6, 0x1

    .line 320
    :goto_1
    new-instance v1, Lbun;

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lbun;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JI)V

    goto :goto_0

    .line 317
    :cond_6
    const/4 v6, 0x2

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Lcom/twitter/android/client/notifications/StatusBarNotif;Ljava/lang/String;ILcom/twitter/library/scribe/TwitterScribeLog;)V
    .locals 6

    .prologue
    .line 331
    invoke-virtual {p1}, Lcom/twitter/android/client/notifications/StatusBarNotif;->w()I

    move-result v1

    .line 332
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/client/NotificationService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lcom/twitter/android/client/NotificationService;->b:Ljava/lang/String;

    .line 333
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sget-object v2, Lcom/twitter/library/provider/dc;->a:Landroid/net/Uri;

    .line 335
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 334
    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "sb_notification"

    .line 336
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "notif_scribe_log"

    .line 337
    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 338
    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 340
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/twitter/config/a;->a()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f04025f

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 341
    const v3, 0x7f130594

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 342
    const v0, 0x7f13006d

    invoke-virtual {v2, v0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 343
    const v0, 0x7f1300e2

    invoke-virtual {v2, v0, p3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 344
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 345
    invoke-virtual {p1}, Lcom/twitter/android/client/notifications/StatusBarNotif;->D()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 346
    invoke-virtual {p1}, Lcom/twitter/android/client/notifications/StatusBarNotif;->x()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 347
    invoke-virtual {v0, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 348
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 349
    const-string/jumbo v0, "notification"

    .line 350
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 351
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 352
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/client/NotificationService;Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/client/NotificationService;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 140
    new-instance v0, Lcom/twitter/android/client/al;

    invoke-virtual {p0}, Lcom/twitter/android/client/NotificationService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/android/client/al;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/twitter/android/client/NotificationService;->l:Lcom/twitter/android/client/al;

    .line 141
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 13

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 171
    if-nez p1, :cond_0

    .line 172
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "Intent is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 173
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/twitter/android/client/NotificationService;->stopSelf(I)V

    move v2, v10

    .line 285
    :goto_0
    return v2

    .line 176
    :cond_0
    sget-object v2, Lcom/twitter/android/client/NotificationService;->k:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 177
    if-nez v2, :cond_1

    .line 178
    invoke-virtual {p1, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    .line 179
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IMAGE-818: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 181
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/twitter/android/client/NotificationService;->stopSelf(I)V

    move v2, v10

    .line 182
    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/client/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 185
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 186
    invoke-static {v5}, Lcom/twitter/android/client/y;->a(Landroid/content/Context;)Lcom/twitter/android/client/y;

    move-result-object v7

    .line 191
    :try_start_0
    const-string/jumbo v3, "sb_notification"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/twitter/android/client/notifications/StatusBarNotif;

    move-object v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 284
    :cond_2
    :goto_1
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/twitter/android/client/NotificationService;->stopSelf(I)V

    move v2, v10

    .line 285
    goto :goto_0

    .line 192
    :catch_0
    move-exception v2

    .line 193
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/twitter/android/client/NotificationService;->stopSelf(I)V

    move v2, v10

    .line 194
    goto :goto_0

    .line 199
    :pswitch_0
    if-eqz v8, :cond_2

    .line 200
    invoke-static {v5, v6}, Lcom/twitter/android/client/NotificationService;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 201
    instance-of v2, v8, Lcom/twitter/android/client/notifications/StoriesNotif;

    if-eqz v2, :cond_2

    .line 202
    invoke-virtual {v8}, Lcom/twitter/android/client/notifications/StatusBarNotif;->v()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Lcom/twitter/android/client/y;->b(J)V

    goto :goto_1

    .line 208
    :pswitch_1
    if-eqz v8, :cond_2

    .line 211
    invoke-virtual {v8}, Lcom/twitter/android/client/notifications/StatusBarNotif;->w()I

    move-result v2

    .line 212
    iget-object v3, p0, Lcom/twitter/android/client/NotificationService;->l:Lcom/twitter/android/client/al;

    invoke-virtual {v3, v2}, Lcom/twitter/android/client/al;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 213
    iget-object v3, p0, Lcom/twitter/android/client/NotificationService;->l:Lcom/twitter/android/client/al;

    invoke-virtual {v3, v2}, Lcom/twitter/android/client/al;->removeMessages(I)V

    .line 214
    const-string/jumbo v2, "notif_scribe_log"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 215
    if-eqz v2, :cond_3

    .line 216
    new-array v3, v4, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_undo"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 217
    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    .line 219
    :cond_3
    invoke-virtual {v7, v8}, Lcom/twitter/android/client/y;->b(Lcom/twitter/android/client/notifications/StatusBarNotif;)V

    goto :goto_1

    .line 224
    :pswitch_2
    if-eqz v8, :cond_2

    .line 229
    const-string/jumbo v2, "notif_scribe_log"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 230
    const-string/jumbo v3, "notif_scribe_action_tap"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 231
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 232
    invoke-virtual {v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a()Ljava/lang/String;

    move-result-object v3

    .line 233
    new-array v7, v4, [Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "_tap"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    invoke-virtual {v2, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 234
    invoke-static {v2}, Lbjf;->a(Lbjh;)V

    .line 235
    new-array v7, v4, [Ljava/lang/String;

    aput-object v3, v7, v9

    invoke-virtual {v2, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 237
    :cond_4
    const-string/jumbo v3, "action_intent"

    .line 238
    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 239
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 240
    if-eqz v3, :cond_5

    .line 241
    :goto_2
    const-string/jumbo v11, "undo_allowed"

    invoke-virtual {v6, v11, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 242
    if-eqz v4, :cond_6

    .line 243
    invoke-direct {p0, v3}, Lcom/twitter/android/client/NotificationService;->a(Landroid/app/PendingIntent;)V

    goto/16 :goto_1

    :cond_5
    move v4, v9

    .line 240
    goto :goto_2

    .line 244
    :cond_6
    if-eqz v11, :cond_7

    .line 245
    const-string/jumbo v3, "undo_text"

    .line 246
    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "undo_icon"

    .line 247
    invoke-virtual {v6, v4, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 245
    invoke-static {v5, v8, v3, v4, v2}, Lcom/twitter/android/client/NotificationService;->a(Landroid/content/Context;Lcom/twitter/android/client/notifications/StatusBarNotif;Ljava/lang/String;ILcom/twitter/library/scribe/TwitterScribeLog;)V

    .line 249
    new-instance v2, Lcom/twitter/android/client/ak;

    move-object v3, p0

    move/from16 v4, p3

    invoke-direct/range {v2 .. v7}, Lcom/twitter/android/client/ak;-><init>(Lcom/twitter/android/client/NotificationService;ILandroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 259
    iget-object v3, p0, Lcom/twitter/android/client/NotificationService;->l:Lcom/twitter/android/client/al;

    iget-object v4, p0, Lcom/twitter/android/client/NotificationService;->l:Lcom/twitter/android/client/al;

    .line 260
    invoke-virtual {v8}, Lcom/twitter/android/client/notifications/StatusBarNotif;->w()I

    move-result v5

    invoke-virtual {v4, v5, v2}, Lcom/twitter/android/client/al;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x1388

    .line 259
    invoke-virtual {v3, v2, v4, v5}, Lcom/twitter/android/client/al;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 262
    const/4 v2, 0x3

    goto/16 :goto_0

    .line 264
    :cond_7
    invoke-static {v5, v6}, Lcom/twitter/android/client/NotificationService;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 265
    invoke-direct {p0, v5, v6, v7}, Lcom/twitter/android/client/NotificationService;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 270
    :pswitch_3
    if-eqz v8, :cond_2

    .line 273
    invoke-static {v5, v6}, Lcom/twitter/android/client/NotificationService;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 274
    const-string/jumbo v2, "action_intent"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 275
    if-eqz v2, :cond_2

    .line 276
    invoke-direct {p0, v2}, Lcom/twitter/android/client/NotificationService;->a(Landroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
