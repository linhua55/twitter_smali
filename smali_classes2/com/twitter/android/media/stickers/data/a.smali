.class public Lcom/twitter/android/media/stickers/data/a;
.super Lauz;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lauz",
        "<",
        "Lcpj;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:J

.field private final c:I

.field private final d:Lcom/twitter/android/media/stickers/data/StickerLruCache;

.field private final e:Landroid/content/SharedPreferences;

.field private f:Lcom/twitter/android/media/stickers/data/g;

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLcem;)V
    .locals 8

    .prologue
    .line 72
    invoke-direct {p0}, Lauz;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/media/stickers/data/a;->a:Landroid/content/Context;

    .line 74
    iput-wide p2, p0, Lcom/twitter/android/media/stickers/data/a;->b:J

    .line 75
    iget v0, p4, Lcem;->a:I

    iput v0, p0, Lcom/twitter/android/media/stickers/data/a;->c:I

    .line 76
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/media/stickers/data/a;->e:Landroid/content/SharedPreferences;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/twitter/android/media/stickers/data/a;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/media/stickers/data/a;->g:Ljava/lang/String;

    .line 78
    new-instance v1, Lcom/twitter/android/media/stickers/data/StickerLruCache;

    const/16 v2, 0x8c

    const-string/jumbo v3, "recently_used_stickers"

    iget-object v6, p0, Lcom/twitter/android/media/stickers/data/a;->e:Landroid/content/SharedPreferences;

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/twitter/android/media/stickers/data/StickerLruCache;-><init>(ILjava/lang/String;JLandroid/content/SharedPreferences;)V

    iput-object v1, p0, Lcom/twitter/android/media/stickers/data/a;->d:Lcom/twitter/android/media/stickers/data/StickerLruCache;

    .line 79
    return-void
.end method

.method static synthetic a(Landroid/content/SharedPreferences;Ljava/lang/String;)Landroid/support/v4/util/LongSparseArray;
    .locals 1

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/twitter/android/media/stickers/data/a;->b(Landroid/content/SharedPreferences;Ljava/lang/String;)Landroid/support/v4/util/LongSparseArray;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/List;Landroid/support/v4/util/LongSparseArray;Z)Lcom/twitter/util/collection/r;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcpy;",
            ">;",
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Lcom/twitter/util/collection/r",
            "<",
            "Lcpy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 459
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v15

    .line 460
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcpy;

    .line 461
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 462
    new-instance v6, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v6}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    .line 463
    iget-object v3, v2, Lcpy;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcqa;

    .line 464
    invoke-virtual {v3}, Lcqa;->a()Lcpf;

    move-result-object v8

    .line 465
    iget-wide v10, v8, Lcpf;->h:J

    .line 466
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iget-object v3, v3, Lcqa;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcpf;

    .line 468
    iget-wide v12, v3, Lcpf;->h:J

    .line 469
    invoke-virtual {v6, v10, v11}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 471
    if-nez v4, :cond_1

    .line 472
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 473
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v4, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    invoke-virtual {v6, v10, v11, v4}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 476
    :cond_1
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v4, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 479
    :cond_2
    move-object/from16 v0, p1

    invoke-static {v5, v6, v0}, Lcom/twitter/android/media/stickers/data/a;->b(Ljava/util/Map;Landroid/support/v4/util/LongSparseArray;Landroid/support/v4/util/LongSparseArray;)Ljava/util/List;

    move-result-object v8

    .line 481
    new-instance v3, Lcpy;

    iget-wide v4, v2, Lcpy;->a:J

    iget-wide v6, v2, Lcpy;->b:J

    iget-object v9, v2, Lcpy;->e:Ljava/lang/String;

    iget-object v10, v2, Lcpy;->d:Lcpk;

    if-eqz p2, :cond_3

    const/4 v11, 0x2

    :goto_2
    iget-boolean v12, v2, Lcpy;->g:Z

    iget-object v13, v2, Lcpy;->h:Ljava/lang/String;

    iget-object v14, v2, Lcpy;->i:Lcqb;

    invoke-direct/range {v3 .. v14}, Lcpy;-><init>(JJLjava/util/List;Ljava/lang/String;Lcpk;IZLjava/lang/String;Lcqb;)V

    .line 491
    invoke-virtual {v15, v3}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto/16 :goto_0

    .line 481
    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    .line 493
    :cond_4
    return-object v15
.end method

.method static synthetic a(Lcpj;Landroid/content/SharedPreferences;Ljava/lang/String;)Lcpj;
    .locals 1

    .prologue
    .line 55
    invoke-static {p0, p1, p2}, Lcom/twitter/android/media/stickers/data/a;->b(Lcpj;Landroid/content/SharedPreferences;Ljava/lang/String;)Lcpj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcpj;Ljava/util/Set;)Lcpj;
    .locals 1

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/twitter/android/media/stickers/data/a;->b(Lcpj;Ljava/util/Set;)Lcpj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/support/v4/util/LongSparseArray;Ljava/util/Set;)Lcpy;
    .locals 1

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/twitter/android/media/stickers/data/a;->b(Landroid/support/v4/util/LongSparseArray;Ljava/util/Set;)Lcpy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/util/Map;Landroid/support/v4/util/LongSparseArray;Landroid/support/v4/util/LongSparseArray;)Ljava/util/List;
    .locals 1

    .prologue
    .line 55
    invoke-static {p0, p1, p2}, Lcom/twitter/android/media/stickers/data/a;->b(Ljava/util/Map;Landroid/support/v4/util/LongSparseArray;Landroid/support/v4/util/LongSparseArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/media/stickers/data/a;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/twitter/android/media/stickers/data/a;->g()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/media/stickers/data/a;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/twitter/android/media/stickers/data/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/Set;Landroid/support/v4/util/LongSparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcpy;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Lcpf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 422
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpy;

    .line 423
    iget-object v0, v0, Lcpy;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqa;

    .line 424
    invoke-virtual {v0}, Lcqa;->a()Lcpf;

    move-result-object v3

    .line 425
    iget-wide v4, v3, Lcpf;->h:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 426
    iget-wide v4, v3, Lcpf;->h:J

    invoke-virtual {p2, v4, v5, v3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 428
    :cond_2
    iget-object v0, v0, Lcqa;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpf;

    .line 429
    iget-wide v4, v0, Lcpf;->h:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 430
    iget-wide v4, v0, Lcpf;->h:J

    invoke-virtual {p2, v4, v5, v0}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 436
    :cond_4
    return-void
.end method

.method private static b(Landroid/content/SharedPreferences;Ljava/lang/String;)Landroid/support/v4/util/LongSparseArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            ")",
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "stickers_primary_variant_list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 444
    new-instance v1, Landroid/support/v4/util/LongSparseArray;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/support/v4/util/LongSparseArray;-><init>(I)V

    .line 445
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 446
    const/16 v3, 0x24

    invoke-static {v0, v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "stickers_primary_variant_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    const-wide/16 v6, 0x0

    invoke-interface {p0, v0, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v4, v5, v0}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 451
    :cond_0
    return-object v1
.end method

.method private static b(Lcpj;Landroid/content/SharedPreferences;Ljava/lang/String;)Lcpj;
    .locals 4

    .prologue
    .line 500
    invoke-static {p1, p2}, Lcom/twitter/android/media/stickers/data/a;->b(Landroid/content/SharedPreferences;Ljava/lang/String;)Landroid/support/v4/util/LongSparseArray;

    move-result-object v0

    .line 501
    iget-object v1, p0, Lcpj;->a:Ljava/util/List;

    const/4 v2, 0x0

    .line 502
    invoke-static {v1, v0, v2}, Lcom/twitter/android/media/stickers/data/a;->a(Ljava/util/List;Landroid/support/v4/util/LongSparseArray;Z)Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 503
    iget-object v2, p0, Lcpj;->b:Ljava/util/List;

    const/4 v3, 0x1

    .line 504
    invoke-static {v2, v0, v3}, Lcom/twitter/android/media/stickers/data/a;->a(Ljava/util/List;Landroid/support/v4/util/LongSparseArray;Z)Lcom/twitter/util/collection/r;

    move-result-object v2

    .line 505
    new-instance v3, Lcpj;

    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v3, v0, v1}, Lcpj;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v3
.end method

.method private static b(Lcpj;Ljava/util/Set;)Lcpj;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcpj;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcpj;"
        }
    .end annotation

    .prologue
    .line 409
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/support/v4/util/LongSparseArray;-><init>(I)V

    .line 410
    iget-object v1, p0, Lcpj;->a:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/twitter/android/media/stickers/data/a;->a(Ljava/util/List;Ljava/util/Set;Landroid/support/v4/util/LongSparseArray;)V

    .line 411
    iget-object v1, p0, Lcpj;->b:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/twitter/android/media/stickers/data/a;->a(Ljava/util/List;Ljava/util/Set;Landroid/support/v4/util/LongSparseArray;)V

    .line 412
    invoke-static {v0, p1}, Lcom/twitter/android/media/stickers/data/a;->b(Landroid/support/v4/util/LongSparseArray;Ljava/util/Set;)Lcpy;

    move-result-object v0

    .line 413
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 414
    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 415
    iget-object v0, p0, Lcpj;->a:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Iterable;)Lcom/twitter/util/collection/r;

    .line 416
    new-instance v2, Lcpj;

    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcpj;->b:Ljava/util/List;

    invoke-direct {v2, v0, v1}, Lcpj;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method

.method private static b(Landroid/support/v4/util/LongSparseArray;Ljava/util/Set;)Lcpy;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Lcpf;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcpy;"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 386
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(I)Lcom/twitter/util/collection/r;

    move-result-object v4

    .line 387
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 388
    invoke-virtual {p0, v6, v7}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpf;

    .line 389
    if-eqz v0, :cond_0

    .line 390
    new-instance v5, Lcqa;

    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lcqa;-><init>(Lcpf;Ljava/util/List;)V

    .line 391
    invoke-virtual {v4, v5}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_0

    .line 394
    :cond_1
    new-instance v1, Lcpy;

    .line 397
    invoke-virtual {v4}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const-string/jumbo v7, "recently_used"

    new-instance v8, Lcpk;

    sget-object v0, Lcom/twitter/util/math/Size;->b:Lcom/twitter/util/math/Size;

    const-string/jumbo v4, ""

    const-string/jumbo v5, "none"

    invoke-direct {v8, v0, v4, v5}, Lcpk;-><init>(Lcom/twitter/util/math/Size;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Lcqb;->a:Lcqb;

    move-wide v4, v2

    invoke-direct/range {v1 .. v12}, Lcpy;-><init>(JJLjava/util/List;Ljava/lang/String;Lcpk;IZLjava/lang/String;Lcqb;)V

    .line 394
    return-object v1
.end method

.method private static b(Ljava/util/Map;Landroid/support/v4/util/LongSparseArray;Landroid/support/v4/util/LongSparseArray;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcpf;",
            ">;",
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcpf;",
            ">;>;",
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcqa;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(I)Lcom/twitter/util/collection/r;

    move-result-object v3

    .line 364
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpf;

    .line 365
    iget-wide v6, v0, Lcpf;->h:J

    .line 367
    invoke-virtual {p1, v6, v7}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Lcom/twitter/util/object/g;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 368
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 371
    invoke-virtual {p2, v6, v7}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 372
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v2, v6, v10

    if-eqz v2, :cond_0

    .line 373
    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    new-instance v2, Lcqa;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpf;

    invoke-direct {v2, v0, v8}, Lcqa;-><init>(Lcpf;Ljava/util/List;)V

    move-object v0, v2

    .line 378
    :goto_1
    invoke-virtual {v3, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_0

    .line 376
    :cond_0
    new-instance v1, Lcqa;

    invoke-direct {v1, v0, v8}, Lcqa;-><init>(Lcpf;Ljava/util/List;)V

    move-object v0, v1

    goto :goto_1

    .line 380
    :cond_1
    invoke-virtual {v3}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/media/stickers/data/a;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/twitter/android/media/stickers/data/a;->f()V

    return-void
.end method

.method static synthetic b(Lcom/twitter/android/media/stickers/data/a;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/twitter/android/media/stickers/data/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcom/twitter/android/media/stickers/data/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/twitter/android/media/stickers/data/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/media/stickers/data/a;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/twitter/android/media/stickers/data/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private c()Z
    .locals 7

    .prologue
    .line 103
    iget-object v0, p0, Lcom/twitter/android/media/stickers/data/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/twitter/android/media/stickers/data/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "last_stickers_db_update"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 106
    const-string/jumbo v2, "photo_stickers_featured_category_refresh_rate"

    const-wide/32 v4, 0x5265c00

    invoke-static {v2, v4, v5}, Lcom/twitter/config/d;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 108
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sub-long v2, v4, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/twitter/android/media/stickers/data/a;)J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/twitter/android/media/stickers/data/a;->b:J

    return-wide v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 112
    iget-object v0, p0, Lcom/twitter/android/media/stickers/data/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/twitter/android/media/stickers/data/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "last_stickers_db_update"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    .line 113
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 114
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 115
    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    .line 118
    iget-object v0, p0, Lcom/twitter/android/media/stickers/data/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/twitter/android/media/stickers/data/a;->a:Landroid/content/Context;

    iget-wide v2, p0, Lcom/twitter/android/media/stickers/data/a;->b:J

    invoke-static {v1, v2, v3}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v1

    .line 120
    new-instance v2, Lcom/twitter/android/media/stickers/data/f;

    iget-object v3, p0, Lcom/twitter/android/media/stickers/data/a;->d:Lcom/twitter/android/media/stickers/data/StickerLruCache;

    .line 121
    invoke-virtual {v3}, Lcom/twitter/android/media/stickers/data/StickerLruCache;->a()Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/media/stickers/data/a;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/twitter/android/media/stickers/data/a;->e:Landroid/content/SharedPreferences;

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/twitter/android/media/stickers/data/f;-><init>(Lcom/twitter/library/provider/dm;Ljava/util/Set;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 122
    new-instance v1, Lcom/twitter/android/media/stickers/data/b;

    invoke-direct {v1, p0}, Lcom/twitter/android/media/stickers/data/b;-><init>(Lcom/twitter/android/media/stickers/data/a;)V

    invoke-virtual {v2, v1}, Lcom/twitter/android/media/stickers/data/f;->a(Lcom/twitter/internal/android/service/c;)Lcom/twitter/internal/android/service/AsyncOperation;

    .line 134
    invoke-virtual {v0, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 135
    return-void
.end method

.method static synthetic e(Lcom/twitter/android/media/stickers/data/a;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/twitter/android/media/stickers/data/a;->d()V

    return-void
.end method

.method static synthetic f(Lcom/twitter/android/media/stickers/data/a;)Lcom/twitter/android/media/stickers/data/StickerLruCache;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/twitter/android/media/stickers/data/a;->d:Lcom/twitter/android/media/stickers/data/StickerLruCache;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/twitter/android/media/stickers/data/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    .line 139
    new-instance v1, Lcom/twitter/android/media/stickers/data/h;

    iget-object v2, p0, Lcom/twitter/android/media/stickers/data/a;->a:Landroid/content/Context;

    iget v3, p0, Lcom/twitter/android/media/stickers/data/a;->c:I

    invoke-direct {v1, v2, v3}, Lcom/twitter/android/media/stickers/data/h;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lcom/twitter/android/media/stickers/data/c;

    invoke-direct {v2, p0, v0}, Lcom/twitter/android/media/stickers/data/c;-><init>(Lcom/twitter/android/media/stickers/data/a;Lcom/twitter/library/client/bd;)V

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 174
    return-void
.end method

.method static synthetic g(Lcom/twitter/android/media/stickers/data/a;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/twitter/android/media/stickers/data/a;->e:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 177
    iget-object v0, p0, Lcom/twitter/android/media/stickers/data/a;->f:Lcom/twitter/android/media/stickers/data/g;

    if-nez v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/media/stickers/data/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    .line 181
    new-instance v1, Lcom/twitter/android/media/stickers/data/i;

    iget-object v2, p0, Lcom/twitter/android/media/stickers/data/a;->a:Landroid/content/Context;

    iget v3, p0, Lcom/twitter/android/media/stickers/data/a;->c:I

    invoke-direct {v1, v2, v3}, Lcom/twitter/android/media/stickers/data/i;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lcom/twitter/android/media/stickers/data/e;

    invoke-direct {v2, p0, v0}, Lcom/twitter/android/media/stickers/data/e;-><init>(Lcom/twitter/android/media/stickers/data/a;Lcom/twitter/library/client/bd;)V

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic h(Lcom/twitter/android/media/stickers/data/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/twitter/android/media/stickers/data/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/twitter/android/media/stickers/data/a;)Lcom/twitter/android/media/stickers/data/g;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/twitter/android/media/stickers/data/a;->f:Lcom/twitter/android/media/stickers/data/g;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/twitter/android/media/stickers/data/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/twitter/android/media/stickers/data/a;->e()V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/media/stickers/data/a;->f()V

    goto :goto_0
.end method

.method public a(Lavg;Lcom/twitter/android/media/stickers/data/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lavg",
            "<",
            "Lcpj;",
            ">;",
            "Lcom/twitter/android/media/stickers/data/g;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-super {p0, p1}, Lauz;->a(Lavg;)V

    .line 84
    iput-object p2, p0, Lcom/twitter/android/media/stickers/data/a;->f:Lcom/twitter/android/media/stickers/data/g;

    .line 85
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/data/a;->a()V

    .line 86
    return-void
.end method

.method public a(Lcpf;)V
    .locals 4

    .prologue
    .line 99
    iget-object v0, p0, Lcom/twitter/android/media/stickers/data/a;->d:Lcom/twitter/android/media/stickers/data/StickerLruCache;

    iget-wide v2, p1, Lcpf;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/media/stickers/data/StickerLruCache;->a(Ljava/lang/Long;)Z

    .line 100
    return-void
.end method
