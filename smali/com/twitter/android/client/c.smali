.class public Lcom/twitter/android/client/c;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static b:Lcom/twitter/android/client/c;


# instance fields
.field final a:Landroid/content/Context;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/client/aa;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/twitter/library/client/Session;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/twitter/library/client/bk;

.field private g:Lcom/twitter/library/client/bd;

.field private h:Z

.field private i:Z

.field private j:Lcom/twitter/android/client/BrowserLoadingStatus;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/client/c;->c:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/client/c;->d:Ljava/util/Map;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/client/c;->e:Ljava/util/Map;

    .line 95
    iput-boolean v1, p0, Lcom/twitter/android/client/c;->h:Z

    .line 96
    iput-boolean v1, p0, Lcom/twitter/android/client/c;->i:Z

    .line 101
    iput-object p1, p0, Lcom/twitter/android/client/c;->a:Landroid/content/Context;

    .line 102
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/client/c;->f:Lcom/twitter/library/client/bk;

    .line 103
    invoke-static {p1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/client/c;->g:Lcom/twitter/library/client/bd;

    .line 104
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/twitter/android/client/c;
    .locals 3

    .prologue
    .line 107
    const-class v1, Lcom/twitter/android/client/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/twitter/android/client/c;->b:Lcom/twitter/android/client/c;

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 109
    new-instance v2, Lcom/twitter/android/client/c;

    invoke-direct {v2, v0}, Lcom/twitter/android/client/c;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/twitter/android/client/c;->b:Lcom/twitter/android/client/c;

    .line 111
    new-instance v2, Lcom/twitter/android/client/d;

    invoke-direct {v2, v0}, Lcom/twitter/android/client/d;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Lcom/twitter/config/d;->a(Lcom/twitter/config/f;)V

    .line 120
    :cond_0
    sget-object v0, Lcom/twitter/android/client/c;->b:Lcom/twitter/android/client/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/twitter/android/client/c;)Lcom/twitter/library/client/bk;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/twitter/android/client/c;->f:Lcom/twitter/library/client/bk;

    return-object v0
.end method

.method private a(Lcom/twitter/library/client/Session;Lcom/twitter/library/platform/notifications/ae;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 491
    iget v0, p2, Lcom/twitter/library/platform/notifications/ae;->d:I

    .line 492
    new-instance v1, Lcom/twitter/library/service/aa;

    invoke-direct {v1}, Lcom/twitter/library/service/aa;-><init>()V

    .line 493
    new-instance v2, Lcom/twitter/internal/android/service/ab;

    invoke-direct {v2}, Lcom/twitter/internal/android/service/ab;-><init>()V

    .line 494
    invoke-virtual {v1, v6}, Lcom/twitter/library/service/aa;->a(Z)V

    .line 495
    invoke-virtual {v2, v1}, Lcom/twitter/internal/android/service/ab;->a(Ljava/lang/Object;)V

    .line 496
    iget-object v1, p0, Lcom/twitter/android/client/c;->g:Lcom/twitter/library/client/bd;

    new-instance v3, Lbsb;

    iget-object v4, p0, Lcom/twitter/android/client/c;->a:Landroid/content/Context;

    .line 497
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v5

    invoke-direct {v3, v4, p1, v5, v6}, Lbsb;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/model/core/TwitterUser;I)V

    .line 498
    invoke-virtual {v3, v0}, Lbsb;->d(I)Lbss;

    move-result-object v3

    .line 499
    invoke-virtual {v3, v0}, Lbss;->e(I)Lbss;

    move-result-object v0

    .line 500
    invoke-static {}, Lcom/twitter/android/av/v;->a()I

    move-result v3

    invoke-virtual {v0, v3}, Lbss;->f(I)Lbss;

    move-result-object v0

    .line 496
    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/internal/android/service/ab;)V

    .line 502
    return-void
.end method

.method private a(Lcom/twitter/library/platform/notifications/a;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 505
    iget-object v0, p0, Lcom/twitter/android/client/c;->f:Lcom/twitter/library/client/bk;

    iget-wide v2, p1, Lcom/twitter/library/platform/notifications/a;->c:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/client/bk;->b(J)Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 506
    invoke-virtual {p0, v0, p1, p2}, Lcom/twitter/android/client/c;->a(Lcom/twitter/library/client/Session;Lcom/twitter/library/platform/notifications/a;Landroid/content/Intent;)V

    .line 507
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    .prologue
    .line 413
    iget-object v0, p0, Lcom/twitter/android/client/c;->f:Lcom/twitter/library/client/bk;

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 414
    iget-object v1, p0, Lcom/twitter/android/client/c;->g:Lcom/twitter/library/client/bd;

    new-instance v2, Lcom/twitter/library/api/ac;

    iget-object v3, p0, Lcom/twitter/android/client/c;->a:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/twitter/library/api/ac;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    const/4 v3, 0x3

    .line 415
    invoke-virtual {v2, v3}, Lcom/twitter/library/api/ac;->h(I)Lcom/twitter/library/service/x;

    move-result-object v2

    const-string/jumbo v3, "user_id"

    .line 416
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/twitter/library/service/x;->b(Ljava/lang/String;J)Lcom/twitter/library/service/x;

    move-result-object v0

    const-string/jumbo v2, "prompt_id"

    .line 417
    invoke-virtual {v0, v2, p1}, Lcom/twitter/library/service/x;->a(Ljava/lang/String;I)Lcom/twitter/library/service/x;

    move-result-object v0

    .line 414
    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 418
    return-void
.end method

.method public a(IJLjava/lang/String;Lcom/twitter/library/api/PromotedEvent;)V
    .locals 8

    .prologue
    .line 352
    iget-object v6, p0, Lcom/twitter/android/client/c;->g:Lcom/twitter/library/client/bd;

    new-instance v0, Lbqs;

    iget-object v1, p0, Lcom/twitter/android/client/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/client/c;->f:Lcom/twitter/library/client/bk;

    .line 353
    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lbqs;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;IJ)V

    .line 354
    invoke-virtual {v0, p4}, Lbqs;->a(Ljava/lang/String;)Lbqr;

    move-result-object v0

    .line 355
    invoke-virtual {v0, p5}, Lbqr;->a(Lcom/twitter/library/api/PromotedEvent;)Lbqr;

    move-result-object v0

    .line 352
    invoke-virtual {v6, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 356
    return-void
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 452
    iget-object v0, p0, Lcom/twitter/android/client/c;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 453
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "fft"

    .line 454
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 455
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 456
    return-void
.end method

.method public a(JI)V
    .locals 1

    .prologue
    .line 603
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/twitter/android/client/c;->a(JIZ)V

    .line 604
    return-void
.end method

.method public a(JIZ)V
    .locals 3

    .prologue
    .line 607
    new-instance v0, Lblu;

    iget-object v1, p0, Lcom/twitter/android/client/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/client/c;->f:Lcom/twitter/library/client/bk;

    invoke-virtual {v2, p1, p2}, Lcom/twitter/library/client/bk;->b(J)Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lblu;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    const/4 v1, 0x2

    .line 608
    invoke-virtual {v0, v1}, Lblu;->d(I)Lcom/twitter/library/service/o;

    move-result-object v0

    check-cast v0, Lblu;

    .line 609
    iput p3, v0, Lblu;->b:I

    .line 610
    iput-boolean p4, v0, Lblu;->c:Z

    .line 611
    iget-object v1, p0, Lcom/twitter/android/client/c;->g:Lcom/twitter/library/client/bd;

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 612
    return-void
.end method

.method public a(JJ)V
    .locals 9

    .prologue
    .line 371
    iget-object v0, p0, Lcom/twitter/android/client/c;->g:Lcom/twitter/library/client/bd;

    new-instance v1, Lbsh;

    iget-object v2, p0, Lcom/twitter/android/client/c;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/android/client/c;->f:Lcom/twitter/library/client/bk;

    .line 372
    invoke-virtual {v3}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v3

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lbsh;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JJ)V

    .line 371
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 373
    return-void
.end method

.method public a(JLjava/lang/String;Z)V
    .locals 5

    .prologue
    .line 195
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, p1, p2}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    .line 196
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const-string/jumbo v1, "app_download_client_event"

    .line 197
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->h(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const-string/jumbo v1, "4"

    .line 199
    invoke-static {}, Lcom/twitter/util/ak;->a()Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 200
    if-eqz p4, :cond_0

    .line 201
    iget-object v1, p0, Lcom/twitter/android/client/c;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(Landroid/content/Context;)Lcom/twitter/library/scribe/ScribeLog;

    .line 203
    :cond_0
    sget-object v1, Lcom/twitter/library/client/u;->a:Lcom/twitter/library/client/u;

    invoke-virtual {v1}, Lcom/twitter/library/client/u;->a()Lcom/twitter/library/api/d;

    move-result-object v1

    .line 204
    if-eqz v1, :cond_1

    .line 205
    const-string/jumbo v2, "6"

    invoke-virtual {v1}, Lcom/twitter/library/api/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 206
    invoke-virtual {v1}, Lcom/twitter/library/api/d;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Z)Lcom/twitter/library/scribe/ScribeLog;

    .line 208
    :cond_1
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 209
    return-void
.end method

.method a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 480
    const-string/jumbo v0, "data"

    .line 481
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v1, Lcom/twitter/library/platform/notifications/a;->a:Lcom/twitter/util/serialization/ah;

    .line 480
    invoke-static {v0, v1}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/platform/notifications/a;

    .line 482
    if-eqz v0, :cond_0

    .line 483
    invoke-direct {p0, v0, p1}, Lcom/twitter/android/client/c;->a(Lcom/twitter/library/platform/notifications/a;Landroid/content/Intent;)V

    .line 485
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/android/client/BrowserLoadingStatus;)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Lcom/twitter/android/client/c;->j:Lcom/twitter/android/client/BrowserLoadingStatus;

    .line 621
    return-void
.end method

.method public a(Lcom/twitter/library/api/PromotedEvent;Lcss;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 314
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/client/c;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public a(Lcom/twitter/library/api/PromotedEvent;Lcss;Ljava/lang/String;)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 329
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    move-object v10, p3

    invoke-virtual/range {v0 .. v10}, Lcom/twitter/android/client/c;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public a(Lcom/twitter/library/api/PromotedEvent;Lcss;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/twitter/android/client/c;->g:Lcom/twitter/library/client/bd;

    new-instance v1, Lbqt;

    iget-object v2, p0, Lcom/twitter/android/client/c;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/android/client/c;->f:Lcom/twitter/library/client/bk;

    .line 268
    invoke-virtual {v3}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lbqt;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/library/api/PromotedEvent;)V

    iget-object v2, p2, Lcss;->c:Ljava/lang/String;

    .line 269
    invoke-virtual {v1, v2}, Lbqt;->b(Ljava/lang/String;)Lbqt;

    move-result-object v1

    .line 270
    invoke-virtual {p2}, Lcss;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Lbqt;->a(Z)Lbqt;

    move-result-object v1

    .line 271
    invoke-virtual {v1, p3}, Lbqt;->a(Ljava/lang/String;)Lbqt;

    move-result-object v1

    .line 272
    invoke-virtual {v1, p4}, Lbqt;->c(Ljava/lang/String;)Lbqt;

    move-result-object v1

    .line 273
    invoke-virtual {v1, p5}, Lbqt;->d(Ljava/lang/String;)Lbqt;

    move-result-object v1

    .line 274
    invoke-virtual {v1, p6}, Lbqt;->e(Ljava/lang/String;)Lbqt;

    move-result-object v1

    .line 275
    invoke-virtual {v1, p7}, Lbqt;->f(Ljava/lang/String;)Lbqt;

    move-result-object v1

    .line 276
    invoke-virtual {v1, p8}, Lbqt;->g(Ljava/lang/String;)Lbqt;

    move-result-object v1

    .line 277
    invoke-virtual {v1, p9}, Lbqt;->h(Ljava/lang/String;)Lbqt;

    move-result-object v1

    .line 278
    invoke-virtual {v1, p10}, Lbqt;->i(Ljava/lang/String;)Lbqt;

    move-result-object v1

    .line 267
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 279
    return-void
.end method

.method a(Lcom/twitter/library/client/Session;Lcom/twitter/library/platform/notifications/a;Landroid/content/Intent;)V
    .locals 17

    .prologue
    .line 510
    const-string/jumbo v2, "from_push"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 511
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/twitter/library/platform/notifications/a;->b:Ljava/lang/String;

    .line 512
    invoke-virtual/range {p1 .. p1}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v2

    if-nez v2, :cond_1

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/client/c;->c:Ljava/util/List;

    move-object/from16 v16, v0

    .line 518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/client/c;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/twitter/android/client/cd;->a(Landroid/content/Context;)Lcom/twitter/android/client/cd;

    move-result-object v2

    .line 519
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    iget v3, v3, Lcom/twitter/library/platform/notifications/ae;->b:I

    packed-switch v3, :pswitch_data_0

    .line 545
    :cond_2
    :goto_1
    invoke-static {v15}, Lcom/twitter/library/util/b;->b(Ljava/lang/String;)Lcom/twitter/app/common/account/a;

    move-result-object v2

    .line 546
    if-eqz v2, :cond_0

    .line 547
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/client/c;->a:Landroid/content/Context;

    .line 548
    invoke-virtual {v2}, Lcom/twitter/app/common/account/a;->b()Lcom/twitter/app/common/account/UserIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/app/common/account/UserIdentifier;->b()J

    move-result-wide v4

    .line 547
    invoke-static {v3, v4, v5}, Lcom/twitter/library/platform/notifications/x;->a(Landroid/content/Context;J)Lcom/twitter/library/platform/notifications/x;

    move-result-object v3

    .line 549
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/client/c;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/twitter/library/platform/notifications/PushRegistration;->c(Landroid/content/Context;)Z

    move-result v4

    .line 550
    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/twitter/library/platform/notifications/x;->a()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    if-nez v4, :cond_6

    .line 552
    invoke-virtual {v2}, Lcom/twitter/app/common/account/a;->a()Landroid/accounts/Account;

    move-result-object v3

    sget-object v4, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_6

    .line 553
    invoke-virtual {v2}, Lcom/twitter/app/common/account/a;->a()Landroid/accounts/Account;

    move-result-object v2

    sget-object v3, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    const/4 v2, 0x1

    .line 554
    :goto_2
    if-eqz v2, :cond_5

    const-string/jumbo v2, "show_notif"

    const/4 v3, 0x1

    .line 555
    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 558
    invoke-static {}, Lcom/twitter/app/common/account/d;->a()Lcom/twitter/app/common/account/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/app/common/account/d;->b()I

    move-result v2

    .line 559
    if-lez v2, :cond_5

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/client/c;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/twitter/android/client/y;->a(Landroid/content/Context;)Lcom/twitter/android/client/y;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/twitter/android/client/y;->a(Lcom/twitter/library/platform/notifications/a;)V

    .line 565
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/client/c;->f:Lcom/twitter/library/client/bk;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/twitter/library/client/bk;->d(Lcom/twitter/library/client/Session;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/client/c;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/twitter/badge/LauncherIconBadgeUpdaterService;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 521
    :pswitch_0
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/twitter/android/client/cd;->a(Lcom/twitter/library/client/Session;Z)V

    .line 522
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/client/c;->a(Lcom/twitter/library/client/Session;Lcom/twitter/library/platform/notifications/ae;)V

    goto/16 :goto_1

    .line 526
    :pswitch_1
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/twitter/android/client/cd;->a(Lcom/twitter/library/client/Session;Z)V

    .line 527
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v14, v2

    :goto_3
    if-ltz v14, :cond_2

    .line 528
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/client/aa;

    const/4 v4, 0x0

    const/16 v5, 0xc8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    iget v12, v3, Lcom/twitter/library/platform/notifications/ae;->d:I

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v13}, Lcom/twitter/library/client/aa;->a(Lcom/twitter/library/client/Session;Ljava/lang/String;ILjava/lang/String;IJJIZ)V

    .line 527
    add-int/lit8 v2, v14, -0x1

    move v14, v2

    goto :goto_3

    .line 534
    :pswitch_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    :goto_4
    if-ltz v3, :cond_2

    .line 535
    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/client/aa;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/twitter/library/platform/notifications/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/twitter/library/client/aa;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 534
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_4

    .line 553
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 519
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/twitter/library/client/aa;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/twitter/android/client/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/client/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/core/Tweet;)V
    .locals 5

    .prologue
    .line 366
    iget-object v0, p0, Lcom/twitter/android/client/c;->g:Lcom/twitter/library/client/bd;

    new-instance v1, Lbrw;

    iget-object v2, p0, Lcom/twitter/android/client/c;->a:Landroid/content/Context;

    new-instance v3, Lcom/twitter/library/service/ab;

    iget-object v4, p0, Lcom/twitter/android/client/c;->f:Lcom/twitter/library/client/bk;

    .line 367
    invoke-virtual {v4}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/twitter/library/service/ab;-><init>(Lcom/twitter/library/client/Session;)V

    invoke-direct {v1, v2, v3, p1}, Lbrw;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;Lcom/twitter/model/core/Tweet;)V

    .line 366
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 368
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/api/PromotedEvent;)V
    .locals 4

    .prologue
    .line 359
    iget-object v0, p0, Lcom/twitter/android/client/c;->g:Lcom/twitter/library/client/bd;

    new-instance v1, Lbqq;

    iget-object v2, p0, Lcom/twitter/android/client/c;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/android/client/c;->f:Lcom/twitter/library/client/bk;

    .line 360
    invoke-virtual {v3}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lbqq;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;)V

    .line 361
    invoke-virtual {v1, p2}, Lbqq;->a(Ljava/lang/String;)Lbqr;

    move-result-object v1

    .line 362
    invoke-virtual {v1, p3}, Lbqr;->a(Lcom/twitter/library/api/PromotedEvent;)Lbqr;

    move-result-object v1

    .line 359
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 363
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/twitter/android/client/c;->h:Z

    .line 133
    return-void
.end method

.method public a([Ljava/lang/String;[I)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 591
    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    if-eqz p2, :cond_2

    array-length v0, p2

    if-lez v0, :cond_2

    .line 592
    new-instance v3, Ljava/util/ArrayList;

    array-length v0, p1

    array-length v2, p2

    mul-int/2addr v0, v2

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 593
    array-length v4, p1

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, p1, v2

    .line 594
    array-length v6, p2

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_0

    aget v7, p2, v0

    .line 595
    invoke-static {v5, v7}, Lcom/twitter/library/media/manager/UserImageRequest;->a(Ljava/lang/String;I)Lcom/twitter/media/request/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/twitter/media/request/b;->a()Lcom/twitter/media/request/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/twitter/media/request/a;->r()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 593
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/client/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/media/manager/l;->a(Landroid/content/Context;)Lcom/twitter/library/media/manager/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/media/manager/l;->c()Lcom/twitter/library/media/manager/i;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/twitter/library/media/manager/i;->a(Ljava/util/Collection;)Ljava/util/concurrent/Future;

    .line 600
    :cond_2
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/twitter/android/client/c;->h:Z

    return v0
.end method

.method public b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 398
    invoke-static {p1}, Lcom/twitter/util/w;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/twitter/util/w;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 400
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 404
    :goto_0
    return-object v0

    .line 402
    :cond_0
    const v0, 0x7f0a0665

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 404
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)V
    .locals 6

    .prologue
    .line 426
    iget-object v0, p0, Lcom/twitter/android/client/c;->f:Lcom/twitter/library/client/bk;

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 427
    iget-object v1, p0, Lcom/twitter/android/client/c;->g:Lcom/twitter/library/client/bd;

    new-instance v2, Lcom/twitter/library/api/ac;

    iget-object v3, p0, Lcom/twitter/android/client/c;->a:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/twitter/library/api/ac;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    const/4 v3, 0x1

    .line 428
    invoke-virtual {v2, v3}, Lcom/twitter/library/api/ac;->h(I)Lcom/twitter/library/service/x;

    move-result-object v2

    const-string/jumbo v3, "user_id"

    .line 429
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/twitter/library/service/x;->b(Ljava/lang/String;J)Lcom/twitter/library/service/x;

    move-result-object v0

    const-string/jumbo v2, "prompt_id"

    .line 430
    invoke-virtual {v0, v2, p1}, Lcom/twitter/library/service/x;->a(Ljava/lang/String;I)Lcom/twitter/library/service/x;

    move-result-object v0

    .line 427
    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 431
    return-void
.end method

.method public b(Lcom/twitter/library/client/aa;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/twitter/android/client/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/twitter/android/client/c;->i:Z

    .line 137
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/twitter/android/client/c;->i:Z

    return v0
.end method

.method public c()Lcom/twitter/library/service/x;
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 167
    iget-object v0, p0, Lcom/twitter/android/client/c;->f:Lcom/twitter/library/client/bk;

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v3

    .line 168
    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-object v1

    .line 171
    :cond_1
    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v6

    .line 172
    if-eqz v6, :cond_0

    iget-wide v4, v6, Lcom/twitter/model/core/TwitterUser;->c:J

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-gtz v0, :cond_2

    iget-object v0, v6, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/client/c;->e:Ljava/util/Map;

    iget-wide v4, v6, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 176
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v4

    .line 177
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v8, v4, v8

    const-wide/32 v10, 0xea60

    cmp-long v0, v8, v10

    if-lez v0, :cond_0

    .line 178
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/client/c;->e:Ljava/util/Map;

    iget-wide v8, v6, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    new-instance v1, Lbvg;

    iget-object v2, p0, Lcom/twitter/android/client/c;->a:Landroid/content/Context;

    iget-wide v4, v6, Lcom/twitter/model/core/TwitterUser;->c:J

    iget-object v6, v6, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lbvg;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLjava/lang/String;)V

    goto :goto_0
.end method

.method public c(I)V
    .locals 6

    .prologue
    .line 439
    iget-object v0, p0, Lcom/twitter/android/client/c;->f:Lcom/twitter/library/client/bk;

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 440
    iget-object v1, p0, Lcom/twitter/android/client/c;->g:Lcom/twitter/library/client/bd;

    new-instance v2, Lcom/twitter/library/api/ac;

    iget-object v3, p0, Lcom/twitter/android/client/c;->a:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/twitter/library/api/ac;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    const/4 v3, 0x2

    .line 441
    invoke-virtual {v2, v3}, Lcom/twitter/library/api/ac;->h(I)Lcom/twitter/library/service/x;

    move-result-object v2

    const-string/jumbo v3, "user_id"

    .line 442
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/twitter/library/service/x;->b(Ljava/lang/String;J)Lcom/twitter/library/service/x;

    move-result-object v0

    const-string/jumbo v2, "prompt_id"

    .line 443
    invoke-virtual {v0, v2, p1}, Lcom/twitter/library/service/x;->a(Ljava/lang/String;I)Lcom/twitter/library/service/x;

    move-result-object v0

    .line 440
    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 444
    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 573
    const-string/jumbo v0, "search"

    .line 574
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 575
    new-instance v1, Lcom/twitter/android/client/e;

    invoke-direct {v1, p0}, Lcom/twitter/android/client/e;-><init>(Lcom/twitter/android/client/c;)V

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->setOnCancelListener(Landroid/app/SearchManager$OnCancelListener;)V

    .line 582
    new-instance v1, Lcom/twitter/android/client/f;

    invoke-direct {v1, p0}, Lcom/twitter/android/client/f;-><init>(Lcom/twitter/android/client/c;)V

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V

    .line 588
    return-void
.end method

.method public d()V
    .locals 8

    .prologue
    .line 382
    iget-object v0, p0, Lcom/twitter/android/client/c;->f:Lcom/twitter/library/client/bk;

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 383
    iget-object v0, p0, Lcom/twitter/android/client/c;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 384
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    .line 385
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/32 v6, 0xea60

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/client/c;->d:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    iget-object v0, p0, Lcom/twitter/android/client/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lbki;->a(Landroid/content/Context;)Lbki;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Lbki;->m()Ljava/lang/String;

    move-result-object v0

    .line 389
    iget-object v2, p0, Lcom/twitter/android/client/c;->g:Lcom/twitter/library/client/bd;

    new-instance v3, Lbkt;

    iget-object v4, p0, Lcom/twitter/android/client/c;->a:Landroid/content/Context;

    invoke-direct {v3, v4, v1, v0}, Lbkt;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 391
    :cond_1
    return-void
.end method

.method public e()J
    .locals 4

    .prologue
    .line 447
    iget-object v0, p0, Lcom/twitter/android/client/c;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "fft"

    const-wide/16 v2, 0x0

    .line 448
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 447
    return-wide v0
.end method

.method public f()V
    .locals 4

    .prologue
    .line 466
    iget-object v0, p0, Lcom/twitter/android/client/c;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 467
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "ffft"

    .line 468
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 469
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 470
    return-void
.end method

.method public g()Lcom/twitter/android/client/BrowserLoadingStatus;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/twitter/android/client/c;->j:Lcom/twitter/android/client/BrowserLoadingStatus;

    return-object v0
.end method
