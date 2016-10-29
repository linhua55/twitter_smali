.class Lcbs;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/config/g;


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field public a:Z

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcoj;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lcof;

.field private final f:Landroid/content/Context;

.field private final g:Landroid/os/Handler;

.field private final h:Ljava/lang/Runnable;

.field private i:J

.field private final j:Ljava/lang/String;

.field private k:Lcom/twitter/config/h;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcbs;->c:Ljava/util/Map;

    .line 60
    new-instance v0, Lcbt;

    invoke-direct {v0, p0}, Lcbt;-><init>(Lcbs;)V

    iput-object v0, p0, Lcbs;->h:Ljava/lang/Runnable;

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcbs;->g:Landroid/os/Handler;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcbs;->f:Landroid/content/Context;

    .line 88
    iget-object v0, p0, Lcbs;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/network/at;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "release_feature_switch_manifest"

    :goto_0
    iput-object v0, p0, Lcbs;->j:Ljava/lang/String;

    .line 92
    invoke-static {}, Lcom/twitter/app/common/util/f;->a()Lcom/twitter/app/common/util/f;

    move-result-object v0

    new-instance v1, Lcbu;

    invoke-direct {v1, p0}, Lcbu;-><init>(Lcbs;)V

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/util/f;->a(Lcom/twitter/app/common/util/h;)V

    .line 103
    return-void

    .line 88
    :cond_0
    const-string/jumbo v0, "feature_switch_manifest"

    goto :goto_0
.end method

.method static synthetic a(Lcbs;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcbs;->f:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lcoj;Lcoj;)Lcoj;
    .locals 5

    .prologue
    .line 336
    invoke-static {}, Lcom/twitter/util/collection/v;->e()Lcom/twitter/util/collection/v;

    move-result-object v0

    iget-object v1, p2, Lcoj;->d:Lcoa;

    iget-object v1, v1, Lcoa;->c:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/v;->b(Ljava/util/Map;)Lcom/twitter/util/collection/v;

    move-result-object v1

    .line 337
    invoke-virtual {p0}, Lcbs;->b()Lcof;

    move-result-object v2

    .line 338
    iget-object v0, v2, Lcof;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 339
    invoke-static {v2, p1, v0}, Lcbs;->b(Lcof;Lcoj;Ljava/lang/String;)Lcnv;

    move-result-object v4

    .line 340
    invoke-virtual {v1, v0, v4}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    goto :goto_0

    .line 342
    :cond_0
    new-instance v0, Lcol;

    invoke-direct {v0}, Lcol;-><init>()V

    iget-object v2, p2, Lcoj;->e:Ljava/util/Set;

    .line 343
    invoke-virtual {v0, v2}, Lcol;->a(Ljava/util/Set;)Lcol;

    move-result-object v2

    new-instance v3, Lcoc;

    iget-object v0, p2, Lcoj;->d:Lcoa;

    invoke-direct {v3, v0}, Lcoc;-><init>(Lcoa;)V

    .line 346
    invoke-virtual {v1}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v3, v0}, Lcoc;->a(Ljava/util/Map;)Lcoc;

    move-result-object v0

    .line 347
    invoke-virtual {v0}, Lcoc;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoa;

    .line 344
    invoke-virtual {v2, v0}, Lcol;->a(Lcoa;)Lcol;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Lcol;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoj;

    .line 342
    return-object v0
.end method

.method private a(JLjava/lang/String;Lcnv;Z)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 162
    if-nez p4, :cond_0

    .line 163
    const/4 v0, 0x0

    .line 169
    :goto_0
    return-object v0

    .line 165
    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p4}, Lcnv;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {p4}, Lcnv;->c()Lcnx;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcnx;->b()I

    move-result v2

    invoke-virtual {v0}, Lcnx;->c()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p3

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lcbs;->a(Ljava/lang/String;ILjava/lang/String;J)V

    .line 169
    :cond_1
    invoke-virtual {p4}, Lcnv;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcof;Lcoj;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p1, p2}, Lcoj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    if-eqz v0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-object v0

    .line 224
    :cond_1
    iget-object v0, p1, Lcoj;->e:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    const-string/jumbo v0, "unassigned"

    goto :goto_0

    .line 227
    :cond_2
    invoke-virtual {p0, p2}, Lcof;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 228
    if-nez v0, :cond_0

    const-string/jumbo v0, "unassigned"

    goto :goto_0
.end method

.method private declared-synchronized a(JLcoj;)V
    .locals 7

    .prologue
    .line 358
    monitor-enter p0

    :try_start_0
    new-instance v1, Laxz;

    const-string/jumbo v0, "fs:load:feature_switches"

    sget-object v2, Laxz;->m:Laye;

    invoke-direct {v1, v0, v2}, Laxz;-><init>(Ljava/lang/String;Laye;)V

    .line 359
    const-string/jumbo v0, "Server_FCP"

    invoke-virtual {v1, v0}, Laxz;->b(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v1}, Laxz;->i()V

    .line 362
    iget-object v0, p0, Lcbs;->c:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoj;

    .line 364
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcoj;->a()J

    move-result-wide v2

    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/config/AppConfig;->f()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 365
    if-eqz v0, :cond_0

    .line 366
    invoke-direct {p0, v0, p3}, Lcbs;->a(Lcoj;Lcoj;)Lcoj;

    move-result-object p3

    .line 368
    iget-object v0, v0, Lcoj;->d:Lcoa;

    iget-object v2, p3, Lcoj;->d:Lcoa;

    invoke-virtual {v0, v2}, Lcoa;->b(Lcoa;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p3, Lcoj;->d:Lcoa;

    iget-object v0, v0, Lcoa;->e:Ljava/lang/String;

    iget-object v2, p3, Lcoj;->d:Lcoa;

    iget-object v2, v2, Lcoa;->d:Ljava/lang/String;

    invoke-static {p1, p2, v0, v2}, Lcbs;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 374
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcbs;->b(JLcoj;)V

    .line 385
    :cond_1
    :goto_0
    invoke-virtual {v1}, Laxz;->j()V

    .line 386
    invoke-static {}, Layj;->b()Layj;

    move-result-object v0

    invoke-virtual {v0, v1}, Layj;->a(Laxz;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    :goto_1
    monitor-exit p0

    return-void

    .line 377
    :cond_2
    :try_start_1
    sget-object v2, Lcoj;->c:Lcoj;

    invoke-direct {p0, p1, p2, v2}, Lcbs;->b(JLcoj;)V

    .line 378
    invoke-virtual {p0}, Lcbs;->b()Lcof;

    move-result-object v2

    .line 379
    if-eqz v0, :cond_1

    iget-object v0, v0, Lcoj;->d:Lcoa;

    iget-object v3, v2, Lcof;->c:Lcoa;

    invoke-virtual {v0, v3}, Lcoa;->b(Lcoa;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 380
    iget-object v0, v2, Lcof;->c:Lcoa;

    iget-object v0, v0, Lcoa;->e:Ljava/lang/String;

    iget-object v2, v2, Lcof;->c:Lcoa;

    iget-object v2, v2, Lcoa;->d:Ljava/lang/String;

    invoke-static {p1, p2, v0, v2}, Lcbs;->a(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    .line 389
    :try_start_2
    sget-object v1, Lcoj;->c:Lcoj;

    invoke-direct {p0, p1, p2, v1}, Lcbs;->b(JLcoj;)V

    .line 390
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 298
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, p0, p1}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    .line 299
    invoke-virtual {v0, p2, p3}, Lcom/twitter/library/scribe/TwitterScribeLog;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "fs:settings:version:changed"

    aput-object v3, v1, v2

    .line 300
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 298
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 301
    return-void
.end method

.method public static a(Lcof;Lcoj;Lcoj;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 247
    sget-object v0, Lcoj;->c:Lcoj;

    invoke-virtual {p1, v0}, Lcoj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcoj;->d:Lcoa;

    iget-object v2, p2, Lcoj;->d:Lcoa;

    .line 248
    invoke-virtual {v0, v2}, Lcoa;->a(Lcoa;)Ljava/util/List;

    move-result-object v0

    .line 251
    :goto_0
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v2

    .line 252
    invoke-virtual {v2, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Iterable;)Lcom/twitter/util/collection/r;

    move-result-object v0

    iget-object v2, p0, Lcof;->e:Ljava/util/Map;

    .line 253
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Iterable;)Lcom/twitter/util/collection/r;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 256
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 257
    iget-object v3, p0, Lcof;->f:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    iget-object v3, p0, Lcof;->e:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 259
    invoke-static {p0, p1, v0}, Lcbs;->a(Lcof;Lcoj;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 260
    invoke-static {p0, p2, v0}, Lcbs;->a(Lcof;Lcoj;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 275
    :goto_1
    return v0

    .line 248
    :cond_1
    iget-object v0, p0, Lcof;->c:Lcoa;

    iget-object v2, p2, Lcoj;->d:Lcoa;

    .line 249
    invoke-virtual {v0, v2}, Lcoa;->a(Lcoa;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 265
    :cond_2
    invoke-static {p0, p1, v0}, Lcbs;->b(Lcof;Lcoj;Ljava/lang/String;)Lcnv;

    move-result-object v3

    .line 267
    invoke-static {p0, p2, v0}, Lcbs;->b(Lcof;Lcoj;Ljava/lang/String;)Lcnv;

    move-result-object v0

    .line 268
    if-nez v3, :cond_3

    if-nez v0, :cond_4

    :cond_3
    if-eqz v3, :cond_0

    .line 269
    invoke-virtual {v3, v0}, Lcnv;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    move v0, v1

    .line 270
    goto :goto_1

    .line 275
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static b(Lcof;Lcoj;Ljava/lang/String;)Lcnv;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p1, p2}, Lcoj;->b(Ljava/lang/String;)Lcnv;

    move-result-object v0

    .line 242
    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcof;->b(Ljava/lang/String;)Lcnv;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private b(JLcoj;)V
    .locals 3

    .prologue
    .line 439
    iget-object v0, p0, Lcbs;->c:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    iget-object v0, p0, Lcbs;->k:Lcom/twitter/config/h;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcbs;->k:Lcom/twitter/config/h;

    invoke-interface {v0, p1, p2}, Lcom/twitter/config/h;->a(J)V

    .line 443
    :cond_0
    return-void
.end method

.method private g()J
    .locals 4

    .prologue
    .line 410
    iget-wide v0, p0, Lcbs;->i:J

    const-string/jumbo v2, "feature_switches_configs_wait_before_kill_minutes"

    .line 411
    invoke-virtual {p0, v0, v1, v2}, Lcbs;->a(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 410
    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 411
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 412
    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized a(ZLjava/lang/String;)Lcof;
    .locals 3

    .prologue
    .line 191
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcbs;->e:Lcof;

    if-nez v0, :cond_1

    .line 192
    :cond_0
    new-instance v0, Laxz;

    const-string/jumbo v1, "fs:load:embedded_manifest"

    sget-object v2, Laxz;->m:Laye;

    invoke-direct {v0, v1, v2}, Laxz;-><init>(Ljava/lang/String;Laye;)V

    .line 194
    const-string/jumbo v1, "Local_FCP"

    invoke-virtual {v0, v1}, Laxz;->b(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Laxz;->i()V

    .line 197
    iget-object v1, p0, Lcbs;->f:Landroid/content/Context;

    invoke-static {v1, p2}, Laze;->a(Landroid/content/Context;Ljava/lang/String;)Lcof;

    move-result-object v1

    iput-object v1, p0, Lcbs;->e:Lcof;

    .line 200
    invoke-virtual {v0}, Laxz;->j()V

    .line 201
    invoke-static {}, Layj;->b()Layj;

    move-result-object v1

    invoke-virtual {v1, v0}, Layj;->a(Laxz;)V

    .line 203
    :cond_1
    iget-object v0, p0, Lcbs;->e:Lcof;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(JLjava/lang/String;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 153
    const-wide/16 v4, -0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcbs;->a(JLjava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(JLjava/lang/String;J)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lcbs;->c:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoj;

    .line 123
    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    if-eqz v2, :cond_1

    const/4 v6, 0x1

    .line 125
    :goto_0
    if-nez v0, :cond_0

    .line 127
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/twitter/library/client/bk;->b(J)Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 128
    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 129
    invoke-virtual {p0, p1, p2, v1}, Lcbs;->a(JZ)V

    .line 130
    iget-object v0, p0, Lcbs;->c:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoj;

    .line 134
    :cond_0
    invoke-virtual {v0, p3}, Lcoj;->b(Ljava/lang/String;)Lcnv;

    move-result-object v5

    .line 135
    if-eqz v5, :cond_2

    move-object v1, p0

    move-wide v2, p4

    move-object v4, p3

    .line 136
    invoke-direct/range {v1 .. v6}, Lcbs;->a(JLjava/lang/String;Lcnv;Z)Ljava/lang/Object;

    move-result-object v0

    .line 147
    :goto_1
    return-object v0

    :cond_1
    move v6, v1

    .line 123
    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {p0}, Lcbs;->b()Lcof;

    move-result-object v1

    .line 140
    iget-object v2, v1, Lcof;->e:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 141
    iget-object v0, v0, Lcoj;->e:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    const-string/jumbo v0, "unassigned"

    goto :goto_1

    .line 146
    :cond_3
    invoke-virtual {v1, p3}, Lcof;->b(Ljava/lang/String;)Lcnv;

    move-result-object v5

    move-object v1, p0

    move-wide v2, p4

    move-object v4, p3

    .line 147
    invoke-direct/range {v1 .. v6}, Lcbs;->a(JLjava/lang/String;Lcnv;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public declared-synchronized a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcbs;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcbs;->b()Lcof;

    move-result-object v0

    iget-object v0, v0, Lcof;->d:Ljava/lang/String;

    sput-object v0, Lcbs;->b:Ljava/lang/String;

    .line 81
    :cond_0
    sget-object v0, Lcbs;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(JLcof;Lcoj;)V
    .locals 5

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcbs;->c:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoj;

    .line 210
    iget-wide v2, p0, Lcbs;->i:J

    cmp-long v1, p1, v2

    if-eqz v1, :cond_1

    .line 211
    invoke-virtual {p0, p1, p2}, Lcbs;->c(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 212
    :cond_1
    if-eqz v0, :cond_0

    .line 213
    :try_start_1
    iget-boolean v1, p0, Lcbs;->a:Z

    invoke-static {p3, v0, p4}, Lcbs;->a(Lcof;Lcoj;Lcoj;)Z

    move-result v0

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcbs;->a:Z

    .line 214
    invoke-direct {p0, p1, p2, p4}, Lcbs;->a(JLcoj;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(JZ)V
    .locals 3

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcbs;->c:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    .line 312
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcbs;->f:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lazf;->a(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v0

    .line 315
    invoke-static {}, Layj;->b()Layj;

    move-result-object v1

    .line 314
    invoke-static {v0, v1}, Lazf;->a(Ljava/io/File;Layl;)Lcoj;

    move-result-object v0

    .line 316
    invoke-direct {p0, p1, p2, v0}, Lcbs;->a(JLcoj;)V

    .line 318
    if-nez v0, :cond_1

    .line 321
    invoke-static {p1, p2}, Lazf;->b(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 325
    :try_start_2
    sget-object v1, Lcoj;->c:Lcoj;

    invoke-direct {p0, p1, p2, v1}, Lcbs;->b(JLcoj;)V

    .line 326
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/twitter/config/h;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcbs;->k:Lcom/twitter/config/h;

    .line 407
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 6

    .prologue
    .line 106
    const-string/jumbo v0, "unassigned"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcbs;->f:Landroid/content/Context;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/twitter/library/scribe/ScribeService;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;J)V

    .line 109
    :cond_0
    return-void
.end method

.method public a(J)Z
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcbs;->c:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcbs;->c:Ljava/util/Map;

    .line 174
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoj;

    sget-object v1, Lcoj;->c:Lcoj;

    invoke-virtual {v0, v1}, Lcoj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 173
    :goto_0
    return v0

    .line 174
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized b()Lcof;
    .locals 2

    .prologue
    .line 185
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcbs;->j:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcbs;->a(ZLjava/lang/String;)Lcof;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(J)V
    .locals 1

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcbs;->i:J

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcbs;->a:Z

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcbs;->a(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 2

    .prologue
    .line 401
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcbs;->d(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    monitor-exit p0

    return-void

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(J)V
    .locals 3

    .prologue
    .line 281
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcbs;->i:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 282
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcbs;->a(JZ)V

    .line 286
    iget-object v0, p0, Lcbs;->f:Landroid/content/Context;

    .line 288
    invoke-virtual {p0}, Lcbs;->a()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcbs;->d:Z

    .line 287
    invoke-static {v0, p1, p2, v1, v2}, Lcbw;->a(Landroid/content/Context;JLjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :goto_0
    monitor-exit p0

    return-void

    .line 290
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "loadFeatureSwitchesForNonActiveUser should not be called for a current user"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()V
    .locals 6

    .prologue
    .line 416
    iget-object v1, p0, Lcbs;->h:Ljava/lang/Runnable;

    monitor-enter v1

    .line 417
    :try_start_0
    iget-boolean v0, p0, Lcbs;->a:Z

    if-eqz v0, :cond_0

    .line 418
    invoke-direct {p0}, Lcbs;->g()J

    move-result-wide v2

    .line 419
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 420
    iget-object v0, p0, Lcbs;->g:Landroid/os/Handler;

    iget-object v4, p0, Lcbs;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 423
    :cond_0
    monitor-exit v1

    .line 424
    return-void

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(J)V
    .locals 3

    .prologue
    .line 395
    iget-object v0, p0, Lcbs;->f:Landroid/content/Context;

    .line 396
    invoke-virtual {p0}, Lcbs;->a()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcbs;->d:Z

    invoke-static {v0, p1, p2, v1, v2}, Lcbw;->a(Landroid/content/Context;JLjava/lang/String;Z)V

    .line 398
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 427
    iget-object v1, p0, Lcbs;->h:Ljava/lang/Runnable;

    monitor-enter v1

    .line 428
    :try_start_0
    iget-object v0, p0, Lcbs;->g:Landroid/os/Handler;

    iget-object v2, p0, Lcbs;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 429
    monitor-exit v1

    .line 430
    return-void

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized f()Ljava/lang/String;
    .locals 4

    .prologue
    .line 434
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcbs;->c:Ljava/util/Map;

    iget-wide v2, p0, Lcbs;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoj;

    .line 435
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcoj;->d()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
