.class public Lbsb;
.super Lbsj;
.source "Twttr"


# static fields
.field static final a:Ljava/util/Map;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/library/service/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final k:Lcom/twitter/library/network/aa;

.field private final l:Lcom/twitter/util/collection/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/collection/r",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/twitter/android/revenue/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Lcom/twitter/util/collection/MutableMap;->a()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lbsb;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/model/core/TwitterUser;I)V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/twitter/library/service/ab;

    invoke-direct {v0, p2}, Lcom/twitter/library/service/ab;-><init>(Lcom/twitter/library/client/Session;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lbsb;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;Lcom/twitter/model/core/TwitterUser;I)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/service/ab;Lcom/twitter/model/core/TwitterUser;I)V
    .locals 6

    .prologue
    .line 125
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lbsb;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;Lcom/twitter/model/core/TwitterUser;ZI)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/service/ab;Lcom/twitter/model/core/TwitterUser;ZI)V
    .locals 6

    .prologue
    .line 130
    const-class v0, Lbsb;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lbsj;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/service/ab;Lcom/twitter/model/core/TwitterUser;I)V

    .line 114
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v0

    iput-object v0, p0, Lbsb;->l:Lcom/twitter/util/collection/r;

    .line 131
    new-instance v0, Lcom/twitter/library/network/aa;

    iget-object v1, p2, Lcom/twitter/library/service/ab;->d:Lcom/twitter/model/account/OAuthToken;

    invoke-direct {v0, v1}, Lcom/twitter/library/network/aa;-><init>(Lcom/twitter/model/account/OAuthToken;)V

    iput-object v0, p0, Lbsb;->k:Lcom/twitter/library/network/aa;

    .line 132
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lbsb;->c(I)Lbss;

    .line 133
    if-eqz p4, :cond_0

    .line 134
    invoke-direct {p0, p1}, Lbsb;->a(Landroid/content/Context;)V

    .line 136
    :cond_0
    const-string/jumbo v0, "HomeTimeline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Home Timeline request created for UserID #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ANDROID-10803"

    invoke-static {v0, v1, v2}, Lcjv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method static a(I)I
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 219
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 220
    const/4 p0, 0x2

    .line 224
    :cond_0
    return p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 427
    new-instance v0, Lcom/twitter/library/service/k;

    invoke-direct {v0}, Lcom/twitter/library/service/k;-><init>()V

    .line 428
    new-instance v1, Lcom/twitter/library/service/s;

    invoke-direct {v1}, Lcom/twitter/library/service/s;-><init>()V

    invoke-virtual {v0, v1}, Lcom/twitter/library/service/k;->a(Lcom/twitter/internal/android/service/ac;)Lcom/twitter/library/service/k;

    move-result-object v1

    new-instance v2, Lcom/twitter/library/service/q;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/twitter/library/service/q;-><init>(I)V

    .line 429
    invoke-virtual {v1, v2}, Lcom/twitter/library/service/k;->a(Lcom/twitter/internal/android/service/ac;)Lcom/twitter/library/service/k;

    move-result-object v1

    new-instance v2, Lcom/twitter/library/service/l;

    invoke-direct {v2, p1}, Lcom/twitter/library/service/l;-><init>(Landroid/content/Context;)V

    .line 430
    invoke-virtual {v1, v2}, Lcom/twitter/library/service/k;->a(Lcom/twitter/internal/android/service/ac;)Lcom/twitter/library/service/k;

    .line 432
    const/16 v1, 0x7530

    invoke-virtual {p0, v1}, Lbsb;->g(I)V

    .line 433
    invoke-virtual {p0, v0}, Lbsb;->a(Lcom/twitter/internal/android/service/ac;)Lcom/twitter/internal/android/service/AsyncOperation;

    .line 434
    return-void
.end method

.method private a(Lcom/twitter/library/service/e;)V
    .locals 4

    .prologue
    .line 282
    invoke-static {}, Lcic;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsb;->m:Lcom/twitter/android/revenue/d;

    if-eqz v0, :cond_0

    .line 283
    const-string/jumbo v0, "jit_enabled"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    .line 284
    const-string/jumbo v0, "num_unfilled_ad_slots_available"

    iget-object v1, p0, Lbsb;->m:Lcom/twitter/android/revenue/d;

    invoke-virtual {v1}, Lcom/twitter/android/revenue/d;->a()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;J)Lcom/twitter/library/service/e;

    .line 285
    iget-object v0, p0, Lbsb;->m:Lcom/twitter/android/revenue/d;

    invoke-virtual {v0}, Lcom/twitter/android/revenue/d;->b()J

    move-result-wide v0

    .line 286
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 287
    const-string/jumbo v2, "last_ad_pool_refresh_epoch_ms"

    invoke-virtual {p1, v2, v0, v1}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;J)Lcom/twitter/library/service/e;

    .line 290
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/revenue/d;)Lbsb;
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lbsb;->m:Lcom/twitter/android/revenue/d;

    .line 141
    return-object p0
.end method

.method public a(Lcom/twitter/internal/android/service/ab;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/internal/android/service/ab",
            "<",
            "Lcom/twitter/library/service/aa;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    invoke-super {p0, p1}, Lbsj;->a(Lcom/twitter/internal/android/service/ab;)V

    .line 193
    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {p1}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p1}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->f()Lcom/twitter/internal/network/HttpOperation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lbsb;->N()Lcom/twitter/library/service/ab;

    move-result-object v0

    if-nez v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    const-string/jumbo v0, "timeline_request_scribe_sample"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lbsb;->p:Landroid/content/Context;

    .line 202
    invoke-virtual {p0}, Lbsb;->e()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-virtual {p0}, Lbsb;->N()Lcom/twitter/library/service/ab;

    move-result-object v2

    iget-wide v2, v2, Lcom/twitter/library/service/ab;->c:J

    .line 204
    invoke-virtual {p1}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/twitter/library/service/aa;

    invoke-virtual {v4}, Lcom/twitter/library/service/aa;->b()Z

    move-result v4

    const/4 v6, 0x0

    move-object v5, p1

    .line 200
    invoke-static/range {v0 .. v6}, Lcom/twitter/library/api/af;->a(Landroid/content/Context;Ljava/lang/String;JZLcom/twitter/internal/android/service/ab;Z)V

    goto :goto_0
.end method

.method protected a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/as;)V
    .locals 12

    .prologue
    .line 361
    invoke-virtual {p0}, Lbsb;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/twitter/internal/network/HttpOperation;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 364
    invoke-virtual {p0}, Lbsb;->S()Lcom/twitter/library/provider/dm;

    move-result-object v7

    .line 365
    invoke-virtual {p3}, Lcom/twitter/library/api/as;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/api/ai;

    .line 367
    iget-object v1, v0, Lcom/twitter/library/api/ai;->a:Ljava/util/List;

    .line 368
    iput-object v1, p0, Lbsb;->j:Ljava/util/List;

    .line 370
    invoke-virtual {p0, v0}, Lbsb;->a(Lcom/twitter/library/api/ai;)Lbsk;

    move-result-object v8

    .line 371
    iget v9, v8, Lbsk;->b:I

    .line 372
    invoke-virtual {p0}, Lbsb;->D()J

    move-result-wide v10

    .line 373
    invoke-virtual {p0}, Lbsb;->T()Lcom/twitter/library/provider/b;

    move-result-object v6

    .line 375
    iget-object v1, p0, Lbsb;->m:Lcom/twitter/android/revenue/d;

    if-eqz v1, :cond_4

    invoke-static {}, Lcic;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 376
    iget-object v1, p0, Lbsb;->m:Lcom/twitter/android/revenue/d;

    iget-object v2, v0, Lcom/twitter/library/api/ai;->c:Ljava/util/List;

    invoke-virtual {p0}, Lbsb;->T()Lcom/twitter/library/provider/b;

    move-result-object v3

    invoke-virtual {v7, v1, v2, v3}, Lcom/twitter/library/provider/dm;->a(Lcom/twitter/android/revenue/d;Ljava/util/List;Lcom/twitter/library/provider/b;)V

    .line 378
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v1, v10, v11}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "home::stream:ads:received"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 379
    iget-object v0, v0, Lcom/twitter/library/api/ai;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcsz;

    .line 380
    invoke-static {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Lcsz;)Lcom/twitter/library/scribe/ScribeItem;

    move-result-object v0

    .line 381
    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {v1, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    goto :goto_0

    .line 385
    :cond_1
    invoke-static {v1}, Lbjf;->a(Lbjh;)V

    .line 387
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, v10, v11}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "home::stream:slots:received"

    aput-object v3, v1, v2

    .line 388
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 389
    iget-object v1, p0, Lbsb;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/timeline/ay;

    .line 390
    instance-of v3, v1, Lcom/twitter/model/timeline/aq;

    if-eqz v3, :cond_2

    .line 391
    invoke-static {v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/timeline/aq;

    .line 392
    invoke-static {v1}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Lcom/twitter/model/timeline/aq;)Lcom/twitter/library/scribe/ScribeItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    goto :goto_1

    .line 395
    :cond_3
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 398
    :cond_4
    iget-boolean v0, v8, Lbsk;->d:Z

    if-eqz v0, :cond_5

    .line 401
    iget-object v0, p0, Lbsb;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/provider/ar;->a(Landroid/content/Context;)Lcom/twitter/library/provider/ar;

    move-result-object v1

    .line 402
    iget-wide v2, p0, Lbsb;->b:J

    const-string/jumbo v0, "tweet"

    invoke-virtual {v1, v2, v3, v0}, Lcom/twitter/library/provider/ar;->a(JLjava/lang/String;)I

    move-result v0

    .line 403
    if-nez v0, :cond_5

    .line 404
    iget-wide v2, p0, Lbsb;->b:J

    const-string/jumbo v4, "tweet"

    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/library/provider/ar;->a(JLjava/lang/String;ILcom/twitter/library/provider/b;)I

    .line 405
    invoke-virtual {v6}, Lcom/twitter/library/provider/b;->a()V

    .line 409
    :cond_5
    iget-boolean v0, v8, Lbsk;->a:Z

    iget-boolean v1, v8, Lbsk;->c:Z

    iget-object v2, v8, Lbsk;->e:Lcom/twitter/model/timeline/br;

    invoke-virtual {p0, v9, v0, v1, v2}, Lbsb;->a(IZZLcom/twitter/model/timeline/br;)V

    .line 410
    const/4 v0, 0x0

    invoke-virtual {v7, v10, v11, v0}, Lcom/twitter/library/provider/dm;->e(JI)I

    move-result v0

    invoke-virtual {p0, v0}, Lbsb;->e(I)Lbss;

    .line 412
    invoke-virtual {p0}, Lbsb;->O()Z

    move-result v0

    if-nez v0, :cond_6

    if-lez v9, :cond_6

    .line 413
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, v10, v11}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "home::::tlv_proxy"

    aput-object v3, v1, v2

    .line 414
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 413
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 418
    :cond_6
    iget-object v0, p2, Lcom/twitter/library/service/aa;->c:Landroid/os/Bundle;

    const-string/jumbo v1, "scribe_item_count"

    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 420
    invoke-virtual {p0}, Lbsb;->N()Lcom/twitter/library/service/ab;

    move-result-object v0

    .line 421
    const-string/jumbo v2, "HomeTimeline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Home Timeline request complete for User ID "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_8

    iget-wide v0, v0, Lcom/twitter/library/service/ab;->c:J

    :goto_2
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ANDROID-10803"

    invoke-static {v2, v0, v1}, Lcjv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_7
    return-void

    .line 421
    :cond_8
    const-wide/16 v0, 0x0

    goto :goto_2
.end method

.method protected bridge synthetic a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/service/c;)V
    .locals 0

    .prologue
    .line 75
    check-cast p3, Lcom/twitter/library/api/as;

    invoke-virtual {p0, p1, p2, p3}, Lbsb;->a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/as;)V

    return-void
.end method

.method public b(Lcom/twitter/internal/android/service/ab;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/internal/android/service/ab",
            "<",
            "Lcom/twitter/library/service/aa;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    invoke-super {p0, p1}, Lbsj;->b(Lcom/twitter/internal/android/service/ab;)V

    .line 172
    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p1}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p1}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->f()Lcom/twitter/internal/network/HttpOperation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lbsb;->N()Lcom/twitter/library/service/ab;

    move-result-object v0

    if-nez v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    const-string/jumbo v0, "timeline_request_scribe_sample"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lbsb;->p:Landroid/content/Context;

    .line 181
    invoke-virtual {p0}, Lbsb;->e()Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-virtual {p0}, Lbsb;->N()Lcom/twitter/library/service/ab;

    move-result-object v2

    iget-wide v2, v2, Lcom/twitter/library/service/ab;->c:J

    .line 183
    invoke-virtual {p1}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/twitter/library/service/aa;

    invoke-virtual {v4}, Lcom/twitter/library/service/aa;->b()Z

    move-result v4

    const/4 v6, 0x1

    move-object v5, p1

    .line 179
    invoke-static/range {v0 .. v6}, Lcom/twitter/library/api/af;->a(Landroid/content/Context;Ljava/lang/String;JZLcom/twitter/internal/android/service/ab;Z)V

    goto :goto_0
.end method

.method protected c(Lcom/twitter/library/service/aa;)Z
    .locals 4

    .prologue
    .line 315
    invoke-super {p0, p1}, Lbsj;->c(Lcom/twitter/library/service/aa;)Z

    move-result v0

    .line 328
    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p0}, Lbsb;->o()Ljava/lang/String;

    move-result-object v1

    .line 330
    sget-object v2, Lbsb;->a:Ljava/util/Map;

    monitor-enter v2

    .line 331
    :try_start_0
    sget-object v3, Lbsb;->a:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 334
    iget-object v0, p1, Lcom/twitter/library/service/aa;->c:Landroid/os/Bundle;

    const-string/jumbo v1, "cancelled_no_messaging_required"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 335
    const/4 v0, 0x0

    monitor-exit v2

    .line 353
    :cond_0
    :goto_0
    return v0

    .line 337
    :cond_1
    sget-object v3, Lbsb;->a:Ljava/util/Map;

    invoke-interface {v3, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    new-instance v2, Lbsc;

    invoke-direct {v2, p0, v1}, Lbsc;-><init>(Lbsb;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lbsb;->a(Lcom/twitter/internal/android/service/c;)Lcom/twitter/internal/android/service/AsyncOperation;

    goto :goto_0

    .line 339
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const-string/jumbo v0, "app:twitter_service:timeline:request"

    return-object v0
.end method

.method protected h()Lcom/twitter/library/service/e;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 244
    invoke-super {p0}, Lbsj;->h()Lcom/twitter/library/service/e;

    move-result-object v3

    .line 246
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "timeline"

    aput-object v4, v1, v2

    const-string/jumbo v4, "home"

    aput-object v4, v1, v0

    invoke-virtual {v3, v1}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v1

    const-string/jumbo v4, "user_id"

    .line 247
    invoke-virtual {p0}, Lbsb;->D()J

    move-result-wide v6

    invoke-virtual {v1, v4, v6, v7}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;J)Lcom/twitter/library/service/e;

    .line 248
    invoke-direct {p0, v3}, Lbsb;->a(Lcom/twitter/library/service/e;)V

    .line 252
    const-string/jumbo v1, "pc"

    invoke-virtual {v3, v1, v0}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    .line 253
    const-string/jumbo v1, "earned"

    invoke-virtual {v3, v1, v0}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    .line 254
    const-string/jumbo v1, "include_my_retweet"

    invoke-virtual {v3, v1, v0}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    .line 258
    iget-object v1, p0, Lbsb;->l:Lcom/twitter/util/collection/r;

    if-eqz v1, :cond_2

    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    iget-object v1, p0, Lbsb;->l:Lcom/twitter/util/collection/r;

    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 262
    invoke-static {v0}, Lcom/twitter/config/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 263
    const-string/jumbo v7, "unassigned"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 264
    if-nez v1, :cond_0

    .line 265
    const/16 v1, 0x2c

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 268
    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const/16 v0, 0x2f

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    :goto_1
    move v1, v0

    .line 272
    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 274
    const-string/jumbo v0, "force_buckets"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 278
    :cond_2
    return-object v3

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method protected o()Ljava/lang/String;
    .locals 4

    .prologue
    .line 237
    iget v0, p0, Lbsb;->h:I

    invoke-static {v0}, Lbsb;->a(I)I

    move-result v0

    .line 238
    invoke-virtual {p0}, Lbsb;->N()Lcom/twitter/library/service/ab;

    move-result-object v1

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lbsb;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_0

    iget-wide v0, v1, Lcom/twitter/library/service/ab;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method protected s()I
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method protected x()Lcom/twitter/model/timeline/bu;
    .locals 1

    .prologue
    .line 301
    invoke-static {}, Lcic;->a()Lcom/twitter/model/timeline/bu;

    move-result-object v0

    return-object v0
.end method

.method protected y()V
    .locals 6

    .prologue
    .line 308
    new-instance v0, Lbqu;

    iget-object v1, p0, Lbsb;->p:Landroid/content/Context;

    invoke-virtual {p0}, Lbsb;->D()J

    move-result-wide v2

    iget-object v4, p0, Lbsb;->c:Ljava/lang/String;

    iget-object v5, p0, Lbsb;->k:Lcom/twitter/library/network/aa;

    .line 309
    invoke-virtual {v5}, Lcom/twitter/library/network/aa;->b()Lcom/twitter/model/account/OAuthToken;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lbqu;-><init>(Landroid/content/Context;JLjava/lang/String;Lcom/twitter/model/account/OAuthToken;)V

    const-string/jumbo v1, "Retrying logging promoted event does not occur because of user interaction."

    invoke-virtual {v0, v1}, Lbqu;->k(Ljava/lang/String;)Lcom/twitter/library/service/x;

    move-result-object v0

    .line 308
    invoke-virtual {p0, v0}, Lbsb;->b(Lcom/twitter/internal/android/service/AsyncOperation;)V

    .line 311
    return-void
.end method
