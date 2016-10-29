.class public Lcom/twitter/library/client/bk;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static a:Lcom/twitter/library/client/bk;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/client/bj;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/library/client/Session;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/twitter/library/client/Session;

.field private final g:Landroid/os/Handler;

.field private h:Lcom/twitter/library/client/bd;

.field private final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/library/client/bs;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/twitter/library/client/bk;->a:Lcom/twitter/library/client/bk;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/client/bk;->c:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/client/bk;->d:Ljava/lang/Object;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/client/bk;->e:Ljava/util/HashMap;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/client/bk;->i:Ljava/util/HashMap;

    .line 93
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/client/bk;->j:Ljava/util/LinkedList;

    .line 98
    invoke-static {}, Lcom/twitter/util/h;->d()V

    .line 99
    iput-object v1, p0, Lcom/twitter/library/client/bk;->b:Landroid/content/Context;

    .line 100
    iput-object v1, p0, Lcom/twitter/library/client/bk;->g:Landroid/os/Handler;

    .line 101
    new-instance v0, Lcom/twitter/library/client/Session;

    invoke-direct {v0}, Lcom/twitter/library/client/Session;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/client/bk;->f:Lcom/twitter/library/client/Session;

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/client/bk;->c:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/client/bk;->d:Ljava/lang/Object;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/client/bk;->e:Ljava/util/HashMap;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/client/bk;->i:Ljava/util/HashMap;

    .line 93
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/client/bk;->j:Ljava/util/LinkedList;

    .line 105
    iput-object p1, p0, Lcom/twitter/library/client/bk;->b:Landroid/content/Context;

    .line 106
    invoke-static {p1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/client/bk;->h:Lcom/twitter/library/client/bd;

    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/twitter/library/client/bk;->g:Landroid/os/Handler;

    .line 108
    invoke-direct {p0}, Lcom/twitter/library/client/bk;->i()V

    .line 109
    return-void
.end method

.method private static a(Lcom/twitter/library/client/l;)J
    .locals 4

    .prologue
    .line 898
    const-string/jumbo v0, "session_active_state_transition_timestamp"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/twitter/library/client/l;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Lcom/twitter/app/common/account/a;)Lcom/twitter/library/client/Session;
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 468
    invoke-direct {p0}, Lcom/twitter/library/client/bk;->h()Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 469
    invoke-static {p1}, Lcom/twitter/library/util/b;->c(Lcom/twitter/app/common/account/a;)Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 472
    invoke-virtual {p1}, Lcom/twitter/app/common/account/a;->f()Ljava/lang/String;

    move-result-object v3

    .line 473
    if-eqz v3, :cond_0

    move v0, v1

    .line 474
    :goto_0
    if-eqz v0, :cond_1

    .line 476
    invoke-virtual {p1}, Lcom/twitter/app/common/account/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twitter/library/client/Session;->a(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v2, v1}, Lcom/twitter/library/client/Session;->a(Z)V

    .line 480
    invoke-virtual {p1}, Lcom/twitter/app/common/account/a;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/Session;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/client/bq;)Ljava/lang/String;

    .line 489
    :goto_1
    return-object v2

    .line 473
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 482
    :cond_1
    invoke-direct {p0, v2, p1}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/Session;Lcom/twitter/app/common/account/a;)V

    goto :goto_1

    .line 485
    :cond_2
    new-instance v0, Lbiv;

    invoke-direct {v0}, Lbiv;-><init>()V

    const-string/jumbo v1, "accountName"

    .line 486
    invoke-virtual {p1}, Lcom/twitter/app/common/account/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Count not read userdata from account."

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 487
    invoke-virtual {v0, v1}, Lbiv;->a(Ljava/lang/Throwable;)Lbiv;

    move-result-object v0

    .line 485
    invoke-static {v0}, Lbix;->a(Lbiv;)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Lcom/twitter/app/common/account/a;J)Lcom/twitter/library/client/Session;
    .locals 9

    .prologue
    .line 377
    invoke-static {p1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 378
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    move v1, v0

    .line 379
    :goto_0
    iget-object v3, p0, Lcom/twitter/library/client/bk;->d:Ljava/lang/Object;

    monitor-enter v3

    .line 380
    if-nez v2, :cond_0

    if-eqz v1, :cond_6

    .line 382
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/client/bk;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/Session;

    .line 383
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    cmp-long v5, p3, v6

    if-eqz v5, :cond_3

    :cond_2
    if-eqz v2, :cond_1

    .line 385
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 386
    :cond_3
    monitor-exit v3

    .line 403
    :goto_1
    return-object v0

    .line 378
    :cond_4
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 391
    :cond_5
    if-nez p2, :cond_6

    .line 392
    if-eqz v2, :cond_7

    .line 393
    invoke-static {p1}, Lcom/twitter/library/util/b;->b(Ljava/lang/String;)Lcom/twitter/app/common/account/a;

    move-result-object p2

    .line 400
    :cond_6
    :goto_2
    if-nez p2, :cond_8

    .line 401
    invoke-direct {p0}, Lcom/twitter/library/client/bk;->h()Lcom/twitter/library/client/Session;

    move-result-object v0

    monitor-exit v3

    goto :goto_1

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 395
    :cond_7
    :try_start_1
    invoke-static {p3, p4}, Lcom/twitter/library/util/b;->a(J)Lcom/twitter/app/common/account/a;

    move-result-object p2

    goto :goto_2

    .line 403
    :cond_8
    invoke-direct {p0, p2}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/app/common/account/a;)Lcom/twitter/library/client/Session;

    move-result-object v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static declared-synchronized a()Lcom/twitter/library/client/bk;
    .locals 3

    .prologue
    .line 113
    const-class v1, Lcom/twitter/library/client/bk;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/twitter/library/client/bk;->a:Lcom/twitter/library/client/bk;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Instance has not been set"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 116
    :cond_0
    :try_start_1
    sget-object v0, Lcom/twitter/library/client/bk;->a:Lcom/twitter/library/client/bk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method private a(Lcom/twitter/library/client/Session;Lcom/twitter/model/account/LoginResponse;Lcom/twitter/model/core/TwitterUser;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 542
    iget-object v3, p2, Lcom/twitter/model/account/LoginResponse;->a:Lcom/twitter/model/account/OAuthToken;

    .line 544
    iget-object v2, p3, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/Session;Ljava/lang/String;Lcom/twitter/model/account/OAuthToken;Lcom/twitter/model/core/TwitterUser;Lcom/twitter/model/account/UserSettings;)V

    .line 546
    invoke-static {p3}, Lcom/twitter/library/util/b;->b(Lcom/twitter/model/core/TwitterUser;)Ljava/lang/String;

    move-result-object v1

    .line 547
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->h()Lcom/twitter/model/account/OAuthToken;

    move-result-object v0

    .line 550
    iget-object v2, p2, Lcom/twitter/model/account/LoginResponse;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 551
    iget-object v2, p0, Lcom/twitter/library/client/bk;->b:Landroid/content/Context;

    iget-object v3, p2, Lcom/twitter/model/account/LoginResponse;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lblc;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 554
    :cond_0
    invoke-static {v1, v0}, Lcom/twitter/library/util/b;->a(Ljava/lang/String;Lcom/twitter/model/account/OAuthToken;)Lcom/twitter/app/common/account/a;

    move-result-object v0

    .line 555
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 556
    invoke-virtual {p1, v7}, Lcom/twitter/library/client/Session;->a(Z)V

    .line 561
    :cond_1
    :goto_0
    invoke-static {}, Lcom/twitter/app/common/account/d;->a()Lcom/twitter/app/common/account/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/account/d;->b()I

    move-result v0

    if-ne v0, v6, :cond_3

    move v0, v6

    .line 562
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/Session;Z)V

    .line 563
    return-object v1

    .line 557
    :cond_2
    if-eqz v0, :cond_1

    .line 559
    sget-object v2, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    invoke-static {v0, v2, v6}, Lcom/twitter/library/util/b;->a(Lcom/twitter/app/common/account/a;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    move v0, v7

    .line 561
    goto :goto_1
.end method

.method private a(Lcom/twitter/library/client/Session;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/client/bu;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 306
    new-instance v1, Lbku;

    iget-object v2, p0, Lcom/twitter/library/client/bk;->b:Landroid/content/Context;

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p8

    move-object/from16 v8, p6

    move-object/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lbku;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    invoke-static {p2}, Lcom/twitter/util/a;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbku;->a(Ljava/lang/String;)Lbku;

    .line 313
    :cond_0
    iget-object v2, v1, Lbku;->d:Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-virtual {p0, v2, v0}, Lcom/twitter/library/client/bk;->a(Ljava/lang/String;Lcom/twitter/library/client/bs;)V

    .line 314
    iget-object v2, p0, Lcom/twitter/library/client/bk;->h:Lcom/twitter/library/client/bd;

    new-instance v3, Lcom/twitter/library/client/bt;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/client/bt;-><init>(Lcom/twitter/library/client/bk;Z)V

    invoke-virtual {v1, v3}, Lbku;->a(Lcom/twitter/internal/android/service/c;)Lcom/twitter/internal/android/service/AsyncOperation;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private a(Lcom/twitter/library/client/Session;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/client/bu;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 279
    new-instance v0, Lblp;

    iget-object v1, p0, Lcom/twitter/library/client/bk;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p4, p6}, Lblp;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {v0, p3}, Lblp;->d(Ljava/lang/String;)Lblp;

    move-result-object v0

    .line 281
    invoke-virtual {v0, p5}, Lblp;->e(Ljava/lang/String;)Lblp;

    move-result-object v0

    .line 282
    invoke-virtual {v0, p7}, Lblp;->g(Ljava/lang/String;)Lblp;

    move-result-object v0

    .line 283
    invoke-virtual {v0, p8}, Lblp;->c(Ljava/lang/String;)Lblp;

    move-result-object v0

    .line 284
    invoke-virtual {v0, p10}, Lblp;->f(Ljava/lang/String;)Lblp;

    move-result-object v0

    .line 285
    invoke-virtual {v0, p11}, Lblp;->h(Ljava/lang/String;)Lblp;

    move-result-object v1

    .line 287
    invoke-static {p10}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/twitter/util/a;->d(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 292
    :goto_0
    invoke-virtual {v1, v0}, Lblp;->b(Ljava/lang/String;)Lblp;

    .line 295
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    invoke-static {p2}, Lcom/twitter/util/a;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lblp;->a(Ljava/lang/String;)Lblp;

    .line 298
    :cond_1
    iget-object v0, v1, Lblp;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, p9}, Lcom/twitter/library/client/bk;->a(Ljava/lang/String;Lcom/twitter/library/client/bs;)V

    .line 299
    iget-object v0, p0, Lcom/twitter/library/client/bk;->h:Lcom/twitter/library/client/bd;

    new-instance v2, Lcom/twitter/library/client/bt;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/twitter/library/client/bt;-><init>(Lcom/twitter/library/client/bk;Z)V

    invoke-virtual {v1, v2}, Lblp;->a(Lcom/twitter/internal/android/service/c;)Lcom/twitter/internal/android/service/AsyncOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 291
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/library/client/bk;Lcom/twitter/library/client/Session;Lcom/twitter/model/account/LoginResponse;Lcom/twitter/model/core/TwitterUser;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/Session;Lcom/twitter/model/account/LoginResponse;Lcom/twitter/model/core/TwitterUser;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/twitter/library/client/Session;J)V
    .locals 4

    .prologue
    .line 763
    iget-object v2, p0, Lcom/twitter/library/client/bk;->c:Ljava/util/List;

    monitor-enter v2

    .line 764
    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/client/bk;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 765
    iget-object v0, p0, Lcom/twitter/library/client/bk;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/bj;

    invoke-interface {v0, p1, p2, p3}, Lcom/twitter/library/client/bj;->a(Lcom/twitter/library/client/Session;J)V

    .line 764
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 767
    :cond_0
    monitor-exit v2

    .line 768
    return-void

    .line 767
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Lcom/twitter/library/client/Session;JZ)V
    .locals 8

    .prologue
    .line 853
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 854
    const-wide/16 v0, -0x1

    .line 855
    invoke-direct {p0, p1}, Lcom/twitter/library/client/bk;->h(Lcom/twitter/library/client/Session;)Lcom/twitter/library/client/l;

    move-result-object v2

    .line 856
    if-eqz v2, :cond_1

    .line 857
    invoke-static {v2}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/l;)J

    move-result-wide v4

    .line 858
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 859
    sub-long v0, p2, v4

    .line 861
    :cond_0
    invoke-static {v2, p2, p3}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/l;J)V

    .line 864
    :cond_1
    if-eqz p4, :cond_2

    .line 865
    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/Session;J)V

    .line 869
    :goto_0
    return-void

    .line 867
    :cond_2
    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/library/client/bk;->b(Lcom/twitter/library/client/Session;J)V

    goto :goto_0
.end method

.method private a(Lcom/twitter/library/client/Session;Lcom/twitter/app/common/account/a;)V
    .locals 6

    .prologue
    .line 493
    invoke-static {p2}, Lcom/twitter/library/util/b;->b(Lcom/twitter/app/common/account/a;)Lcom/twitter/model/account/OAuthToken;

    move-result-object v3

    .line 495
    if-eqz v3, :cond_0

    .line 496
    invoke-static {p2}, Lcom/twitter/library/util/b;->c(Lcom/twitter/app/common/account/a;)Lcom/twitter/model/core/TwitterUser;

    move-result-object v4

    .line 497
    if-eqz v4, :cond_0

    .line 499
    invoke-static {p2}, Lcom/twitter/library/util/b;->a(Lcom/twitter/app/common/account/a;)Lcom/twitter/model/account/UserSettings;

    move-result-object v5

    .line 500
    invoke-virtual {p2}, Lcom/twitter/app/common/account/a;->d()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/Session;Ljava/lang/String;Lcom/twitter/model/account/OAuthToken;Lcom/twitter/model/core/TwitterUser;Lcom/twitter/model/account/UserSettings;)V

    .line 503
    :cond_0
    return-void
.end method

.method private a(Lcom/twitter/library/client/Session;Lcom/twitter/library/client/Session;)V
    .locals 2

    .prologue
    .line 692
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 693
    invoke-direct {p0, p1, p2}, Lcom/twitter/library/client/bk;->b(Lcom/twitter/library/client/Session;Lcom/twitter/library/client/Session;)V

    .line 702
    :goto_0
    return-void

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/client/bk;->g:Landroid/os/Handler;

    new-instance v1, Lcom/twitter/library/client/bm;

    invoke-direct {v1, p0, p1, p2}, Lcom/twitter/library/client/bm;-><init>(Lcom/twitter/library/client/bk;Lcom/twitter/library/client/Session;Lcom/twitter/library/client/Session;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private a(Lcom/twitter/library/client/Session;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 525
    invoke-static {p2}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    invoke-static {p2}, Lcom/twitter/library/util/b;->b(Ljava/lang/String;)Lcom/twitter/app/common/account/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 528
    invoke-virtual {p0, p2}, Lcom/twitter/library/client/bk;->b(Ljava/lang/String;)Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 529
    invoke-virtual {p1, v0}, Lcom/twitter/library/client/Session;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 530
    sget-object v1, Lcom/twitter/library/client/Session$LoginStatus;->a:Lcom/twitter/library/client/Session$LoginStatus;

    invoke-virtual {p1, v1}, Lcom/twitter/library/client/Session;->a(Lcom/twitter/library/client/Session$LoginStatus;)V

    .line 532
    :cond_0
    invoke-virtual {p0, v0}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/Session;)Ljava/lang/String;

    .line 536
    :goto_0
    return-void

    .line 534
    :cond_1
    sget-object v0, Lcom/twitter/library/client/Session$LoginStatus;->a:Lcom/twitter/library/client/Session$LoginStatus;

    invoke-virtual {p1, v0}, Lcom/twitter/library/client/Session;->a(Lcom/twitter/library/client/Session$LoginStatus;)V

    goto :goto_0
.end method

.method private a(Lcom/twitter/library/client/Session;Ljava/lang/String;Lcom/twitter/model/account/OAuthToken;Lcom/twitter/model/core/TwitterUser;Lcom/twitter/model/account/UserSettings;)V
    .locals 1

    .prologue
    .line 570
    sget-object v0, Lcom/twitter/library/client/Session$LoginStatus;->c:Lcom/twitter/library/client/Session$LoginStatus;

    invoke-virtual {p1, v0}, Lcom/twitter/library/client/Session;->a(Lcom/twitter/library/client/Session$LoginStatus;)V

    .line 573
    invoke-virtual {p1, p4}, Lcom/twitter/library/client/Session;->a(Lcom/twitter/model/core/TwitterUser;)V

    .line 574
    invoke-virtual {p1, p2}, Lcom/twitter/library/client/Session;->a(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p1, p3}, Lcom/twitter/library/client/Session;->a(Lcom/twitter/model/account/OAuthToken;)V

    .line 577
    if-eqz p5, :cond_0

    .line 578
    invoke-virtual {p1, p5}, Lcom/twitter/library/client/Session;->a(Lcom/twitter/model/account/UserSettings;)V

    .line 581
    :cond_0
    new-instance v0, Lcom/twitter/library/client/bl;

    invoke-direct {v0, p0, p1}, Lcom/twitter/library/client/bl;-><init>(Lcom/twitter/library/client/bk;Lcom/twitter/library/client/Session;)V

    invoke-virtual {p1, v0}, Lcom/twitter/library/client/Session;->a(Lcom/twitter/library/client/bi;)V

    .line 587
    return-void
.end method

.method private a(Lcom/twitter/library/client/Session;Z)V
    .locals 3

    .prologue
    .line 736
    iget-object v2, p0, Lcom/twitter/library/client/bk;->c:Ljava/util/List;

    monitor-enter v2

    .line 737
    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/client/bk;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 738
    iget-object v0, p0, Lcom/twitter/library/client/bk;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/bj;

    invoke-interface {v0, p1, p2}, Lcom/twitter/library/client/bj;->b(Lcom/twitter/library/client/Session;Z)V

    .line 737
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 740
    :cond_0
    monitor-exit v2

    .line 741
    return-void

    .line 740
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Lcom/twitter/library/client/bk;)V
    .locals 1

    .prologue
    .line 120
    const-class v0, Lcom/twitter/library/client/bk;

    invoke-static {v0}, Lcvp;->a(Ljava/lang/Class;)V

    .line 121
    sput-object p0, Lcom/twitter/library/client/bk;->a:Lcom/twitter/library/client/bk;

    .line 122
    return-void
.end method

.method static synthetic a(Lcom/twitter/library/client/bk;Lcom/twitter/library/client/Session;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/twitter/library/client/bk;->g(Lcom/twitter/library/client/Session;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/library/client/bk;Lcom/twitter/library/client/Session;Lcom/twitter/library/client/Session;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/twitter/library/client/bk;->b(Lcom/twitter/library/client/Session;Lcom/twitter/library/client/Session;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/library/client/bk;Lcom/twitter/library/client/Session;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/Session;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/library/client/bk;Lcom/twitter/library/client/Session;Z)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/twitter/library/client/bk;->b(Lcom/twitter/library/client/Session;Z)V

    return-void
.end method

.method private static a(Lcom/twitter/library/client/l;J)V
    .locals 3

    .prologue
    .line 911
    invoke-virtual {p0}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "session_active_state_transition_timestamp"

    .line 912
    invoke-virtual {v0, v1, p1, p2}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;J)Lcom/twitter/library/client/n;

    move-result-object v0

    .line 913
    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    .line 914
    return-void
.end method

.method static synthetic a(Lcom/twitter/library/client/bk;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/twitter/library/client/bk;->f(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/twitter/library/client/bk;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/twitter/library/client/bk;->i:Ljava/util/HashMap;

    return-object v0
.end method

.method private b(Lcom/twitter/library/client/Session;J)V
    .locals 4

    .prologue
    .line 772
    iget-object v2, p0, Lcom/twitter/library/client/bk;->c:Ljava/util/List;

    monitor-enter v2

    .line 773
    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/client/bk;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 774
    iget-object v0, p0, Lcom/twitter/library/client/bk;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/bj;

    invoke-interface {v0, p1, p2, p3}, Lcom/twitter/library/client/bj;->b(Lcom/twitter/library/client/Session;J)V

    .line 773
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 776
    :cond_0
    monitor-exit v2

    .line 777
    return-void

    .line 776
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private b(Lcom/twitter/library/client/Session;Lcom/twitter/library/client/Session;)V
    .locals 3

    .prologue
    .line 706
    invoke-direct {p0, p2}, Lcom/twitter/library/client/bk;->e(Lcom/twitter/library/client/Session;)V

    .line 707
    iget-boolean v0, p0, Lcom/twitter/library/client/bk;->k:Z

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 708
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v0

    .line 709
    if-eqz p1, :cond_0

    .line 710
    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/Session;JZ)V

    .line 712
    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/Session;JZ)V

    .line 714
    :cond_1
    return-void
.end method

.method private b(Lcom/twitter/library/client/Session;Z)V
    .locals 3

    .prologue
    .line 745
    iget-object v2, p0, Lcom/twitter/library/client/bk;->c:Ljava/util/List;

    monitor-enter v2

    .line 746
    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/client/bk;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 747
    iget-object v0, p0, Lcom/twitter/library/client/bk;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/bj;

    invoke-interface {v0, p1, p2}, Lcom/twitter/library/client/bj;->a(Lcom/twitter/library/client/Session;Z)V

    .line 746
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 749
    :cond_0
    monitor-exit v2

    .line 750
    return-void

    .line 749
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/twitter/library/client/bk;Lcom/twitter/library/client/Session;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/twitter/library/client/bk;->f(Lcom/twitter/library/client/Session;)V

    return-void
.end method

.method static synthetic c(Lcom/twitter/library/client/bk;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/twitter/library/client/bk;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/library/client/bk;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/twitter/library/client/bk;->j()V

    return-void
.end method

.method static synthetic e(Lcom/twitter/library/client/bk;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/twitter/library/client/bk;->b:Landroid/content/Context;

    return-object v0
.end method

.method private e(Lcom/twitter/library/client/Session;)V
    .locals 3

    .prologue
    .line 718
    iget-object v2, p0, Lcom/twitter/library/client/bk;->c:Ljava/util/List;

    monitor-enter v2

    .line 719
    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/client/bk;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 720
    iget-object v0, p0, Lcom/twitter/library/client/bk;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/bj;

    invoke-interface {v0, p1}, Lcom/twitter/library/client/bj;->a(Lcom/twitter/library/client/Session;)V

    .line 719
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 722
    :cond_0
    monitor-exit v2

    .line 723
    return-void

    .line 722
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private f(Lcom/twitter/library/client/Session;)V
    .locals 3

    .prologue
    .line 727
    iget-object v2, p0, Lcom/twitter/library/client/bk;->c:Ljava/util/List;

    monitor-enter v2

    .line 728
    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/client/bk;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 729
    iget-object v0, p0, Lcom/twitter/library/client/bk;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/bj;

    invoke-interface {v0, p1}, Lcom/twitter/library/client/bj;->b(Lcom/twitter/library/client/Session;)V

    .line 728
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 731
    :cond_0
    monitor-exit v2

    .line 732
    return-void

    .line 731
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private f(Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 506
    iget-object v1, p0, Lcom/twitter/library/client/bk;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 507
    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/client/bk;->f:Lcom/twitter/library/client/Session;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/twitter/library/client/bk;->b:Landroid/content/Context;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-static {v0, v2, v4, v5}, Lcom/twitter/library/provider/fm;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 510
    invoke-direct {p0}, Lcom/twitter/library/client/bk;->i()V

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/client/bk;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/Session;

    .line 514
    if-eqz v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/twitter/library/client/bk;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    invoke-static {}, Lcom/twitter/app/common/account/d;->a()Lcom/twitter/app/common/account/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/account/d;->b()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 518
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 520
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g(Lcom/twitter/library/client/Session;)V
    .locals 3

    .prologue
    .line 754
    iget-object v2, p0, Lcom/twitter/library/client/bk;->c:Ljava/util/List;

    monitor-enter v2

    .line 755
    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/client/bk;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 756
    iget-object v0, p0, Lcom/twitter/library/client/bk;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/bj;

    invoke-interface {v0, p1}, Lcom/twitter/library/client/bj;->c(Lcom/twitter/library/client/Session;)V

    .line 755
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 758
    :cond_0
    monitor-exit v2

    .line 759
    return-void

    .line 758
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private h()Lcom/twitter/library/client/Session;
    .locals 8

    .prologue
    .line 450
    iget-object v1, p0, Lcom/twitter/library/client/bk;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/client/bk;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/Session;

    .line 454
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->b()Lcom/twitter/library/client/Session$LoginStatus;

    move-result-object v3

    sget-object v4, Lcom/twitter/library/client/Session$LoginStatus;->a:Lcom/twitter/library/client/Session$LoginStatus;

    if-ne v3, v4, :cond_0

    .line 455
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 456
    monitor-exit v1

    .line 462
    :goto_0
    return-object v0

    .line 459
    :cond_1
    new-instance v0, Lcom/twitter/library/client/Session;

    invoke-direct {v0}, Lcom/twitter/library/client/Session;-><init>()V

    .line 460
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->c()Ljava/lang/String;

    move-result-object v2

    .line 461
    iget-object v3, p0, Lcom/twitter/library/client/bk;->e:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    monitor-exit v1

    goto :goto_0

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private h(Lcom/twitter/library/client/Session;)Lcom/twitter/library/client/l;
    .locals 4

    .prologue
    .line 882
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 883
    new-instance v0, Lcom/twitter/library/client/l;

    iget-object v1, p0, Lcom/twitter/library/client/bk;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    .line 885
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 6

    .prologue
    .line 938
    iget-object v1, p0, Lcom/twitter/library/client/bk;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 939
    :try_start_0
    invoke-static {}, Lcom/twitter/app/common/account/d;->a()Lcom/twitter/app/common/account/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/account/d;->c()Ljava/util/List;

    move-result-object v2

    .line 942
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 944
    iget-object v0, p0, Lcom/twitter/library/client/bk;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/provider/fm;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 945
    invoke-static {v0}, Lcom/twitter/library/util/b;->b(Ljava/lang/String;)Lcom/twitter/app/common/account/a;

    move-result-object v0

    .line 948
    if-nez v0, :cond_0

    .line 949
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/account/a;

    .line 951
    :cond_0
    invoke-virtual {v0}, Lcom/twitter/app/common/account/a;->d()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-direct {p0, v2, v0, v4, v5}, Lcom/twitter/library/client/bk;->a(Ljava/lang/String;Lcom/twitter/app/common/account/a;J)Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 955
    :goto_0
    invoke-virtual {p0, v0}, Lcom/twitter/library/client/bk;->c(Lcom/twitter/library/client/Session;)V

    .line 956
    monitor-exit v1

    .line 957
    return-void

    .line 953
    :cond_1
    invoke-direct {p0}, Lcom/twitter/library/client/bk;->h()Lcom/twitter/library/client/Session;

    move-result-object v0

    goto :goto_0

    .line 956
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/twitter/library/client/bk;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/util/ab;->a(Landroid/content/Context;)Lcom/twitter/library/util/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/util/ab;->a()V

    .line 1263
    return-void
.end method


# virtual methods
.method public a(J)Lcom/twitter/library/client/Session;
    .locals 3

    .prologue
    .line 339
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/client/bk;->b(J)Lcom/twitter/library/client/Session;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/twitter/library/service/x;)Lcom/twitter/library/client/Session;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 799
    if-nez p1, :cond_1

    .line 806
    :cond_0
    :goto_0
    return-object v0

    .line 802
    :cond_1
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->N()Lcom/twitter/library/service/ab;

    move-result-object v1

    .line 803
    if-eqz v1, :cond_0

    .line 806
    iget-object v0, v1, Lcom/twitter/library/service/ab;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/twitter/library/client/bk;->c(Ljava/lang/String;)Lcom/twitter/library/client/Session;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/library/client/Session;
    .locals 3

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/twitter/library/client/bk;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/Session;

    .line 218
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v2

    .line 219
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    :cond_1
    :goto_0
    return-object v0

    .line 227
    :cond_2
    invoke-virtual {p0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    invoke-direct {p0}, Lcom/twitter/library/client/bk;->h()Lcom/twitter/library/client/Session;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/twitter/library/client/Session;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 244
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->b()Lcom/twitter/library/client/Session$LoginStatus;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/client/Session$LoginStatus;->c:Lcom/twitter/library/client/Session$LoginStatus;

    if-eq v0, v1, :cond_0

    .line 245
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->b()Lcom/twitter/library/client/Session$LoginStatus;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/client/Session$LoginStatus;->b:Lcom/twitter/library/client/Session$LoginStatus;

    if-ne v0, v1, :cond_1

    .line 246
    :cond_0
    sget-object v0, Lcom/twitter/library/client/Session$LoginStatus;->d:Lcom/twitter/library/client/Session$LoginStatus;

    invoke-virtual {p1, v0}, Lcom/twitter/library/client/Session;->a(Lcom/twitter/library/client/Session$LoginStatus;)V

    .line 247
    iget-object v0, p0, Lcom/twitter/library/client/bk;->h:Lcom/twitter/library/client/bd;

    new-instance v1, Lblj;

    iget-object v2, p0, Lcom/twitter/library/client/bk;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lblj;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    new-instance v2, Lcom/twitter/library/client/br;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/twitter/library/client/br;-><init>(Lcom/twitter/library/client/bk;I)V

    .line 248
    invoke-virtual {v1, v2}, Lblj;->a(Lcom/twitter/internal/android/service/c;)Lcom/twitter/internal/android/service/AsyncOperation;

    move-result-object v1

    .line 247
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    move-result-object v0

    .line 250
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/twitter/library/client/Session;JLjava/lang/String;Lcom/twitter/library/client/bo;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 138
    sget-object v0, Lcom/twitter/library/client/Session$LoginStatus;->b:Lcom/twitter/library/client/Session$LoginStatus;

    invoke-virtual {p1, v0}, Lcom/twitter/library/client/Session;->a(Lcom/twitter/library/client/Session$LoginStatus;)V

    .line 139
    new-instance v1, Lbkr;

    iget-object v2, p0, Lcom/twitter/library/client/bk;->b:Landroid/content/Context;

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lbkr;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLjava/lang/String;)V

    .line 140
    iget-object v0, v1, Lbkr;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, p5}, Lcom/twitter/library/client/bk;->a(Ljava/lang/String;Lcom/twitter/library/client/bs;)V

    .line 141
    iget-object v0, p0, Lcom/twitter/library/client/bk;->h:Lcom/twitter/library/client/bd;

    new-instance v2, Lcom/twitter/library/client/bn;

    invoke-direct {v2, p0}, Lcom/twitter/library/client/bn;-><init>(Lcom/twitter/library/client/bk;)V

    .line 142
    invoke-virtual {v1, v2}, Lbkr;->a(Lcom/twitter/internal/android/service/c;)Lcom/twitter/internal/android/service/AsyncOperation;

    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/library/client/Session;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/library/client/bo;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 159
    sget-object v0, Lcom/twitter/library/client/Session$LoginStatus;->b:Lcom/twitter/library/client/Session$LoginStatus;

    invoke-virtual {p1, v0}, Lcom/twitter/library/client/Session;->a(Lcom/twitter/library/client/Session$LoginStatus;)V

    .line 160
    new-instance v1, Lbkr;

    iget-object v2, p0, Lcom/twitter/library/client/bk;->b:Landroid/content/Context;

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lbkr;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLjava/lang/String;)V

    .line 161
    iget-object v0, v1, Lbkr;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, p6}, Lcom/twitter/library/client/bk;->a(Ljava/lang/String;Lcom/twitter/library/client/bs;)V

    .line 162
    iget-object v0, p0, Lcom/twitter/library/client/bk;->h:Lcom/twitter/library/client/bd;

    .line 163
    invoke-virtual {v1, p5}, Lbkr;->a(Ljava/lang/String;)Lbkr;

    move-result-object v1

    new-instance v2, Lcom/twitter/library/client/bn;

    invoke-direct {v2, p0}, Lcom/twitter/library/client/bn;-><init>(Lcom/twitter/library/client/bk;)V

    .line 164
    invoke-virtual {v1, v2}, Lbkr;->a(Lcom/twitter/internal/android/service/c;)Lcom/twitter/internal/android/service/AsyncOperation;

    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/library/client/Session;Lcom/twitter/library/service/x;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 326
    iget-object v1, p0, Lcom/twitter/library/client/bk;->h:Lcom/twitter/library/client/bd;

    new-instance v0, Lblw;

    iget-object v2, p0, Lcom/twitter/library/client/bk;->b:Landroid/content/Context;

    new-instance v3, Lcom/twitter/library/network/aa;

    .line 327
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->h()Lcom/twitter/model/account/OAuthToken;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/twitter/library/network/aa;-><init>(Lcom/twitter/model/account/OAuthToken;)V

    invoke-direct {v0, v2, p1, v3}, Lblw;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/library/network/aa;)V

    new-instance v2, Lcom/twitter/library/client/br;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/twitter/library/client/br;-><init>(Lcom/twitter/library/client/bk;I)V

    .line 328
    invoke-virtual {v0, v2}, Lblw;->a(Lcom/twitter/internal/android/service/c;)Lcom/twitter/internal/android/service/AsyncOperation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/x;

    .line 329
    invoke-virtual {v0, p2}, Lcom/twitter/library/service/x;->a(Lcom/twitter/library/service/x;)Lcom/twitter/library/service/x;

    move-result-object v0

    .line 326
    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/library/client/Session;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/client/bq;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 204
    sget-object v0, Lcom/twitter/library/client/Session$LoginStatus;->b:Lcom/twitter/library/client/Session$LoginStatus;

    invoke-virtual {p1, v0}, Lcom/twitter/library/client/Session;->a(Lcom/twitter/library/client/Session$LoginStatus;)V

    .line 205
    const-string/jumbo v0, "one_factor_authorization_android_request_enabled"

    .line 206
    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v6

    .line 207
    new-instance v0, Lbld;

    iget-object v1, p0, Lcom/twitter/library/client/bk;->b:Landroid/content/Context;

    const-class v2, Lbld;

    .line 208
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lbld;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 209
    iget-object v1, v0, Lbld;->d:Ljava/lang/String;

    invoke-virtual {p0, v1, p4}, Lcom/twitter/library/client/bk;->a(Ljava/lang/String;Lcom/twitter/library/client/bs;)V

    .line 210
    iget-object v1, p0, Lcom/twitter/library/client/bk;->h:Lcom/twitter/library/client/bd;

    new-instance v2, Lcom/twitter/library/client/bp;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/twitter/library/client/bp;-><init>(Lcom/twitter/library/client/bk;Lcom/twitter/library/client/bl;)V

    .line 211
    invoke-virtual {v0, v2}, Lbld;->a(Lcom/twitter/internal/android/service/c;)Lcom/twitter/internal/android/service/AsyncOperation;

    move-result-object v0

    .line 210
    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/library/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/client/bq;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 170
    sget-object v0, Lcom/twitter/library/client/Session$LoginStatus;->b:Lcom/twitter/library/client/Session$LoginStatus;

    invoke-virtual {p1, v0}, Lcom/twitter/library/client/Session;->a(Lcom/twitter/library/client/Session$LoginStatus;)V

    .line 171
    new-instance v0, Lblk;

    iget-object v1, p0, Lcom/twitter/library/client/bk;->b:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lblk;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v1, v0, Lblk;->d:Ljava/lang/String;

    invoke-virtual {p0, v1, p5}, Lcom/twitter/library/client/bk;->a(Ljava/lang/String;Lcom/twitter/library/client/bs;)V

    .line 174
    iget-object v1, p0, Lcom/twitter/library/client/bk;->h:Lcom/twitter/library/client/bd;

    new-instance v2, Lcom/twitter/library/client/bp;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/twitter/library/client/bp;-><init>(Lcom/twitter/library/client/bk;Lcom/twitter/library/client/bl;)V

    invoke-virtual {v0, v2}, Lblk;->a(Lcom/twitter/internal/android/service/c;)Lcom/twitter/internal/android/service/AsyncOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/client/bq;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/twitter/library/client/bk;->a(Ljava/lang/String;)Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/Session;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/client/bq;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/client/bu;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .prologue
    .line 258
    invoke-static {}, Lcom/twitter/library/util/b;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/twitter/library/client/bk;->h()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 263
    :goto_0
    iget-object v0, p0, Lcom/twitter/library/client/bk;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 265
    const-string/jumbo v0, "account_create_api_for_signup_android_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 266
    invoke-direct/range {v0 .. v9}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/Session;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/client/bu;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    :goto_1
    return-object v0

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    .line 269
    invoke-direct/range {v0 .. v11}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/Session;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/client/bu;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Lcom/twitter/library/client/bj;)V
    .locals 2

    .prologue
    .line 657
    if-eqz p1, :cond_1

    .line 658
    iget-object v1, p0, Lcom/twitter/library/client/bk;->c:Ljava/util/List;

    monitor-enter v1

    .line 659
    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/client/bk;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/twitter/library/client/bk;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    :cond_0
    monitor-exit v1

    .line 664
    :cond_1
    return-void

    .line 662
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Lcom/twitter/library/client/bs;)V
    .locals 1

    .prologue
    .line 787
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 788
    iget-object v0, p0, Lcom/twitter/library/client/bk;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    :cond_0
    return-void
.end method

.method public b(J)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 349
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/twitter/library/client/bk;->a(Ljava/lang/String;Lcom/twitter/app/common/account/a;J)Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/library/client/Session;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 363
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/twitter/library/client/bk;->a(Ljava/lang/String;Lcom/twitter/app/common/account/a;J)Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/twitter/library/client/Session;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    iget-object v1, p0, Lcom/twitter/library/client/bk;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 439
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/twitter/library/client/bk;->e:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 440
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/twitter/library/client/bj;)V
    .locals 2

    .prologue
    .line 670
    if-eqz p1, :cond_0

    .line 671
    iget-object v1, p0, Lcom/twitter/library/client/bk;->c:Ljava/util/List;

    monitor-enter v1

    .line 672
    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/client/bk;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 673
    monitor-exit v1

    .line 675
    :cond_0
    return-void

    .line 673
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/twitter/library/client/Session;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 415
    if-nez p1, :cond_0

    .line 419
    :goto_0
    return v0

    .line 418
    :cond_0
    iget-object v1, p0, Lcom/twitter/library/client/bk;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 419
    :try_start_0
    iget-object v2, p0, Lcom/twitter/library/client/bk;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 419
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public c()Lcom/twitter/library/client/Session;
    .locals 2

    .prologue
    .line 631
    iget-object v1, p0, Lcom/twitter/library/client/bk;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 632
    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/client/bk;->f:Lcom/twitter/library/client/Session;

    monitor-exit v1

    return-object v0

    .line 633
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Ljava/lang/String;)Lcom/twitter/library/client/Session;
    .locals 2

    .prologue
    .line 426
    iget-object v1, p0, Lcom/twitter/library/client/bk;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/client/bk;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/Session;

    monitor-exit v1

    return-object v0

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Lcom/twitter/library/client/Session;)V
    .locals 6

    .prologue
    .line 606
    iget-object v1, p0, Lcom/twitter/library/client/bk;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 607
    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/client/bk;->f:Lcom/twitter/library/client/Session;

    if-eqz v0, :cond_1

    .line 608
    iget-object v0, p0, Lcom/twitter/library/client/bk;->f:Lcom/twitter/library/client/Session;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 609
    iget-object v0, p0, Lcom/twitter/library/client/bk;->j:Ljava/util/LinkedList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/twitter/library/client/bk;->j:Ljava/util/LinkedList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/client/bk;->j:Ljava/util/LinkedList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 613
    iget-object v0, p0, Lcom/twitter/library/client/bk;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_1

    .line 614
    iget-object v0, p0, Lcom/twitter/library/client/bk;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 617
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/client/bk;->f:Lcom/twitter/library/client/Session;

    .line 618
    iput-object p1, p0, Lcom/twitter/library/client/bk;->f:Lcom/twitter/library/client/Session;

    .line 619
    iget-object v2, p0, Lcom/twitter/library/client/bk;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/twitter/library/provider/fm;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 620
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    invoke-direct {p0, v0, p1}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/Session;Lcom/twitter/library/client/Session;)V

    .line 622
    return-void

    .line 620
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 646
    iget-object v0, p0, Lcom/twitter/library/client/bk;->j:Ljava/util/LinkedList;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 594
    invoke-static {p1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {p0, p1}, Lcom/twitter/library/client/bk;->b(Ljava/lang/String;)Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 597
    invoke-virtual {p0, v0}, Lcom/twitter/library/client/bk;->c(Lcom/twitter/library/client/Session;)V

    .line 599
    :cond_0
    return-void
.end method

.method public d(Lcom/twitter/library/client/Session;)Z
    .locals 3

    .prologue
    .line 640
    iget-object v1, p0, Lcom/twitter/library/client/bk;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 641
    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/client/bk;->f:Lcom/twitter/library/client/Session;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 642
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 685
    if-eqz p1, :cond_0

    .line 686
    iget-object v0, p0, Lcom/twitter/library/client/bk;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    :cond_0
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 810
    iget-object v1, p0, Lcom/twitter/library/client/bk;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 811
    :try_start_0
    invoke-virtual {p0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 812
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 822
    iget-boolean v0, p0, Lcom/twitter/library/client/bk;->k:Z

    if-nez v0, :cond_0

    .line 823
    iput-boolean v1, p0, Lcom/twitter/library/client/bk;->k:Z

    .line 824
    invoke-virtual {p0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/Session;JZ)V

    .line 826
    :cond_0
    return-void
.end method

.method public g()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 835
    iget-boolean v0, p0, Lcom/twitter/library/client/bk;->k:Z

    if-eqz v0, :cond_0

    .line 836
    iput-boolean v1, p0, Lcom/twitter/library/client/bk;->k:Z

    .line 837
    invoke-virtual {p0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/Session;JZ)V

    .line 839
    :cond_0
    return-void
.end method
