.class public Lvq;
.super Lcom/twitter/library/api/upload/al;
.source "Twttr"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/twitter/model/drafts/d;

.field private final c:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/media/model/MediaFile;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/twitter/model/core/cs;

.field private final j:Lcom/twitter/util/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/y",
            "<",
            "Lbqy;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/model/drafts/d;Ljava/util/LinkedHashMap;Ljava/lang/String;Lcom/twitter/util/y;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/library/client/Session;",
            "Lcom/twitter/model/drafts/d;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/media/model/MediaFile;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/twitter/util/y",
            "<",
            "Lbqy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    const-class v0, Lvq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/api/upload/al;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 139
    iput-object p3, p0, Lvq;->b:Lcom/twitter/model/drafts/d;

    .line 140
    iput-object p4, p0, Lvq;->c:Ljava/util/LinkedHashMap;

    .line 141
    iput-object p5, p0, Lvq;->a:Ljava/lang/String;

    .line 142
    iput-object p6, p0, Lvq;->j:Lcom/twitter/util/y;

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TweetPosterOperation_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p3, Lcom/twitter/model/drafts/d;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvq;->k:Ljava/lang/String;

    .line 146
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lvq;->h(I)Lcom/twitter/library/service/x;

    .line 148
    new-instance v0, Lcom/twitter/library/service/t;

    sget v1, Lcom/twitter/library/service/t;->b:I

    sget v2, Lcom/twitter/library/service/t;->c:I

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x18

    .line 151
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/library/service/t;-><init>(III)V

    .line 152
    new-instance v1, Lcom/twitter/library/service/k;

    invoke-direct {v1}, Lcom/twitter/library/service/k;-><init>()V

    new-instance v2, Lcom/twitter/library/service/q;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/twitter/library/service/q;-><init>(I)V

    .line 153
    invoke-virtual {v1, v2}, Lcom/twitter/library/service/k;->a(Lcom/twitter/internal/android/service/ac;)Lcom/twitter/library/service/k;

    move-result-object v1

    new-instance v2, Lcom/twitter/library/service/l;

    invoke-direct {v2, p1}, Lcom/twitter/library/service/l;-><init>(Landroid/content/Context;)V

    .line 154
    invoke-virtual {v1, v2}, Lcom/twitter/library/service/k;->a(Lcom/twitter/internal/android/service/ac;)Lcom/twitter/library/service/k;

    move-result-object v1

    .line 155
    invoke-virtual {v1, v0}, Lcom/twitter/library/service/k;->a(Lcom/twitter/internal/android/service/ac;)Lcom/twitter/library/service/k;

    move-result-object v0

    .line 156
    invoke-virtual {p0, v0}, Lvq;->a(Lcom/twitter/internal/android/service/ac;)Lcom/twitter/internal/android/service/AsyncOperation;

    .line 157
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/twitter/model/drafts/d;Ljava/util/Map;Lcom/twitter/model/core/cs;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/model/drafts/d;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/media/model/MediaFile;",
            ">;",
            "Lcom/twitter/model/core/cs;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 315
    iget-object v1, p3, Lcom/twitter/model/core/cs;->e:Lcom/twitter/model/core/bm;

    iget-object v1, v1, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    invoke-virtual {v1}, Lcom/twitter/model/core/ac;->c()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 316
    iget-object v1, p3, Lcom/twitter/model/core/cs;->e:Lcom/twitter/model/core/bm;

    iget-object v3, v1, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    .line 319
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v3}, Lcom/twitter/model/core/j;->b()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 320
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "The size of the local output media (%d) was not the same as the media returned from the request (%d) for draft ID (%d) and status ID (%d)"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 324
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x1

    .line 325
    invoke-virtual {v3}, Lcom/twitter/model/core/j;->b()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-wide v6, p1, Lcom/twitter/model/drafts/d;->b:J

    .line 326
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-wide v6, p3, Lcom/twitter/model/core/cs;->b:J

    .line 327
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 320
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 330
    :cond_0
    invoke-static {p0}, Lcom/twitter/library/media/manager/l;->a(Landroid/content/Context;)Lcom/twitter/library/media/manager/l;

    move-result-object v1

    .line 331
    invoke-virtual {v1}, Lcom/twitter/library/media/manager/l;->b()Lcom/twitter/library/media/manager/i;

    move-result-object v4

    move v2, v0

    .line 332
    :goto_0
    invoke-virtual {v3}, Lcom/twitter/model/core/j;->b()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 333
    invoke-virtual {v3, v2}, Lcom/twitter/model/core/j;->a(I)Lcom/twitter/model/core/e;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/MediaEntity;

    .line 336
    iget-wide v6, v0, Lcom/twitter/model/core/MediaEntity;->c:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/media/model/MediaFile;

    .line 337
    if-eqz v1, :cond_1

    .line 345
    iget-object v0, v0, Lcom/twitter/model/core/MediaEntity;->l:Ljava/lang/String;

    sget-object v5, Lcom/twitter/library/media/util/TweetImageVariant;->d:Lcom/twitter/library/media/util/TweetImageVariant;

    .line 346
    invoke-static {v0, v5}, Lcom/twitter/library/media/util/TweetImageVariant;->a(Ljava/lang/String;Lcom/twitter/library/media/util/TweetImageVariant;)Ljava/lang/String;

    move-result-object v0

    .line 349
    iget-object v1, v1, Lcom/twitter/media/model/MediaFile;->d:Ljava/io/File;

    invoke-virtual {v4, v0, v1}, Lcom/twitter/library/media/manager/i;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 332
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 353
    :cond_2
    return-void
.end method

.method private a(Lcom/twitter/library/service/aa;Lcom/twitter/model/drafts/d;)V
    .locals 5

    .prologue
    .line 406
    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/twitter/model/drafts/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "has_media"

    move-object v1, v0

    .line 408
    :goto_0
    invoke-virtual {p0}, Lvq;->N()Lcom/twitter/library/service/ab;

    move-result-object v0

    iget-wide v2, v0, Lcom/twitter/library/service/ab;->c:J

    .line 409
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "app:twitter_service:tweet:create"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "retry"

    aput-object v4, v2, v3

    .line 410
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 411
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->i(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 413
    invoke-virtual {p1}, Lcom/twitter/library/service/aa;->g()Lcom/twitter/internal/network/k;

    move-result-object v1

    .line 414
    if-eqz v1, :cond_0

    .line 415
    iget-object v2, p0, Lvq;->p:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeLog;Lcom/twitter/internal/network/k;)V

    .line 416
    invoke-virtual {p1}, Lcom/twitter/library/service/aa;->f()Lcom/twitter/internal/network/HttpOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/internal/network/HttpOperation;->i()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Lcom/twitter/internal/network/k;)Lcom/twitter/library/scribe/ScribeLog;

    .line 418
    :cond_0
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 419
    return-void

    .line 406
    :cond_1
    const-string/jumbo v0, "no_media"

    move-object v1, v0

    goto :goto_0
.end method

.method private a(Lcom/twitter/library/service/aa;Lcom/twitter/library/api/t;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/service/aa;",
            "Lcom/twitter/library/api/t",
            "<",
            "Lcom/twitter/model/core/cs;",
            "Lcom/twitter/model/core/cj;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 368
    invoke-virtual {p1}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 386
    :goto_0
    return v0

    .line 371
    :cond_0
    invoke-virtual {p0}, Lvq;->M()I

    move-result v0

    .line 372
    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    move v0, v1

    .line 374
    goto :goto_0

    .line 377
    :cond_1
    invoke-virtual {p2}, Lcom/twitter/library/api/t;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cj;

    .line 378
    if-nez v0, :cond_2

    move v0, v1

    .line 379
    goto :goto_0

    .line 381
    :cond_2
    invoke-virtual {v0}, Lcom/twitter/model/core/cj;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cg;

    .line 382
    iget v0, v0, Lcom/twitter/model/core/cg;->b:I

    const/16 v3, 0xbb

    if-ne v0, v3, :cond_3

    .line 383
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 386
    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/twitter/model/core/cs;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lvq;->i:Lcom/twitter/model/core/cs;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 427
    if-gez p1, :cond_0

    .line 428
    iget-object v0, p0, Lvq;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lbqy;->a(Ljava/lang/String;I)Lbqy;

    move-result-object v0

    .line 434
    :goto_0
    iget-object v1, p0, Lvq;->j:Lcom/twitter/util/y;

    invoke-interface {v1, v0}, Lcom/twitter/util/y;->a(Ljava/lang/Object;)V

    .line 435
    return-void

    .line 429
    :cond_0
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_1

    .line 430
    iget-object v0, p0, Lvq;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lbqy;->b(Ljava/lang/String;I)Lbqy;

    move-result-object v0

    goto :goto_0

    .line 432
    :cond_1
    iget-object v0, p0, Lvq;->k:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lbqy;->a(Ljava/lang/String;II)Lbqy;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lcom/twitter/library/service/aa;)V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 197
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lvq;->a(I)V

    .line 200
    const-class v0, Lcom/twitter/model/core/cs;

    .line 201
    invoke-static {v0}, Lcom/twitter/library/api/v;->a(Ljava/lang/Class;)Lcom/twitter/library/api/v;

    move-result-object v1

    .line 203
    invoke-virtual {p0}, Lvq;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lvq;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 206
    invoke-virtual {p0}, Lvq;->e()Lcom/twitter/library/network/av;

    move-result-object v2

    .line 208
    new-instance v3, Lcom/twitter/library/api/upload/an;

    iget-object v4, p0, Lvq;->p:Landroid/content/Context;

    .line 209
    invoke-virtual {p0}, Lvq;->N()Lcom/twitter/library/service/ab;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/twitter/library/api/upload/an;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;)V

    invoke-virtual {v3, v1}, Lcom/twitter/library/api/upload/an;->a(Lcom/twitter/internal/network/i;)Lcom/twitter/library/api/upload/an;

    move-result-object v3

    .line 211
    const-string/jumbo v4, "android_tweet_post_body_enabled"

    invoke-static {v4}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 212
    invoke-virtual {v2}, Lcom/twitter/library/network/av;->c()Ljava/lang/String;

    move-result-object v2

    .line 213
    invoke-static {}, Lbix;->a()Lbiu;

    move-result-object v4

    const-string/jumbo v5, "tweet_poster_body"

    invoke-virtual {v4, v5, v2}, Lbiu;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-virtual {v3, v2}, Lcom/twitter/library/api/upload/an;->a(Ljava/lang/String;)Lcom/twitter/library/api/upload/an;

    .line 219
    :goto_0
    invoke-static {}, Lbix;->a()Lbiu;

    move-result-object v2

    const-string/jumbo v4, "tweet_poster_url"

    invoke-virtual {v2, v4, v0}, Lbiu;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-virtual {v3, v0}, Lcom/twitter/library/api/upload/an;->a(Ljava/lang/StringBuilder;)Lcom/twitter/library/api/upload/an;

    .line 222
    invoke-virtual {p0}, Lvq;->v()V

    .line 223
    invoke-virtual {v3}, Lcom/twitter/library/api/upload/an;->a()Lcom/twitter/internal/network/HttpOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/network/HttpOperation;->c()Lcom/twitter/internal/network/HttpOperation;

    move-result-object v0

    invoke-virtual {v3, v0, p1}, Lcom/twitter/library/api/upload/an;->a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;)Lcom/twitter/library/service/aa;

    .line 224
    invoke-virtual {p0}, Lvq;->w()V

    .line 226
    :cond_0
    const/16 v0, 0x1d4c

    invoke-virtual {p0, v0}, Lvq;->a(I)V

    .line 228
    invoke-virtual {p0}, Lvq;->N()Lcom/twitter/library/service/ab;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/twitter/library/service/ab;

    .line 229
    iget-wide v2, v7, Lcom/twitter/library/service/ab;->c:J

    .line 230
    invoke-virtual {p1}, Lcom/twitter/library/service/aa;->b()Z

    move-result v0

    .line 232
    invoke-direct {p0, p1, v1}, Lvq;->a(Lcom/twitter/library/service/aa;Lcom/twitter/library/api/t;)Z

    move-result v4

    .line 233
    iget-object v5, p1, Lcom/twitter/library/service/aa;->c:Landroid/os/Bundle;

    const-string/jumbo v8, "IsRetriedDuplicateTweet"

    invoke-virtual {v5, v8, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 235
    if-eqz v0, :cond_6

    .line 236
    invoke-virtual {v1}, Lcom/twitter/library/api/t;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cs;

    iput-object v0, p0, Lvq;->i:Lcom/twitter/model/core/cs;

    .line 237
    iget-object v0, p0, Lvq;->i:Lcom/twitter/model/core/cs;

    if-eqz v0, :cond_5

    .line 238
    iget-object v0, p0, Lvq;->i:Lcom/twitter/model/core/cs;

    invoke-virtual {v0}, Lcom/twitter/model/core/cs;->a()J

    move-result-wide v0

    .line 239
    iget-object v4, p0, Lvq;->o:Landroid/os/Bundle;

    const-string/jumbo v5, "status_id"

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 243
    invoke-virtual {p0}, Lvq;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 244
    new-instance v2, Lbtg;

    iget-object v3, p0, Lvq;->p:Landroid/content/Context;

    invoke-direct {v2, v3, v7, v0, v1}, Lbtg;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;J)V

    .line 246
    iget-object v0, p0, Lvq;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 292
    :cond_1
    :goto_1
    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Lvq;->a(I)V

    .line 293
    return-void

    .line 216
    :cond_2
    invoke-virtual {v2}, Lcom/twitter/library/network/av;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 251
    :cond_3
    iget-object v0, p0, Lvq;->p:Landroid/content/Context;

    iget-object v1, p0, Lvq;->b:Lcom/twitter/model/drafts/d;

    iget-object v4, p0, Lvq;->c:Ljava/util/LinkedHashMap;

    iget-object v5, p0, Lvq;->i:Lcom/twitter/model/core/cs;

    invoke-static {v0, v1, v4, v5}, Lvq;->a(Landroid/content/Context;Lcom/twitter/model/drafts/d;Ljava/util/Map;Lcom/twitter/model/core/cs;)V

    .line 253
    const/16 v0, 0x2134

    invoke-virtual {p0, v0}, Lvq;->a(I)V

    .line 257
    invoke-virtual {p0}, Lvq;->S()Lcom/twitter/library/provider/dm;

    move-result-object v0

    .line 258
    invoke-virtual {p0}, Lvq;->T()Lcom/twitter/library/provider/b;

    move-result-object v4

    .line 260
    iget-object v1, p0, Lvq;->i:Lcom/twitter/model/core/cs;

    iget-object v5, p0, Lvq;->b:Lcom/twitter/model/drafts/d;

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/library/provider/dm;->a(Lcom/twitter/model/core/cs;JLcom/twitter/library/provider/b;Lcom/twitter/model/drafts/d;Z)V

    .line 262
    const/16 v0, 0x251c

    invoke-virtual {p0, v0}, Lvq;->a(I)V

    .line 264
    iget-object v0, p0, Lvq;->i:Lcom/twitter/model/core/cs;

    iget-object v0, v0, Lcom/twitter/model/core/cs;->e:Lcom/twitter/model/core/bm;

    iget-object v0, v0, Lcom/twitter/model/core/bm;->e:Lcom/twitter/model/core/j;

    invoke-virtual {v0}, Lcom/twitter/model/core/j;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 265
    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Lvq;->i:Lcom/twitter/model/core/cs;

    iget-object v0, v0, Lcom/twitter/model/core/cs;->e:Lcom/twitter/model/core/bm;

    iget-object v0, v0, Lcom/twitter/model/core/bm;->e:Lcom/twitter/model/core/j;

    invoke-virtual {v0}, Lcom/twitter/model/core/j;->b()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 266
    iget-object v0, p0, Lvq;->i:Lcom/twitter/model/core/cs;

    iget-object v0, v0, Lcom/twitter/model/core/cs;->e:Lcom/twitter/model/core/bm;

    iget-object v0, v0, Lcom/twitter/model/core/bm;->e:Lcom/twitter/model/core/j;

    invoke-virtual {v0}, Lcom/twitter/model/core/j;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/av;

    .line 267
    iget-wide v4, v0, Lcom/twitter/model/core/av;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 269
    :cond_4
    invoke-static {v1}, Lcom/twitter/util/collection/CollectionUtils;->e(Ljava/util/Collection;)[J

    move-result-object v0

    .line 270
    new-instance v1, Lcom/twitter/library/api/search/a;

    iget-object v2, p0, Lvq;->p:Landroid/content/Context;

    invoke-direct {v1, v2, v7, v0}, Lcom/twitter/library/api/search/a;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;[J)V

    invoke-virtual {p0, v1}, Lvq;->b(Lcom/twitter/internal/android/service/AsyncOperation;)V

    goto :goto_1

    .line 274
    :cond_5
    new-instance v0, Lcom/twitter/library/util/InvalidDataException;

    const-string/jumbo v1, "Received null status."

    invoke-direct {v0, v1}, Lcom/twitter/library/util/InvalidDataException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 277
    :cond_6
    const-string/jumbo v2, "custom_errors"

    invoke-virtual {v1}, Lcom/twitter/library/api/t;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cj;

    invoke-static {v0}, Lcom/twitter/model/core/cj;->a(Lcom/twitter/model/core/cj;)[I

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lvq;->a(Ljava/lang/String;[I)Lcom/twitter/library/service/x;

    .line 281
    invoke-virtual {p1}, Lcom/twitter/library/service/aa;->g()Lcom/twitter/internal/network/k;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_7

    iget v0, v0, Lcom/twitter/internal/network/k;->a:I

    const/16 v2, 0x190

    if-ne v0, v2, :cond_7

    .line 284
    iget-object v0, p1, Lcom/twitter/library/service/aa;->c:Landroid/os/Bundle;

    const-string/jumbo v2, "MediaExpired"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 287
    :cond_7
    invoke-virtual {p1}, Lcom/twitter/library/service/aa;->i()Lcom/twitter/library/service/w;

    move-result-object v0

    if-nez v0, :cond_1

    .line 288
    invoke-virtual {v1}, Lcom/twitter/library/api/t;->a()Lcom/twitter/library/service/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/library/service/aa;->a(Lcom/twitter/library/service/w;)V

    goto/16 :goto_1
.end method

.method public b()Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lvq;->q:Lcom/twitter/library/network/at;

    invoke-static {v0}, Lcom/twitter/library/api/upload/ae;->a(Lcom/twitter/library/network/at;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/twitter/internal/android/service/ab;)V
    .locals 2
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
    .line 395
    invoke-super {p0, p1}, Lcom/twitter/library/api/upload/al;->b(Lcom/twitter/internal/android/service/ab;)V

    .line 396
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lvq;->h(I)Lcom/twitter/library/service/x;

    .line 397
    invoke-virtual {p1}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    iget-object v1, p0, Lvq;->b:Lcom/twitter/model/drafts/d;

    invoke-direct {p0, v0, v1}, Lvq;->a(Lcom/twitter/library/service/aa;Lcom/twitter/model/drafts/d;)V

    .line 398
    return-void
.end method

.method public e()Lcom/twitter/library/network/av;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0}, Lvq;->N()Lcom/twitter/library/service/ab;

    move-result-object v1

    .line 172
    invoke-static {}, Lcbz;->a()Lcca;

    move-result-object v2

    .line 174
    if-eqz v1, :cond_1

    .line 175
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v3

    .line 176
    iget-object v1, v1, Lcom/twitter/library/service/ab;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/twitter/library/client/bk;->c(Ljava/lang/String;)Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 177
    if-eqz v1, :cond_0

    invoke-interface {v2, v1}, Lcca;->a(Lcom/twitter/library/client/Session;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    invoke-interface {v2, v1}, Lcca;->c(Lcom/twitter/library/client/Session;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    move v5, v0

    .line 182
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lvq;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 184
    new-instance v0, Lcom/twitter/library/network/av;

    invoke-direct {v0}, Lcom/twitter/library/network/av;-><init>()V

    .line 185
    iget-object v1, p0, Lvq;->q:Lcom/twitter/library/network/at;

    iget-object v2, p0, Lvq;->b:Lcom/twitter/model/drafts/d;

    iget-object v4, p0, Lvq;->a:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/twitter/library/api/upload/ae;->a(Lcom/twitter/library/network/av;Lcom/twitter/library/network/at;Lcom/twitter/model/drafts/d;Ljava/util/List;Ljava/lang/String;Z)V

    .line 188
    return-object v0

    :cond_1
    move v5, v0

    .line 180
    goto :goto_0
.end method

.method public f()Lcom/twitter/model/drafts/d;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lvq;->b:Lcom/twitter/model/drafts/d;

    return-object v0
.end method
