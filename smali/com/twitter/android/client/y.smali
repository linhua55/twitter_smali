.class public Lcom/twitter/android/client/y;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/media/request/c;


# static fields
.field private static a:Lcom/twitter/android/client/y;


# instance fields
.field private final b:Lcom/twitter/android/client/c;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private c:Lcom/twitter/library/media/manager/l;

.field private final d:Landroid/content/Context;

.field private e:Landroid/app/NotificationManager;

.field private f:Lcom/twitter/library/client/bk;

.field private final g:Ljava/util/Map;
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

.field private final h:Lcom/twitter/android/client/ad;

.field private final i:Lcom/twitter/library/client/bj;

.field private final j:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/twitter/android/client/notifications/StatusBarNotif;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/twitter/android/client/notifications/StatusBarNotif;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/twitter/library/client/bd;

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/android/client/aj;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Landroid/os/Handler;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 196
    invoke-static {p1}, Lcom/twitter/android/client/c;->a(Landroid/content/Context;)Lcom/twitter/android/client/c;

    move-result-object v2

    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v3

    .line 197
    invoke-static {p1}, Lcom/twitter/library/media/manager/l;->a(Landroid/content/Context;)Lcom/twitter/library/media/manager/l;

    move-result-object v4

    invoke-static {p1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 196
    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/client/y;-><init>(Landroid/content/Context;Lcom/twitter/android/client/c;Lcom/twitter/library/client/bk;Lcom/twitter/library/media/manager/l;Lcom/twitter/library/client/bd;)V

    .line 198
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/twitter/android/client/c;Lcom/twitter/library/client/bk;Lcom/twitter/library/media/manager/l;Lcom/twitter/library/client/bd;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/client/y;->g:Ljava/util/Map;

    .line 178
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/client/y;->j:Landroid/util/SparseArray;

    .line 179
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/client/y;->k:Landroid/util/SparseArray;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/client/y;->m:Ljava/util/List;

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/client/y;->o:Ljava/util/Map;

    .line 186
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/twitter/android/client/y;->p:Landroid/os/Handler;

    .line 203
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    .line 204
    invoke-virtual {p0, p1}, Lcom/twitter/android/client/y;->b(Landroid/content/Context;)V

    .line 205
    iput-object p2, p0, Lcom/twitter/android/client/y;->b:Lcom/twitter/android/client/c;

    .line 206
    iput-object p3, p0, Lcom/twitter/android/client/y;->f:Lcom/twitter/library/client/bk;

    .line 207
    iput-object p4, p0, Lcom/twitter/android/client/y;->c:Lcom/twitter/library/media/manager/l;

    .line 208
    iput-object p5, p0, Lcom/twitter/android/client/y;->l:Lcom/twitter/library/client/bd;

    .line 209
    new-instance v0, Lcom/twitter/android/client/ad;

    invoke-direct {v0, p0, v2}, Lcom/twitter/android/client/ad;-><init>(Lcom/twitter/android/client/y;Lcom/twitter/android/client/z;)V

    iput-object v0, p0, Lcom/twitter/android/client/y;->h:Lcom/twitter/android/client/ad;

    .line 210
    new-instance v0, Lcom/twitter/android/client/ae;

    invoke-direct {v0, p0, v2}, Lcom/twitter/android/client/ae;-><init>(Lcom/twitter/android/client/y;Lcom/twitter/android/client/z;)V

    iput-object v0, p0, Lcom/twitter/android/client/y;->i:Lcom/twitter/library/client/bj;

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/client/y;->n:Ljava/util/Map;

    .line 212
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/client/y;)Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/twitter/android/client/y;->e:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private a(ILandroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/twitter/android/client/y;->a(Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/twitter/library/client/Session;JLcom/twitter/android/client/ai;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 8

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 951
    iget-object v0, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    iget v1, p4, Lcom/twitter/android/client/ai;->h:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 952
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f02065f

    .line 953
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    .line 954
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1200f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 955
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 956
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p4, Lcom/twitter/android/client/ai;->g:Ljava/lang/String;

    .line 957
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-boolean v1, p4, Lcom/twitter/android/client/ai;->a:Z

    .line 958
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 960
    iget-object v0, p4, Lcom/twitter/android/client/ai;->c:Landroid/content/Intent;

    if-eqz v0, :cond_4

    iget-object v0, p4, Lcom/twitter/android/client/ai;->c:Landroid/content/Intent;

    .line 964
    :goto_0
    iget-object v2, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    invoke-static {v2, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 966
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    .line 967
    if-eqz v0, :cond_0

    .line 968
    iget-object v2, p0, Lcom/twitter/android/client/y;->c:Lcom/twitter/library/media/manager/l;

    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->e:Ljava/lang/String;

    const/4 v3, -0x3

    .line 969
    invoke-static {v0, v3}, Lcom/twitter/library/media/manager/UserImageRequest;->a(Ljava/lang/String;I)Lcom/twitter/media/request/b;

    move-result-object v0

    .line 968
    invoke-virtual {v2, v0}, Lcom/twitter/library/media/manager/l;->b(Lcom/twitter/media/request/b;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 970
    if-eqz v0, :cond_0

    .line 971
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 975
    :cond_0
    iget-boolean v0, p4, Lcom/twitter/android/client/ai;->f:Z

    if-eqz v0, :cond_1

    .line 976
    const/16 v0, 0x64

    const/4 v2, 0x1

    invoke-virtual {v1, v5, v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 977
    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 980
    :cond_1
    iget-object v0, p4, Lcom/twitter/android/client/ai;->b:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 981
    const v0, 0x7f020235

    iget-object v2, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    const v3, 0x7f0a00fd

    .line 983
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    iget-object v4, p4, Lcom/twitter/android/client/ai;->b:Landroid/content/Intent;

    .line 984
    invoke-static {v3, v5, v4, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 981
    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 991
    :cond_2
    iget-object v0, p4, Lcom/twitter/android/client/ai;->e:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 992
    const v0, 0x7f02024d

    iget-object v2, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    const v3, 0x7f0a05b3

    .line 994
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    iget-object v4, p4, Lcom/twitter/android/client/ai;->e:Landroid/content/Intent;

    .line 995
    invoke-static {v3, v5, v4, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 992
    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1002
    :cond_3
    monitor-enter p0

    .line 1003
    :try_start_0
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 1004
    invoke-static {v2, v3, p2, p3}, Lcom/twitter/android/client/ai;->a(JJ)Ljava/lang/String;

    move-result-object v2

    .line 1005
    iget-object v0, p0, Lcom/twitter/android/client/y;->n:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1006
    iget-object v3, p0, Lcom/twitter/android/client/y;->p:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1008
    iget-boolean v0, p4, Lcom/twitter/android/client/ai;->d:Z

    if-eqz v0, :cond_5

    .line 1009
    new-instance v0, Lcom/twitter/android/client/z;

    invoke-direct {v0, p0, v2, v1}, Lcom/twitter/android/client/z;-><init>(Lcom/twitter/android/client/y;Ljava/lang/String;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 1017
    iget-object v3, p0, Lcom/twitter/android/client/y;->n:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    iget-object v2, p0, Lcom/twitter/android/client/y;->p:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1024
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1026
    return-object v1

    .line 960
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    goto/16 :goto_0

    .line 1020
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/twitter/android/client/y;->e:Landroid/app/NotificationManager;

    const/16 v3, 0x3e9

    .line 1022
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 1020
    invoke-virtual {v0, v2, v3, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_1

    .line 1024
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 3

    .prologue
    .line 1240
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f02065f

    .line 1241
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    .line 1242
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1200f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1243
    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1244
    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1245
    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1240
    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/twitter/android/client/y;
    .locals 3

    .prologue
    .line 189
    const-class v1, Lcom/twitter/android/client/y;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/twitter/android/client/y;->a:Lcom/twitter/android/client/y;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Lcom/twitter/android/client/y;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/twitter/android/client/y;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/twitter/android/client/y;->a:Lcom/twitter/android/client/y;

    .line 192
    :cond_0
    sget-object v0, Lcom/twitter/android/client/y;->a:Lcom/twitter/android/client/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1374
    invoke-direct {p0, p2, p1}, Lcom/twitter/android/client/y;->a(Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1375
    invoke-virtual {v0, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1376
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1377
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1378
    iget-object v1, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/twitter/util/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1379
    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1380
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1382
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/client/y;->e:Landroid/app/NotificationManager;

    const-string/jumbo v2, "NonReleaseNotifications"

    const/4 v3, 0x0

    .line 1383
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1382
    invoke-virtual {v1, v2, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1384
    return-void
.end method

.method private a(Lcom/twitter/android/client/af;Lcom/twitter/android/client/notifications/StatusBarNotif;)V
    .locals 1

    .prologue
    .line 698
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/client/y;->a(Lcom/twitter/android/client/af;Lcom/twitter/android/client/notifications/StatusBarNotif;Landroid/graphics/Bitmap;)V

    .line 699
    return-void
.end method

.method private a(Lcom/twitter/android/client/notifications/StatusBarNotif;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 694
    sget-object v0, Lcom/twitter/android/client/af;->a:Lcom/twitter/android/client/af;

    invoke-virtual {p0, v0, p1, p2}, Lcom/twitter/android/client/y;->a(Lcom/twitter/android/client/af;Lcom/twitter/android/client/notifications/StatusBarNotif;Landroid/graphics/Bitmap;)V

    .line 695
    return-void
.end method

.method private a(Lcom/twitter/library/platform/notifications/a;Lcom/twitter/android/client/af;I)V
    .locals 6

    .prologue
    .line 376
    iget-object v0, p1, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    .line 377
    iget v1, p1, Lcom/twitter/library/platform/notifications/a;->e:I

    .line 378
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/twitter/library/platform/notifications/ae;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/twitter/library/platform/notifications/ae;->c:I

    if-lez v2, :cond_0

    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_0

    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    iget-object v2, p0, Lcom/twitter/android/client/y;->f:Lcom/twitter/library/client/bk;

    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 386
    iget-object v3, p1, Lcom/twitter/library/platform/notifications/a;->b:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 387
    iget-object v3, p0, Lcom/twitter/android/client/y;->l:Lcom/twitter/library/client/bd;

    new-instance v4, Lcom/twitter/library/api/dm/requests/m;

    iget-object v5, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    invoke-direct {v4, v5, v2}, Lcom/twitter/library/api/dm/requests/m;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    invoke-virtual {v3, v4}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 390
    :cond_2
    iget-wide v2, p1, Lcom/twitter/library/platform/notifications/a;->c:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/twitter/android/client/y;->a(Lcom/twitter/library/platform/notifications/ae;IJ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 394
    iget-wide v2, v0, Lcom/twitter/library/platform/notifications/ae;->i:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 395
    new-instance v1, Lcom/twitter/android/client/notifications/DMNotif;

    iget-wide v2, p1, Lcom/twitter/library/platform/notifications/a;->c:J

    iget-object v4, p1, Lcom/twitter/library/platform/notifications/a;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/twitter/android/client/notifications/DMNotif;-><init>(Lcom/twitter/library/platform/notifications/ae;JLjava/lang/String;)V

    .line 396
    invoke-direct {p0, p2, v1}, Lcom/twitter/android/client/y;->a(Lcom/twitter/android/client/af;Lcom/twitter/android/client/notifications/StatusBarNotif;)V

    .line 397
    iput-object v1, v0, Lcom/twitter/library/platform/notifications/ae;->v:Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Lcom/twitter/library/platform/notifications/ae;IJ)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 363
    iget-object v0, p0, Lcom/twitter/android/client/y;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-ltz v3, :cond_1

    .line 364
    iget-object v0, p0, Lcom/twitter/android/client/y;->m:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/aj;

    .line 365
    invoke-interface {v0}, Lcom/twitter/android/client/aj;->v()I

    move-result v4

    and-int/2addr v4, p2

    if-eqz v4, :cond_0

    .line 366
    invoke-interface {v0, p1, p3, p4}, Lcom/twitter/android/client/aj;->a(Lcom/twitter/library/platform/notifications/ae;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    new-array v0, v1, [I

    iget v3, p1, Lcom/twitter/library/platform/notifications/ae;->r:I

    aput v3, v0, v2

    invoke-virtual {p0, v0, p3, p4}, Lcom/twitter/android/client/y;->a([IJ)V

    move v0, v1

    .line 371
    :goto_1
    return v0

    .line 363
    :cond_0
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 371
    goto :goto_1
.end method

.method private b(Landroid/os/Bundle;Lcom/twitter/library/client/Session;)Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1200
    invoke-virtual {p2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 1201
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    .line 1202
    invoke-static {}, Lcom/twitter/android/avatars/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lcom/twitter/android/EditProfileWithAvatarDrawerActivity;

    :goto_0
    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v0, "failure"

    .line 1204
    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "AbsFragmentActivity_account_name"

    .line 1205
    invoke-virtual {p2}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "avatar_media_file"

    const-string/jumbo v3, "avatar_media"

    .line 1207
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 1206
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "header_media_file"

    const-string/jumbo v3, "header_media"

    .line 1209
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 1208
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    sget-object v2, Lcom/twitter/library/provider/dl;->b:Landroid/net/Uri;

    .line 1210
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "ownerId"

    .line 1211
    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1210
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 1213
    const-string/jumbo v1, "name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "desc"

    .line 1214
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "url"

    .line 1215
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "place"

    .line 1216
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1217
    :cond_0
    const-string/jumbo v1, "update_profile"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "name"

    const-string/jumbo v3, "name"

    .line 1219
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1218
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "description"

    const-string/jumbo v3, "desc"

    .line 1221
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1220
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "url"

    const-string/jumbo v3, "url"

    .line 1223
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1222
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "location"

    const-string/jumbo v3, "place"

    .line 1225
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1224
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1228
    :cond_1
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1230
    return-object v0

    .line 1202
    :cond_2
    const-class v0, Lcom/twitter/android/EditProfileActivity;

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/twitter/android/client/y;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/twitter/android/client/y;->j:Landroid/util/SparseArray;

    return-object v0
.end method

.method private b(JLjava/lang/String;)Lcom/twitter/android/client/af;
    .locals 9

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 327
    iget-object v0, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/provider/GlobalDatabaseProvider;->c:Landroid/net/Uri;

    .line 328
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "vibrate"

    aput-object v4, v2, v7

    const-string/jumbo v4, "ringtone"

    aput-object v4, v2, v6

    const-string/jumbo v4, "light"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    .line 327
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 336
    sget-object v1, Lcom/twitter/library/provider/bo;->a:Ljava/lang/String;

    .line 337
    if-eqz v4, :cond_7

    .line 339
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 340
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 341
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v6, :cond_0

    move v0, v6

    :goto_0
    move v2, v0

    .line 343
    :goto_1
    const/4 v0, 0x1

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 344
    const/4 v0, 0x1

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 346
    :goto_2
    const/4 v1, 0x2

    invoke-interface {v4, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 347
    const/4 v1, 0x2

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne v1, v6, :cond_1

    :goto_3
    move v1, v2

    .line 351
    :goto_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 354
    :goto_5
    const-string/jumbo v2, "none"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 357
    :goto_6
    new-instance v0, Lcom/twitter/android/client/af;

    invoke-direct {v0, v6, v3, v1}, Lcom/twitter/android/client/af;-><init>(ZLjava/lang/String;Z)V

    return-object v0

    :cond_0
    move v0, v7

    .line 341
    goto :goto_0

    :cond_1
    move v6, v7

    .line 347
    goto :goto_3

    .line 351
    :catchall_0
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    move-object v3, v0

    goto :goto_6

    :cond_3
    move v1, v2

    goto :goto_4

    :cond_4
    move-object v0, v1

    goto :goto_2

    :cond_5
    move v2, v6

    goto :goto_1

    :cond_6
    move-object v0, v1

    move v1, v6

    goto :goto_4

    :cond_7
    move-object v0, v1

    move v1, v6

    goto :goto_5
.end method

.method private b(Lcom/twitter/library/platform/notifications/a;Lcom/twitter/android/client/af;I)V
    .locals 5

    .prologue
    .line 402
    iget-object v0, p1, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    .line 403
    iget v1, p1, Lcom/twitter/library/platform/notifications/a;->e:I

    .line 404
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/twitter/library/platform/notifications/ae;->b:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/twitter/library/platform/notifications/ae;->c:I

    if-lez v2, :cond_0

    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_0

    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_0

    iget-wide v2, p1, Lcom/twitter/library/platform/notifications/a;->c:J

    .line 407
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/twitter/android/client/y;->a(Lcom/twitter/library/platform/notifications/ae;IJ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    new-instance v1, Lcom/twitter/android/client/notifications/LoginVerificationNotif;

    iget-wide v2, p1, Lcom/twitter/library/platform/notifications/a;->c:J

    iget-object v4, p1, Lcom/twitter/library/platform/notifications/a;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/twitter/android/client/notifications/LoginVerificationNotif;-><init>(Lcom/twitter/library/platform/notifications/ae;JLjava/lang/String;)V

    .line 412
    invoke-direct {p0, p2, v1}, Lcom/twitter/android/client/y;->a(Lcom/twitter/android/client/af;Lcom/twitter/android/client/notifications/StatusBarNotif;)V

    .line 413
    iput-object v1, v0, Lcom/twitter/library/platform/notifications/ae;->v:Ljava/lang/Object;

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/twitter/android/client/y;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1402
    if-nez v0, :cond_0

    .line 1403
    const/16 v0, 0xff

    .line 1405
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private c(Landroid/os/Bundle;Lcom/twitter/library/client/Session;)Landroid/content/Intent;
    .locals 11

    .prologue
    .line 1295
    invoke-virtual {p2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 1296
    const-string/jumbo v1, "user_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1297
    const-string/jumbo v1, "username"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1298
    const-string/jumbo v4, "impression_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1299
    const-string/jumbo v5, "earned"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1300
    const-string/jumbo v6, "age_before_timestamp"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1302
    new-instance v8, Landroid/content/Intent;

    iget-object v9, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    const-class v10, Lcom/twitter/android/AgeGateActivity;

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v9, "user_id"

    .line 1303
    invoke-virtual {v8, v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "user_name"

    .line 1304
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "impression_id"

    .line 1305
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "is_earned"

    .line 1306
    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "age_gate_timestamp"

    .line 1307
    invoke-virtual {v1, v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/twitter/library/provider/dl;->b:Landroid/net/Uri;

    .line 1308
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "ownerId"

    .line 1309
    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1308
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 1311
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1313
    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/client/y;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/twitter/android/client/y;->k:Landroid/util/SparseArray;

    return-object v0
.end method

.method private c(Lcom/twitter/library/platform/notifications/a;Lcom/twitter/android/client/af;I)V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 417
    iget-object v7, p1, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    .line 418
    iget v8, p1, Lcom/twitter/library/platform/notifications/a;->e:I

    .line 419
    and-int/lit8 v2, v8, 0x2

    if-eqz v2, :cond_2

    move v6, v0

    .line 420
    :goto_0
    and-int/lit8 v2, v8, 0x8

    if-eqz v2, :cond_3

    move v5, v0

    .line 421
    :goto_1
    and-int/lit8 v2, v8, 0x10

    if-eqz v2, :cond_4

    move v4, v0

    .line 422
    :goto_2
    and-int/lit8 v2, v8, 0x20

    if-eqz v2, :cond_5

    move v3, v0

    .line 423
    :goto_3
    and-int/lit16 v2, v8, 0x200

    if-eqz v2, :cond_6

    move v2, v0

    .line 424
    :goto_4
    and-int/lit8 v9, p3, 0x2

    if-eqz v9, :cond_7

    if-nez v6, :cond_0

    if-nez v5, :cond_0

    if-nez v4, :cond_0

    if-nez v3, :cond_0

    if-eqz v2, :cond_7

    .line 426
    :cond_0
    :goto_5
    if-eqz v7, :cond_1

    iget v1, v7, Lcom/twitter/library/platform/notifications/ae;->b:I

    const/4 v9, 0x3

    if-ne v1, v9, :cond_1

    iget v1, v7, Lcom/twitter/library/platform/notifications/ae;->c:I

    if-lez v1, :cond_1

    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lcom/twitter/library/platform/notifications/a;->c:J

    .line 428
    invoke-direct {p0, v7, v8, v0, v1}, Lcom/twitter/android/client/y;->a(Lcom/twitter/library/platform/notifications/ae;IJ)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 453
    :cond_1
    :goto_6
    return-void

    :cond_2
    move v6, v1

    .line 419
    goto :goto_0

    :cond_3
    move v5, v1

    .line 420
    goto :goto_1

    :cond_4
    move v4, v1

    .line 421
    goto :goto_2

    :cond_5
    move v3, v1

    .line 422
    goto :goto_3

    :cond_6
    move v2, v1

    .line 423
    goto :goto_4

    :cond_7
    move v0, v1

    .line 424
    goto :goto_5

    .line 434
    :cond_8
    if-eqz v6, :cond_9

    iget v0, p1, Lcom/twitter/library/platform/notifications/a;->f:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    .line 435
    new-instance v0, Lcom/twitter/android/client/notifications/MentionNotif;

    iget-wide v2, p1, Lcom/twitter/library/platform/notifications/a;->c:J

    iget-object v1, p1, Lcom/twitter/library/platform/notifications/a;->b:Ljava/lang/String;

    invoke-direct {v0, v7, v2, v3, v1}, Lcom/twitter/android/client/notifications/MentionNotif;-><init>(Lcom/twitter/library/platform/notifications/ae;JLjava/lang/String;)V

    .line 449
    :goto_7
    if-eqz v0, :cond_1

    .line 450
    invoke-direct {p0, p2, v0}, Lcom/twitter/android/client/y;->a(Lcom/twitter/android/client/af;Lcom/twitter/android/client/notifications/StatusBarNotif;)V

    .line 451
    iput-object v0, v7, Lcom/twitter/library/platform/notifications/ae;->v:Ljava/lang/Object;

    goto :goto_6

    .line 436
    :cond_9
    if-eqz v4, :cond_a

    iget v0, p1, Lcom/twitter/library/platform/notifications/a;->f:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    .line 437
    new-instance v0, Lcom/twitter/android/client/notifications/FavoriteNotif;

    iget-wide v2, p1, Lcom/twitter/library/platform/notifications/a;->c:J

    iget-object v1, p1, Lcom/twitter/library/platform/notifications/a;->b:Ljava/lang/String;

    invoke-direct {v0, v7, v2, v3, v1}, Lcom/twitter/android/client/notifications/FavoriteNotif;-><init>(Lcom/twitter/library/platform/notifications/ae;JLjava/lang/String;)V

    goto :goto_7

    .line 438
    :cond_a
    if-eqz v5, :cond_b

    iget v0, p1, Lcom/twitter/library/platform/notifications/a;->f:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_b

    .line 439
    new-instance v0, Lcom/twitter/android/client/notifications/RetweetNotif;

    iget-wide v2, p1, Lcom/twitter/library/platform/notifications/a;->c:J

    iget-object v1, p1, Lcom/twitter/library/platform/notifications/a;->b:Ljava/lang/String;

    invoke-direct {v0, v7, v2, v3, v1}, Lcom/twitter/android/client/notifications/RetweetNotif;-><init>(Lcom/twitter/library/platform/notifications/ae;JLjava/lang/String;)V

    goto :goto_7

    .line 440
    :cond_b
    if-eqz v3, :cond_c

    iget v0, p1, Lcom/twitter/library/platform/notifications/a;->f:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    .line 441
    new-instance v0, Lcom/twitter/android/client/notifications/FollowNotif;

    iget-wide v2, p1, Lcom/twitter/library/platform/notifications/a;->c:J

    iget-object v1, p1, Lcom/twitter/library/platform/notifications/a;->b:Ljava/lang/String;

    invoke-direct {v0, v7, v2, v3, v1}, Lcom/twitter/android/client/notifications/FollowNotif;-><init>(Lcom/twitter/library/platform/notifications/ae;JLjava/lang/String;)V

    goto :goto_7

    .line 442
    :cond_c
    if-eqz v3, :cond_d

    iget v0, p1, Lcom/twitter/library/platform/notifications/a;->f:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_d

    .line 443
    new-instance v0, Lcom/twitter/android/client/notifications/FollowRequestNotif;

    iget-wide v2, p1, Lcom/twitter/library/platform/notifications/a;->c:J

    iget-object v1, p1, Lcom/twitter/library/platform/notifications/a;->b:Ljava/lang/String;

    invoke-direct {v0, v7, v2, v3, v1}, Lcom/twitter/android/client/notifications/FollowRequestNotif;-><init>(Lcom/twitter/library/platform/notifications/ae;JLjava/lang/String;)V

    goto :goto_7

    .line 444
    :cond_d
    if-eqz v2, :cond_e

    iget v0, p1, Lcom/twitter/library/platform/notifications/a;->f:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_e

    .line 445
    new-instance v0, Lcom/twitter/android/client/notifications/MediaTagNotif;

    iget-wide v2, p1, Lcom/twitter/library/platform/notifications/a;->c:J

    iget-object v1, p1, Lcom/twitter/library/platform/notifications/a;->b:Ljava/lang/String;

    invoke-direct {v0, v7, v2, v3, v1}, Lcom/twitter/android/client/notifications/MediaTagNotif;-><init>(Lcom/twitter/library/platform/notifications/ae;JLjava/lang/String;)V

    goto :goto_7

    .line 447
    :cond_e
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static synthetic d(Lcom/twitter/android/client/y;)Lcom/twitter/library/client/bj;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/twitter/android/client/y;->i:Lcom/twitter/library/client/bj;

    return-object v0
.end method

.method private d(J)Lcom/twitter/library/service/v;
    .locals 3

    .prologue
    .line 1481
    new-instance v0, Lcom/twitter/library/service/v;

    iget-object v1, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/twitter/library/service/v;-><init>(Landroid/content/Context;J)V

    iget-object v1, p0, Lcom/twitter/android/client/y;->h:Lcom/twitter/android/client/ad;

    .line 1482
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/v;->a(Lcom/twitter/internal/android/service/c;)Lcom/twitter/internal/android/service/AsyncOperation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/v;

    .line 1481
    return-object v0
.end method

.method private d(Lcom/twitter/library/platform/notifications/a;Lcom/twitter/android/client/af;I)V
    .locals 5

    .prologue
    .line 456
    iget-object v0, p1, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    .line 457
    iget v1, p1, Lcom/twitter/library/platform/notifications/a;->e:I

    .line 458
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/twitter/library/platform/notifications/ae;->b:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/twitter/library/platform/notifications/ae;->c:I

    if-lez v2, :cond_0

    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_0

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, p1, Lcom/twitter/library/platform/notifications/a;->c:J

    .line 461
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/twitter/android/client/y;->a(Lcom/twitter/library/platform/notifications/ae;IJ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    new-instance v1, Lcom/twitter/android/client/notifications/DeviceTweetNotif;

    iget-wide v2, p1, Lcom/twitter/library/platform/notifications/a;->c:J

    iget-object v4, p1, Lcom/twitter/library/platform/notifications/a;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/twitter/android/client/notifications/DeviceTweetNotif;-><init>(Lcom/twitter/library/platform/notifications/ae;JLjava/lang/String;)V

    .line 465
    invoke-direct {p0, p2, v1}, Lcom/twitter/android/client/y;->a(Lcom/twitter/android/client/af;Lcom/twitter/android/client/notifications/StatusBarNotif;)V

    .line 466
    iput-object v1, v0, Lcom/twitter/library/platform/notifications/ae;->v:Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic e(Lcom/twitter/android/client/y;)Lcom/twitter/library/client/bk;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/twitter/android/client/y;->f:Lcom/twitter/library/client/bk;

    return-object v0
.end method

.method private e(Lcom/twitter/library/platform/notifications/a;Lcom/twitter/android/client/af;I)V
    .locals 5

    .prologue
    .line 470
    iget-object v0, p1, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    .line 471
    iget v1, p1, Lcom/twitter/library/platform/notifications/a;->e:I

    .line 472
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/twitter/library/platform/notifications/ae;->b:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/twitter/library/platform/notifications/ae;->c:I

    if-lez v2, :cond_0

    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_0

    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_0

    iget-wide v2, p1, Lcom/twitter/library/platform/notifications/a;->c:J

    .line 475
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/twitter/android/client/y;->a(Lcom/twitter/library/platform/notifications/ae;IJ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    new-instance v1, Lcom/twitter/android/client/notifications/PollNotif;

    iget-wide v2, p1, Lcom/twitter/library/platform/notifications/a;->c:J

    iget-object v4, p1, Lcom/twitter/library/platform/notifications/a;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/twitter/android/client/notifications/PollNotif;-><init>(Lcom/twitter/library/platform/notifications/ae;JLjava/lang/String;)V

    .line 479
    invoke-direct {p0, p2, v1}, Lcom/twitter/android/client/y;->a(Lcom/twitter/android/client/af;Lcom/twitter/android/client/notifications/StatusBarNotif;)V

    .line 480
    iput-object v1, v0, Lcom/twitter/library/platform/notifications/ae;->v:Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic f(Lcom/twitter/android/client/y;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    return-object v0
.end method

.method private f(Lcom/twitter/library/platform/notifications/a;Lcom/twitter/android/client/af;I)V
    .locals 5

    .prologue
    .line 484
    iget-object v0, p1, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    .line 485
    iget v1, p1, Lcom/twitter/library/platform/notifications/a;->e:I

    .line 486
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/twitter/library/platform/notifications/ae;->b:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/twitter/library/platform/notifications/ae;->c:I

    if-lez v2, :cond_0

    and-int/lit8 v2, p3, 0x10

    if-eqz v2, :cond_0

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    iget-wide v2, p1, Lcom/twitter/library/platform/notifications/a;->c:J

    .line 489
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/twitter/android/client/y;->a(Lcom/twitter/library/platform/notifications/ae;IJ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    new-instance v1, Lcom/twitter/android/client/notifications/LifelineTweetNotif;

    iget-wide v2, p1, Lcom/twitter/library/platform/notifications/a;->c:J

    iget-object v4, p1, Lcom/twitter/library/platform/notifications/a;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/twitter/android/client/notifications/LifelineTweetNotif;-><init>(Lcom/twitter/library/platform/notifications/ae;JLjava/lang/String;)V

    .line 496
    invoke-direct {p0, p2, v1}, Lcom/twitter/android/client/y;->a(Lcom/twitter/android/client/af;Lcom/twitter/android/client/notifications/StatusBarNotif;)V

    .line 497
    iput-object v1, v0, Lcom/twitter/library/platform/notifications/ae;->v:Ljava/lang/Object;

    goto :goto_0
.end method

.method private g(Lcom/twitter/library/platform/notifications/a;Lcom/twitter/android/client/af;I)V
    .locals 6

    .prologue
    const/16 v5, 0x9

    const/16 v4, 0x8

    .line 503
    iget-object v1, p1, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    .line 504
    if-eqz v1, :cond_1

    iget v0, v1, Lcom/twitter/library/platform/notifications/ae;->b:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    iget v0, v1, Lcom/twitter/library/platform/notifications/ae;->b:I

    if-eq v0, v4, :cond_0

    iget v0, v1, Lcom/twitter/library/platform/notifications/ae;->b:I

    if-ne v0, v5, :cond_1

    :cond_0
    and-int/lit8 v0, p3, 0x20

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/twitter/library/platform/notifications/a;->e:I

    iget-wide v2, p1, Lcom/twitter/library/platform/notifications/a;->c:J

    .line 508
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/twitter/android/client/y;->a(Lcom/twitter/library/platform/notifications/ae;IJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 536
    :cond_1
    :goto_0
    return-void

    .line 515
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/client/y;->o:Ljava/util/Map;

    iget-wide v2, p1, Lcom/twitter/library/platform/notifications/a;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 516
    if-eqz v0, :cond_3

    .line 518
    iget-object v2, p0, Lcom/twitter/android/client/y;->k:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 521
    iget-wide v2, p1, Lcom/twitter/library/platform/notifications/a;->c:J

    invoke-virtual {p0, v2, v3}, Lcom/twitter/android/client/y;->a(J)V

    .line 524
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/client/y;->o:Ljava/util/Map;

    iget-wide v2, p1, Lcom/twitter/library/platform/notifications/a;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v3, v1, Lcom/twitter/library/platform/notifications/ae;->r:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    iget v0, v1, Lcom/twitter/library/platform/notifications/ae;->b:I

    if-ne v0, v4, :cond_4

    .line 527
    new-instance v0, Lcom/twitter/android/client/notifications/GenericNotif;

    iget-wide v2, p1, Lcom/twitter/library/platform/notifications/a;->c:J

    iget-object v4, p1, Lcom/twitter/library/platform/notifications/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/notifications/GenericNotif;-><init>(Lcom/twitter/library/platform/notifications/ae;JLjava/lang/String;)V

    .line 534
    :goto_1
    invoke-direct {p0, p2, v0}, Lcom/twitter/android/client/y;->a(Lcom/twitter/android/client/af;Lcom/twitter/android/client/notifications/StatusBarNotif;)V

    .line 535
    iput-object v0, v1, Lcom/twitter/library/platform/notifications/ae;->v:Ljava/lang/Object;

    goto :goto_0

    .line 528
    :cond_4
    iget v0, v1, Lcom/twitter/library/platform/notifications/ae;->b:I

    if-ne v0, v5, :cond_5

    .line 530
    new-instance v0, Lcom/twitter/android/client/notifications/MagicRecTweetNotif;

    iget-wide v2, p1, Lcom/twitter/library/platform/notifications/a;->c:J

    iget-object v4, p1, Lcom/twitter/library/platform/notifications/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/notifications/MagicRecTweetNotif;-><init>(Lcom/twitter/library/platform/notifications/ae;JLjava/lang/String;)V

    goto :goto_1

    .line 532
    :cond_5
    new-instance v0, Lcom/twitter/android/client/notifications/StoriesNotif;

    iget-wide v2, p1, Lcom/twitter/library/platform/notifications/a;->c:J

    iget-object v4, p1, Lcom/twitter/library/platform/notifications/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/notifications/StoriesNotif;-><init>(Lcom/twitter/library/platform/notifications/ae;JLjava/lang/String;)V

    goto :goto_1
.end method

.method private h(Lcom/twitter/library/platform/notifications/a;Lcom/twitter/android/client/af;I)V
    .locals 5

    .prologue
    .line 540
    iget-object v0, p1, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    .line 541
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/twitter/library/platform/notifications/ae;->b:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    and-int/lit16 v1, p3, 0x80

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/twitter/library/platform/notifications/a;->e:I

    iget-wide v2, p1, Lcom/twitter/library/platform/notifications/a;->c:J

    .line 542
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/twitter/android/client/y;->a(Lcom/twitter/library/platform/notifications/ae;IJ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    new-instance v1, Lcom/twitter/android/client/notifications/GenericNotif;

    iget-wide v2, p1, Lcom/twitter/library/platform/notifications/a;->c:J

    iget-object v4, p1, Lcom/twitter/library/platform/notifications/a;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/twitter/android/client/notifications/GenericNotif;-><init>(Lcom/twitter/library/platform/notifications/ae;JLjava/lang/String;)V

    .line 549
    invoke-direct {p0, p2, v1}, Lcom/twitter/android/client/y;->a(Lcom/twitter/android/client/af;Lcom/twitter/android/client/notifications/StatusBarNotif;)V

    .line 550
    iput-object v1, v0, Lcom/twitter/library/platform/notifications/ae;->v:Ljava/lang/Object;

    goto :goto_0
.end method

.method private i(Lcom/twitter/library/platform/notifications/a;Lcom/twitter/android/client/af;I)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 555
    iget-object v3, p1, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    .line 556
    iget v4, p1, Lcom/twitter/library/platform/notifications/a;->e:I

    .line 557
    if-eqz v3, :cond_0

    iget v5, v3, Lcom/twitter/library/platform/notifications/ae;->b:I

    if-ne v5, v0, :cond_0

    iget v5, v3, Lcom/twitter/library/platform/notifications/ae;->c:I

    if-lez v5, :cond_0

    and-int/lit8 v5, p3, 0x40

    if-eqz v5, :cond_0

    and-int/lit16 v5, v4, 0x100

    if-eqz v5, :cond_0

    iget-wide v6, p1, Lcom/twitter/library/platform/notifications/a;->c:J

    .line 560
    invoke-direct {p0, v3, v4, v6, v7}, Lcom/twitter/android/client/y;->a(Lcom/twitter/library/platform/notifications/ae;IJ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    invoke-static {v3}, Lcom/twitter/android/client/notifications/MagicRecTweetNotif;->a(Lcom/twitter/library/platform/notifications/ae;)Z

    move-result v4

    .line 567
    invoke-static {v3}, Lcom/twitter/android/client/notifications/MagicRecFollowNotif;->a(Lcom/twitter/library/platform/notifications/ae;)Z

    move-result v5

    .line 568
    if-nez v4, :cond_2

    if-eqz v5, :cond_4

    .line 569
    :cond_2
    :goto_1
    invoke-static {v3}, Lcom/twitter/android/client/notifications/MagicRecHashtagNotif;->a(Lcom/twitter/library/platform/notifications/ae;)Z

    move-result v5

    .line 571
    if-eqz v0, :cond_6

    .line 574
    if-eqz v4, :cond_5

    .line 575
    new-instance v0, Lcom/twitter/android/client/notifications/MagicRecTweetNotif;

    iget-wide v4, p1, Lcom/twitter/library/platform/notifications/a;->c:J

    iget-object v6, p1, Lcom/twitter/library/platform/notifications/a;->b:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/twitter/android/client/notifications/MagicRecTweetNotif;-><init>(Lcom/twitter/library/platform/notifications/ae;JLjava/lang/String;)V

    .line 579
    :goto_2
    const-string/jumbo v4, "magic_rec_data_received"

    invoke-static {v0, v4, v2}, Lcom/twitter/android/client/notifications/MagicRecNotif;->a(Lcom/twitter/android/client/notifications/StatusBarNotif;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    :goto_3
    if-nez v0, :cond_3

    .line 589
    new-instance v0, Lcom/twitter/android/client/notifications/GenericNotif;

    iget-wide v4, p1, Lcom/twitter/library/platform/notifications/a;->c:J

    iget-object v2, p1, Lcom/twitter/library/platform/notifications/a;->b:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v5, v2}, Lcom/twitter/android/client/notifications/GenericNotif;-><init>(Lcom/twitter/library/platform/notifications/ae;JLjava/lang/String;)V

    .line 590
    iput-boolean v1, p2, Lcom/twitter/android/client/af;->d:Z

    .line 592
    :cond_3
    invoke-direct {p0, p2, v0}, Lcom/twitter/android/client/y;->a(Lcom/twitter/android/client/af;Lcom/twitter/android/client/notifications/StatusBarNotif;)V

    .line 593
    iput-object v0, v3, Lcom/twitter/library/platform/notifications/ae;->v:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    move v0, v1

    .line 568
    goto :goto_1

    .line 577
    :cond_5
    new-instance v0, Lcom/twitter/android/client/notifications/MagicRecFollowNotif;

    iget-wide v4, p1, Lcom/twitter/library/platform/notifications/a;->c:J

    iget-object v6, p1, Lcom/twitter/library/platform/notifications/a;->b:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/twitter/android/client/notifications/MagicRecFollowNotif;-><init>(Lcom/twitter/library/platform/notifications/ae;JLjava/lang/String;)V

    goto :goto_2

    .line 583
    :cond_6
    if-eqz v5, :cond_7

    .line 584
    new-instance v0, Lcom/twitter/android/client/notifications/MagicRecHashtagNotif;

    iget-wide v4, p1, Lcom/twitter/library/platform/notifications/a;->c:J

    iget-object v2, p1, Lcom/twitter/library/platform/notifications/a;->b:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v5, v2}, Lcom/twitter/android/client/notifications/MagicRecHashtagNotif;-><init>(Lcom/twitter/library/platform/notifications/ae;JLjava/lang/String;)V

    goto :goto_3

    :cond_7
    move-object v0, v2

    goto :goto_3
.end method


# virtual methods
.method public a(Lcom/twitter/media/request/a;Lcom/twitter/android/client/ac;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 654
    iget-object v0, p0, Lcom/twitter/android/client/y;->c:Lcom/twitter/library/media/manager/l;

    invoke-virtual {v0, p1}, Lcom/twitter/library/media/manager/l;->c(Lcom/twitter/media/request/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 655
    if-nez v0, :cond_0

    .line 658
    invoke-virtual {p1, p2}, Lcom/twitter/media/request/a;->a(Ljava/lang/Object;)V

    .line 659
    invoke-virtual {p1, p0}, Lcom/twitter/media/request/a;->a(Lcom/twitter/media/request/i;)V

    .line 660
    iget-object v1, p0, Lcom/twitter/android/client/y;->c:Lcom/twitter/library/media/manager/l;

    invoke-virtual {v1, p1}, Lcom/twitter/library/media/manager/l;->b(Lcom/twitter/media/request/a;)Lcom/twitter/util/concurrent/j;

    .line 662
    :cond_0
    return-object v0
.end method

.method public a(Lcom/twitter/library/client/Session;JLjava/lang/String;I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1110
    new-instance v0, Lcom/twitter/android/client/ai;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/android/client/ai;-><init>(Lcom/twitter/android/client/z;)V

    .line 1111
    iput-boolean v2, v0, Lcom/twitter/android/client/ai;->a:Z

    .line 1112
    iput-boolean v2, v0, Lcom/twitter/android/client/ai;->d:Z

    .line 1113
    iput-boolean v2, v0, Lcom/twitter/android/client/ai;->f:Z

    .line 1114
    iput-object p4, v0, Lcom/twitter/android/client/ai;->g:Ljava/lang/String;

    .line 1115
    iput p5, v0, Lcom/twitter/android/client/ai;->h:I

    .line 1117
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/twitter/android/client/y;->a(Lcom/twitter/library/client/Session;JLcom/twitter/android/client/ai;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/library/client/Session;JLjava/lang/String;IZ)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 8

    .prologue
    .line 1069
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/client/y;->a(Lcom/twitter/library/client/Session;JLjava/lang/String;IZLandroid/content/Intent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/library/client/Session;JLjava/lang/String;IZLandroid/content/Intent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 1083
    new-instance v0, Lcom/twitter/android/client/ai;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/android/client/ai;-><init>(Lcom/twitter/android/client/z;)V

    .line 1084
    iput-boolean v3, v0, Lcom/twitter/android/client/ai;->a:Z

    .line 1085
    iput-object p4, v0, Lcom/twitter/android/client/ai;->g:Ljava/lang/String;

    .line 1086
    iput p5, v0, Lcom/twitter/android/client/ai;->h:I

    .line 1088
    iget-object v1, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    .line 1089
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    .line 1088
    invoke-static {v1, v3, v2, v4, v5}, Lcom/twitter/app/drafts/DraftsActivity;->a(Landroid/content/Context;ZLjava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/android/client/ai;->c:Landroid/content/Intent;

    .line 1091
    if-eqz p6, :cond_1

    .line 1092
    iget-object v1, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-static {v1, p2, p3, v2, v3}, Lcom/twitter/android/client/TweetUploadService;->a(Landroid/content/Context;JJ)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/android/client/ai;->e:Landroid/content/Intent;

    .line 1098
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/twitter/android/client/y;->a(Lcom/twitter/library/client/Session;JLcom/twitter/android/client/ai;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0

    .line 1093
    :cond_1
    if-eqz p7, :cond_0

    .line 1095
    iput-object p7, v0, Lcom/twitter/android/client/ai;->c:Landroid/content/Intent;

    goto :goto_0
.end method

.method public a()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 795
    invoke-static {}, Lcom/twitter/android/au;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 816
    :goto_0
    return-void

    .line 799
    :cond_0
    iget-object v2, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    .line 800
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x2

    .line 802
    :goto_1
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f02064f

    .line 803
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    .line 804
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1200f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const-string/jumbo v4, "Twitter bug reporter"

    .line 805
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const-string/jumbo v4, "Tap to file a bug report"

    .line 806
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 808
    invoke-static {v2}, Lcom/twitter/android/au;->a(Landroid/content/Context;)Lcom/twitter/android/au;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/android/au;->a()Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x8000000

    .line 807
    invoke-static {v2, v4, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 809
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 810
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-wide/16 v2, 0x0

    .line 811
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 812
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 814
    iget-object v2, p0, Lcom/twitter/android/client/y;->e:Landroid/app/NotificationManager;

    const-string/jumbo v3, "NonReleaseNotifications"

    invoke-virtual {v2, v3, v1, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 800
    goto :goto_1
.end method

.method protected a(I)V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/twitter/android/client/y;->k:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/notifications/StatusBarNotif;

    .line 634
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/twitter/android/client/y;->k:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 637
    :cond_0
    return-void
.end method

.method a(ILcom/twitter/library/client/Session;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1160
    iget-object v0, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1161
    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1160
    invoke-direct {p0, p1, v0}, Lcom/twitter/android/client/y;->a(ILandroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1162
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1163
    new-instance v1, Lcom/twitter/android/client/ag;

    invoke-direct {v1}, Lcom/twitter/android/client/ag;-><init>()V

    invoke-virtual {p2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/client/ag;->a(J)Lcom/twitter/android/client/ag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/client/ag;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1164
    iget-object v2, p0, Lcom/twitter/android/client/y;->e:Landroid/app/NotificationManager;

    const/16 v3, 0x3ec

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v2, v1, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1165
    return-void
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 837
    iget-object v0, p0, Lcom/twitter/android/client/y;->l:Lcom/twitter/library/client/bd;

    invoke-direct {p0, p1, p2}, Lcom/twitter/android/client/y;->d(J)Lcom/twitter/library/service/v;

    move-result-object v1

    const/4 v2, 0x3

    .line 838
    invoke-virtual {v1, v2}, Lcom/twitter/library/service/v;->a(I)Lcom/twitter/library/service/v;

    move-result-object v1

    .line 837
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 839
    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/client/y;->b(J)V

    .line 840
    return-void
.end method

.method public a(JJ)V
    .locals 3

    .prologue
    .line 937
    monitor-enter p0

    .line 938
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/twitter/android/client/ai;->a(JJ)Ljava/lang/String;

    move-result-object v1

    .line 939
    iget-object v0, p0, Lcom/twitter/android/client/y;->n:Ljava/util/Map;

    .line 940
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 941
    iget-object v2, p0, Lcom/twitter/android/client/y;->p:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 942
    iget-object v0, p0, Lcom/twitter/android/client/y;->e:Landroid/app/NotificationManager;

    const/16 v2, 0x3e9

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 943
    monitor-exit p0

    .line 944
    return-void

    .line 943
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 1460
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/client/y;->d(J)Lcom/twitter/library/service/v;

    move-result-object v0

    const/4 v1, 0x2

    .line 1461
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/v;->a(I)Lcom/twitter/library/service/v;

    move-result-object v0

    .line 1462
    invoke-virtual {v0, p3}, Lcom/twitter/library/service/v;->a(Ljava/lang/String;)Lcom/twitter/library/service/v;

    move-result-object v0

    .line 1463
    iget-object v1, p0, Lcom/twitter/android/client/y;->l:Lcom/twitter/library/client/bd;

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 1464
    return-void
.end method

.method public a(JZZ)V
    .locals 5

    .prologue
    const/16 v3, 0x200

    .line 1413
    iget-object v0, p0, Lcom/twitter/android/client/y;->f:Lcom/twitter/library/client/bk;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/library/client/bk;->b(J)Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 1414
    new-instance v1, Lblu;

    iget-object v2, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lblu;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    .line 1415
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lblu;->d(I)Lcom/twitter/library/service/o;

    .line 1416
    if-eqz p4, :cond_0

    .line 1417
    invoke-virtual {v1, v3}, Lblu;->a(I)Lblu;

    .line 1421
    :goto_0
    iput-boolean p3, v1, Lblu;->g:Z

    .line 1422
    const/4 v0, 0x1

    iput-boolean v0, v1, Lblu;->c:Z

    .line 1423
    iget-object v0, p0, Lcom/twitter/android/client/y;->l:Lcom/twitter/library/client/bd;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 1424
    return-void

    .line 1419
    :cond_0
    invoke-virtual {v1, v3}, Lblu;->c(I)Lblu;

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;Lcom/twitter/library/client/Session;)V
    .locals 5

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    .line 1250
    const v1, 0x7f0a005f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1251
    const/4 v2, 0x0

    .line 1252
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/client/y;->c(Landroid/os/Bundle;Lcom/twitter/library/client/Session;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000000

    invoke-static {v0, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1251
    invoke-direct {p0, v1, v0}, Lcom/twitter/android/client/y;->a(Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1254
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1256
    new-instance v1, Lcom/twitter/android/client/ag;

    invoke-direct {v1}, Lcom/twitter/android/client/ag;-><init>()V

    invoke-virtual {p2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/client/ag;->a(J)Lcom/twitter/android/client/ag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/client/ag;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1257
    iget-object v2, p0, Lcom/twitter/android/client/y;->e:Landroid/app/NotificationManager;

    const/16 v3, 0x3ef

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v2, v1, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1258
    return-void
.end method

.method a(Lcom/twitter/android/client/af;Lcom/twitter/android/client/notifications/StatusBarNotif;Landroid/graphics/Bitmap;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 716
    invoke-virtual {p2}, Lcom/twitter/android/client/notifications/StatusBarNotif;->w()I

    move-result v3

    .line 717
    invoke-virtual {p2}, Lcom/twitter/android/client/notifications/StatusBarNotif;->N()[I

    move-result-object v1

    .line 718
    array-length v4, v1

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_1

    aget v5, v1, v0

    .line 719
    if-eq v5, v3, :cond_0

    .line 720
    const-string/jumbo v6, "NotificationController"

    const-string/jumbo v7, "Notification already displaying, removing old one"

    invoke-static {v6, v7}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    iget-object v6, p0, Lcom/twitter/android/client/y;->j:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 722
    iget-object v6, p0, Lcom/twitter/android/client/y;->e:Landroid/app/NotificationManager;

    invoke-virtual {v6, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 718
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 731
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    invoke-virtual {p2, v0, p0, p1, p3}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Landroid/content/Context;Lcom/twitter/android/client/y;Lcom/twitter/android/client/af;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object v0

    .line 733
    invoke-virtual {p0, p2, p1}, Lcom/twitter/android/client/y;->a(Lcom/twitter/android/client/notifications/StatusBarNotif;Lcom/twitter/android/client/af;)V

    .line 737
    if-eqz v0, :cond_4

    .line 738
    iget-object v1, p0, Lcom/twitter/android/client/y;->j:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 739
    iget-object v1, p0, Lcom/twitter/android/client/y;->f:Lcom/twitter/library/client/bk;

    iget-object v4, p0, Lcom/twitter/android/client/y;->i:Lcom/twitter/library/client/bj;

    invoke-virtual {v1, v4}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/bj;)V

    .line 741
    :try_start_0
    iget-object v1, p0, Lcom/twitter/android/client/y;->e:Landroid/app/NotificationManager;

    invoke-virtual {v1, v3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    :goto_1
    invoke-virtual {p2}, Lcom/twitter/android/client/notifications/StatusBarNotif;->t()V

    .line 750
    const-string/jumbo v0, "NotificationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NotificationManager has been told to notify id "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    sget-object v0, Lcom/twitter/android/client/af;->a:Lcom/twitter/android/client/af;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    .line 754
    :goto_2
    if-nez v0, :cond_3

    .line 755
    invoke-static {p2}, Lcom/twitter/android/client/notifications/MagicRecTweetNotif;->a(Lcom/twitter/android/client/notifications/StatusBarNotif;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 756
    invoke-static {p2}, Lcom/twitter/android/client/notifications/MagicRecFollowNotif;->a(Lcom/twitter/android/client/notifications/StatusBarNotif;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 759
    :cond_2
    instance-of v0, p2, Lcom/twitter/android/client/notifications/MagicRecNotif;

    if-eqz v0, :cond_7

    const-string/jumbo v0, "rich"

    .line 761
    :goto_3
    const-string/jumbo v1, "impression"

    invoke-static {p2, v1, v0}, Lcom/twitter/android/client/notifications/MagicRecNotif;->a(Lcom/twitter/android/client/notifications/StatusBarNotif;Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    :cond_3
    :goto_4
    invoke-virtual {p2}, Lcom/twitter/android/client/notifications/StatusBarNotif;->O()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 770
    invoke-static {}, Lzk;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 771
    const-string/jumbo v0, "preview_impression_image_loaded"

    .line 772
    invoke-virtual {p2, v0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    .line 773
    if-eqz v0, :cond_4

    .line 774
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 788
    :cond_4
    :goto_5
    return-void

    .line 742
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 743
    const-string/jumbo v0, "fail"

    invoke-virtual {p2, v0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    .line 744
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a()Ljava/lang/String;

    move-result-object v0

    .line 745
    :goto_6
    new-instance v4, Lbiv;

    invoke-virtual {p2}, Lcom/twitter/android/client/notifications/StatusBarNotif;->v()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Lbiv;-><init>(J)V

    const-string/jumbo v5, "notification-type"

    .line 746
    invoke-virtual {v4, v5, v0}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v0

    .line 747
    invoke-virtual {v0, v1}, Lbiv;->a(Ljava/lang/Throwable;)Lbiv;

    move-result-object v0

    .line 745
    invoke-static {v0}, Lbix;->a(Lbiv;)V

    goto :goto_1

    .line 744
    :cond_5
    const-string/jumbo v0, "unknown"

    goto :goto_6

    :cond_6
    move v0, v2

    .line 753
    goto :goto_2

    .line 759
    :cond_7
    const-string/jumbo v0, "simple"

    goto :goto_3

    .line 763
    :cond_8
    const-string/jumbo v0, "impression"

    invoke-virtual {p2, v0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    .line 764
    if-eqz v0, :cond_3

    .line 765
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_4

    .line 778
    :cond_9
    invoke-virtual {p2}, Lcom/twitter/android/client/notifications/StatusBarNotif;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 779
    invoke-static {}, Lzk;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 780
    const-string/jumbo v0, "preview_impression"

    .line 781
    invoke-virtual {p2, v0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    .line 782
    if-eqz v0, :cond_4

    .line 783
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_5
.end method

.method public a(Lcom/twitter/android/client/ah;Lcom/twitter/android/client/af;)V
    .locals 3

    .prologue
    .line 607
    invoke-virtual {p1}, Lcom/twitter/android/client/ah;->a()Lcom/twitter/android/client/notifications/StatusBarNotif;

    move-result-object v0

    .line 608
    invoke-virtual {v0, p2}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Lcom/twitter/android/client/af;)V

    .line 609
    iget-object v1, p0, Lcom/twitter/android/client/y;->k:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->w()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 610
    iget-object v0, p0, Lcom/twitter/android/client/y;->l:Lcom/twitter/library/client/bd;

    invoke-virtual {v0, p1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 611
    return-void
.end method

.method public a(Lcom/twitter/android/client/aj;)V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/twitter/android/client/y;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    return-void
.end method

.method public a(Lcom/twitter/android/client/notifications/StatusBarNotif;)V
    .locals 3

    .prologue
    .line 671
    invoke-virtual {p1}, Lcom/twitter/android/client/notifications/StatusBarNotif;->P()Lcom/twitter/android/client/af;

    move-result-object v1

    .line 672
    if-nez v1, :cond_0

    .line 673
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Notification should have its settings saved before calling this method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 679
    :cond_0
    invoke-virtual {p1}, Lcom/twitter/android/client/notifications/StatusBarNotif;->w()I

    move-result v0

    .line 680
    iget-object v2, p0, Lcom/twitter/android/client/y;->j:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 681
    :goto_0
    if-eqz v0, :cond_2

    .line 682
    invoke-virtual {p0, p1}, Lcom/twitter/android/client/y;->b(Lcom/twitter/android/client/notifications/StatusBarNotif;)V

    .line 686
    :goto_1
    return-void

    .line 680
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 684
    :cond_2
    invoke-direct {p0, v1, p1}, Lcom/twitter/android/client/y;->a(Lcom/twitter/android/client/af;Lcom/twitter/android/client/notifications/StatusBarNotif;)V

    goto :goto_1
.end method

.method protected a(Lcom/twitter/android/client/notifications/StatusBarNotif;Lcom/twitter/android/client/af;)V
    .locals 3

    .prologue
    .line 617
    invoke-virtual {p1}, Lcom/twitter/android/client/notifications/StatusBarNotif;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/twitter/android/client/notifications/StatusBarNotif;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 619
    invoke-virtual {p1, p2}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Lcom/twitter/android/client/af;)V

    .line 622
    iget-object v0, p0, Lcom/twitter/android/client/y;->k:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/twitter/android/client/notifications/StatusBarNotif;->w()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/notifications/StatusBarNotif;

    .line 623
    if-nez v0, :cond_0

    .line 624
    const-string/jumbo v0, "NotificationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Preloading began for notification "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/twitter/android/client/notifications/StatusBarNotif;->w()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/twitter/android/client/y;->k:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/twitter/android/client/notifications/StatusBarNotif;->w()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 628
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/library/client/Session;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1427
    iget-object v0, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    .line 1428
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/LoginActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "screen_name"

    .line 1429
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1430
    invoke-static {v0, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1431
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1432
    const v2, 0x7f0a06c7

    new-array v3, v6, [Ljava/lang/Object;

    .line 1434
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 1433
    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/twitter/android/client/y;->a(Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const v2, 0x7f0a06c6

    .line 1435
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1436
    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1437
    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1438
    new-instance v1, Lcom/twitter/android/client/ag;

    invoke-direct {v1}, Lcom/twitter/android/client/ag;-><init>()V

    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/client/ag;->a(J)Lcom/twitter/android/client/ag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/client/ag;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1439
    iget-object v2, p0, Lcom/twitter/android/client/y;->e:Landroid/app/NotificationManager;

    const/16 v3, 0x3f0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v2, v1, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1440
    return-void
.end method

.method public a(Lcom/twitter/library/platform/notifications/a;)V
    .locals 4

    .prologue
    .line 304
    iget-object v0, p1, Lcom/twitter/library/platform/notifications/a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Lcom/twitter/library/platform/notifications/a;->e:I

    if-nez v0, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-object v0, p1, Lcom/twitter/library/platform/notifications/a;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/twitter/android/client/y;->c(Ljava/lang/String;)I

    move-result v0

    .line 309
    iget-wide v2, p1, Lcom/twitter/library/platform/notifications/a;->c:J

    iget-object v1, p1, Lcom/twitter/library/platform/notifications/a;->g:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Lcom/twitter/android/client/y;->b(JLjava/lang/String;)Lcom/twitter/android/client/af;

    move-result-object v1

    .line 311
    invoke-direct {p0, p1, v1, v0}, Lcom/twitter/android/client/y;->a(Lcom/twitter/library/platform/notifications/a;Lcom/twitter/android/client/af;I)V

    .line 312
    invoke-direct {p0, p1, v1, v0}, Lcom/twitter/android/client/y;->b(Lcom/twitter/library/platform/notifications/a;Lcom/twitter/android/client/af;I)V

    .line 313
    invoke-direct {p0, p1, v1, v0}, Lcom/twitter/android/client/y;->c(Lcom/twitter/library/platform/notifications/a;Lcom/twitter/android/client/af;I)V

    .line 314
    invoke-direct {p0, p1, v1, v0}, Lcom/twitter/android/client/y;->d(Lcom/twitter/library/platform/notifications/a;Lcom/twitter/android/client/af;I)V

    .line 315
    invoke-direct {p0, p1, v1, v0}, Lcom/twitter/android/client/y;->e(Lcom/twitter/library/platform/notifications/a;Lcom/twitter/android/client/af;I)V

    .line 316
    invoke-direct {p0, p1, v1, v0}, Lcom/twitter/android/client/y;->f(Lcom/twitter/library/platform/notifications/a;Lcom/twitter/android/client/af;I)V

    .line 317
    invoke-direct {p0, p1, v1, v0}, Lcom/twitter/android/client/y;->g(Lcom/twitter/library/platform/notifications/a;Lcom/twitter/android/client/af;I)V

    .line 318
    invoke-static {}, Lcey;->n()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 319
    invoke-direct {p0, p1, v1, v0}, Lcom/twitter/android/client/y;->h(Lcom/twitter/library/platform/notifications/a;Lcom/twitter/android/client/af;I)V

    .line 323
    :goto_1
    invoke-direct {p0, p1, v1, v0}, Lcom/twitter/android/client/y;->i(Lcom/twitter/library/platform/notifications/a;Lcom/twitter/android/client/af;I)V

    goto :goto_0

    .line 321
    :cond_2
    const-string/jumbo v2, "NotificationController"

    const-string/jumbo v3, "Received Moments push payload, but feature switch is disabled. Ignoring push payload."

    invoke-static {v2, v3}, Lcjw;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Lcom/twitter/media/request/ImageResponse;)V
    .locals 5

    .prologue
    .line 232
    invoke-virtual {p1}, Lcom/twitter/media/request/ImageResponse;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/request/a;

    .line 233
    const-string/jumbo v1, "NotificationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Handling loaded image request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0}, Lcom/twitter/media/request/a;->z()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/client/ac;

    .line 235
    invoke-virtual {p1}, Lcom/twitter/media/request/ImageResponse;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 238
    iget v3, v1, Lcom/twitter/android/client/ac;->a:I

    invoke-virtual {p0, v3, v0, v2}, Lcom/twitter/android/client/y;->a(ILcom/twitter/media/request/a;Landroid/graphics/Bitmap;)Z

    move-result v3

    .line 239
    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    .line 240
    iget-object v3, p0, Lcom/twitter/android/client/y;->j:Landroid/util/SparseArray;

    iget v4, v1, Lcom/twitter/android/client/ac;->a:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/client/notifications/StatusBarNotif;

    .line 241
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/twitter/android/client/notifications/StatusBarNotif;->r()Z

    move-result v4

    if-nez v4, :cond_1

    .line 244
    iget-boolean v1, v1, Lcom/twitter/android/client/ac;->b:Z

    if-eqz v1, :cond_0

    .line 245
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Z)V

    .line 247
    :cond_0
    invoke-direct {p0, v3, v2}, Lcom/twitter/android/client/y;->a(Lcom/twitter/android/client/notifications/StatusBarNotif;Landroid/graphics/Bitmap;)V

    .line 250
    :cond_1
    const-string/jumbo v1, "NotificationController"

    const-string/jumbo v2, "Image(s) loaded."

    invoke-static {v1, v2}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/media/request/a;->a(Lcom/twitter/media/request/i;)V

    .line 252
    return-void
.end method

.method public bridge synthetic a(Lcom/twitter/media/request/ResourceResponse;)V
    .locals 0

    .prologue
    .line 105
    check-cast p1, Lcom/twitter/media/request/ImageResponse;

    invoke-virtual {p0, p1}, Lcom/twitter/android/client/y;->a(Lcom/twitter/media/request/ImageResponse;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/twitter/android/client/y;->g:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/twitter/android/client/y;->c(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1265
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v5

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1267
    iget-object v1, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    const-string/jumbo v2, "type_event_start_cricket_activity"

    const/4 v3, 0x2

    .line 1269
    invoke-static {v1, v2, v3}, Lcom/twitter/android/platform/TwitterAccessCwcNotificationReceiver;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1268
    invoke-direct {p0, p2, v1}, Lcom/twitter/android/client/y;->a(Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 1273
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    new-instance v2, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 1274
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-wide/16 v2, 0x0

    .line 1275
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1276
    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x7f020367

    iget-object v2, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    const v3, 0x7f0a08b5

    .line 1278
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    const-string/jumbo v4, "type_event_disable"

    .line 1279
    invoke-static {v3, v4, v5}, Lcom/twitter/android/platform/TwitterAccessCwcNotificationReceiver;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1277
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1282
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1284
    iget-object v1, p0, Lcom/twitter/android/client/y;->e:Landroid/app/NotificationManager;

    const/16 v2, 0x3f2

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1285
    return-void
.end method

.method a(ZILandroid/os/Bundle;Lcom/twitter/library/client/Session;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x3ec

    const/4 v5, 0x0

    .line 1171
    iget-object v0, p0, Lcom/twitter/android/client/y;->e:Landroid/app/NotificationManager;

    .line 1172
    new-instance v1, Lcom/twitter/android/client/ag;

    invoke-direct {v1}, Lcom/twitter/android/client/ag;-><init>()V

    invoke-virtual {p4}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/client/ag;->a(J)Lcom/twitter/android/client/ag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/client/ag;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1174
    if-eqz p1, :cond_0

    .line 1176
    iget-object v2, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1177
    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1176
    invoke-direct {p0, p2, v2}, Lcom/twitter/android/client/y;->a(ILandroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 1178
    invoke-virtual {v2, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 1179
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v6, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1180
    iget-object v2, p0, Lcom/twitter/android/client/y;->p:Landroid/os/Handler;

    new-instance v3, Lcom/twitter/android/client/ab;

    invoke-direct {v3, p0, v0, v1}, Lcom/twitter/android/client/ab;-><init>(Lcom/twitter/android/client/y;Landroid/app/NotificationManager;Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1197
    :goto_0
    return-void

    .line 1186
    :cond_0
    invoke-virtual {p4}, Lcom/twitter/library/client/Session;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p4}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1188
    iget-object v2, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    .line 1190
    invoke-direct {p0, p3, p4}, Lcom/twitter/android/client/y;->b(Landroid/os/Bundle;Lcom/twitter/library/client/Session;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000000

    .line 1189
    invoke-static {v2, v5, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1188
    invoke-direct {p0, p2, v2}, Lcom/twitter/android/client/y;->a(ILandroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 1192
    invoke-virtual {v2, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 1193
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v6, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0

    .line 1195
    :cond_1
    invoke-virtual {v0, v1, v6}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a([IJ)V
    .locals 2

    .prologue
    .line 1473
    invoke-direct {p0, p2, p3}, Lcom/twitter/android/client/y;->d(J)Lcom/twitter/library/service/v;

    move-result-object v0

    .line 1474
    invoke-virtual {v0, p1}, Lcom/twitter/library/service/v;->a([I)Lcom/twitter/library/service/v;

    move-result-object v0

    const/4 v1, 0x0

    .line 1475
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/v;->a(I)Lcom/twitter/library/service/v;

    move-result-object v0

    .line 1476
    iget-object v1, p0, Lcom/twitter/android/client/y;->l:Lcom/twitter/library/client/bd;

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 1477
    return-void
.end method

.method a(ILcom/twitter/media/request/a;Landroid/graphics/Bitmap;)Z
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/twitter/android/client/y;->k:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/notifications/StatusBarNotif;

    .line 290
    if-nez v0, :cond_0

    .line 291
    const/4 v0, 0x0

    .line 295
    :goto_0
    return v0

    .line 293
    :cond_0
    invoke-virtual {v0, p0, p2, p3}, Lcom/twitter/android/client/notifications/StatusBarNotif;->a(Lcom/twitter/android/client/y;Lcom/twitter/media/request/a;Landroid/graphics/Bitmap;)V

    .line 294
    invoke-virtual {p0, p1}, Lcom/twitter/android/client/y;->a(I)V

    .line 295
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1322
    invoke-static {p1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1328
    :cond_0
    :goto_0
    return v0

    .line 1325
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    .line 1326
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1327
    iget-object v2, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1328
    if-eqz v1, :cond_0

    const-class v2, Lcom/twitter/android/UrlInterpreterActivity;

    .line 1329
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/twitter/library/client/Session;JLjava/lang/String;I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 6

    .prologue
    .line 1126
    new-instance v0, Lcom/twitter/android/client/ai;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/android/client/ai;-><init>(Lcom/twitter/android/client/z;)V

    .line 1127
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/twitter/android/client/ai;->a:Z

    .line 1128
    iput-object p4, v0, Lcom/twitter/android/client/ai;->g:Ljava/lang/String;

    .line 1129
    iput p5, v0, Lcom/twitter/android/client/ai;->h:I

    .line 1131
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/twitter/android/client/y;->a(Lcom/twitter/library/client/Session;JLcom/twitter/android/client/ai;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1133
    iget-object v1, p0, Lcom/twitter/android/client/y;->p:Landroid/os/Handler;

    new-instance v2, Lcom/twitter/android/client/aa;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/twitter/android/client/aa;-><init>(Lcom/twitter/android/client/y;Lcom/twitter/library/client/Session;J)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1142
    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 823
    invoke-static {}, Lcom/twitter/android/au;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 829
    :goto_0
    return-void

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/client/y;->e:Landroid/app/NotificationManager;

    const-string/jumbo v1, "NonReleaseNotifications"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public b(J)V
    .locals 3

    .prologue
    .line 843
    iget-object v0, p0, Lcom/twitter/android/client/y;->o:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 275
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/twitter/android/client/y;->e:Landroid/app/NotificationManager;

    .line 276
    return-void
.end method

.method public b(Lcom/twitter/android/client/aj;)V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/twitter/android/client/y;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 284
    return-void
.end method

.method b(Lcom/twitter/android/client/notifications/StatusBarNotif;)V
    .locals 1

    .prologue
    .line 690
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/client/y;->a(Lcom/twitter/android/client/notifications/StatusBarNotif;Landroid/graphics/Bitmap;)V

    .line 691
    return-void
.end method

.method public b(Lcom/twitter/library/platform/notifications/a;)V
    .locals 6

    .prologue
    const/high16 v5, 0x10000000

    const/4 v4, 0x1

    .line 1336
    iget-object v0, p1, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    .line 1337
    iget-object v1, v0, Lcom/twitter/library/platform/notifications/ae;->m:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/twitter/android/client/y;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1338
    new-instance v1, Lcom/twitter/library/util/InvalidDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid logged out notification uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/twitter/library/platform/notifications/ae;->m:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/twitter/library/util/InvalidDataException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 1355
    :goto_0
    return-void

    .line 1342
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    const-class v3, Lcom/twitter/android/UrlInterpreterActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "android.intent.action.VIEW"

    .line 1343
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, v0, Lcom/twitter/library/platform/notifications/ae;->m:Ljava/lang/String;

    .line 1344
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 1345
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 1346
    iget-object v2, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1348
    iget-object v2, v0, Lcom/twitter/library/platform/notifications/ae;->f:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/twitter/android/client/y;->a(Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/twitter/library/platform/notifications/ae;->g:Ljava/lang/String;

    .line 1349
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    new-instance v2, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    iget-object v0, v0, Lcom/twitter/library/platform/notifications/ae;->g:Ljava/lang/String;

    .line 1350
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1351
    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 1352
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1353
    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1354
    iget-object v1, p0, Lcom/twitter/android/client/y;->e:Landroid/app/NotificationManager;

    const/16 v2, 0x3f3

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1358
    iget-object v0, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1359
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1360
    iget-object v1, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1361
    const-string/jumbo v1, "New dogfood update available"

    const-string/jumbo v2, "Tap to install"

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/client/y;->a(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/twitter/android/client/y;->g:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/twitter/android/client/y;->c(Ljava/lang/String;)I

    move-result v1

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    return-void
.end method

.method protected b(I)Z
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/twitter/android/client/y;->k:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 849
    iget-object v0, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    .line 850
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/AddressbookHelperActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "find_friends"

    .line 851
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra_scribe_page"

    const-string/jumbo v3, "notification"

    .line 852
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x14000000

    .line 853
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 856
    const v2, 0x7f0a0727

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 857
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f020651

    .line 858
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    .line 859
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1200f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 860
    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 861
    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const v3, 0x7f0a0726

    .line 862
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 863
    invoke-static {v0, v6, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 864
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 865
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 866
    iget-object v1, p0, Lcom/twitter/android/client/y;->f:Lcom/twitter/library/client/bk;

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 867
    new-instance v1, Lcom/twitter/android/client/ag;

    invoke-direct {v1}, Lcom/twitter/android/client/ag;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/client/ag;->a(J)Lcom/twitter/android/client/ag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/client/ag;->toString()Ljava/lang/String;

    move-result-object v1

    .line 868
    iget-object v2, p0, Lcom/twitter/android/client/y;->e:Landroid/app/NotificationManager;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 869
    iget-object v0, p0, Lcom/twitter/android/client/y;->b:Lcom/twitter/android/client/c;

    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/client/c;->a(J)V

    .line 870
    return-void
.end method

.method public c(J)V
    .locals 3

    .prologue
    .line 1448
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/client/y;->d(J)Lcom/twitter/library/service/v;

    move-result-object v0

    const/4 v1, 0x1

    .line 1449
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/v;->a(I)Lcom/twitter/library/service/v;

    move-result-object v0

    .line 1450
    iget-object v1, p0, Lcom/twitter/android/client/y;->l:Lcom/twitter/library/client/bd;

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 1451
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/twitter/android/client/y;->e:Landroid/app/NotificationManager;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1292
    return-void
.end method

.method e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1365
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "https://betas.to/NpMBxyyL"

    .line 1366
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 1367
    iget-object v1, p0, Lcom/twitter/android/client/y;->d:Landroid/content/Context;

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1368
    const-string/jumbo v1, "Switch to Beta by Crashlytics to update Dogfood"

    const-string/jumbo v2, "Tap to visit webpage to download Beta"

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/client/y;->a(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    return-void
.end method
