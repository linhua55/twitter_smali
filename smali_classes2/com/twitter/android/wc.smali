.class public Lcom/twitter/android/wc;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbof;


# static fields
.field private static final a:J

.field private static final b:Ljava/lang/Integer;

.field private static final c:Ljava/lang/Integer;


# instance fields
.field private final d:Lcom/twitter/android/wg;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/twitter/library/provider/b;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/twitter/platform/u;

.field private final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/twitter/android/dm/as;

.field private l:Lcom/twitter/android/wi;

.field private m:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 61
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/twitter/android/wc;->a:J

    .line 64
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/wc;->b:Ljava/lang/Integer;

    .line 66
    sget-object v0, Lcom/twitter/android/wc;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/wc;->c:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/library/provider/b;Ljava/lang/String;Lcom/twitter/android/dm/as;Lcom/twitter/android/wg;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/twitter/android/wc;->f:Lcom/twitter/library/provider/b;

    .line 87
    iput-object p2, p0, Lcom/twitter/android/wc;->g:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/wc;->e:Ljava/util/Map;

    .line 92
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/wc;->j:Ljava/util/Set;

    .line 93
    invoke-static {}, Lcom/twitter/platform/PlatformContext;->e()Lcom/twitter/platform/PlatformContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/platform/PlatformContext;->a()Lcom/twitter/platform/u;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/wc;->h:Lcom/twitter/platform/u;

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v1, Lcom/twitter/android/wc;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/wc;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 95
    iput-object p3, p0, Lcom/twitter/android/wc;->k:Lcom/twitter/android/dm/as;

    .line 97
    if-eqz p4, :cond_0

    .line 98
    iput-object p4, p0, Lcom/twitter/android/wc;->d:Lcom/twitter/android/wg;

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    new-instance v0, Lcom/twitter/android/wg;

    invoke-direct {v0}, Lcom/twitter/android/wg;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/wc;->d:Lcom/twitter/android/wg;

    goto :goto_0
.end method

.method private a(JLandroid/view/ViewGroup;Laev;Z)Landroid/view/View;
    .locals 3

    .prologue
    .line 353
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0403db

    const/4 v2, 0x0

    .line 354
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/UserImageView;

    .line 356
    invoke-direct {p0, p1, p2, p4, v0}, Lcom/twitter/android/wc;->a(JLaev;Lcom/twitter/library/media/widget/UserImageView;)V

    .line 358
    if-eqz p5, :cond_0

    .line 359
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 363
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/wc;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/widget/UserImageView;->setTag(Ljava/lang/Object;)V

    .line 365
    return-object v0

    .line 361
    :cond_0
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 326
    sget-object v0, Lcom/twitter/android/wc;->c:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 327
    iget-object v1, p0, Lcom/twitter/android/wc;->j:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 330
    const/4 v0, 0x0

    .line 344
    :cond_0
    :goto_0
    return-object v0

    .line 333
    :cond_1
    if-nez v0, :cond_2

    .line 334
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0403dc

    const/4 v2, 0x0

    .line 335
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 336
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 337
    sget-object v1, Lcom/twitter/android/wc;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 341
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/wc;->j:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/wc;)Lcom/twitter/android/wg;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/twitter/android/wc;->d:Lcom/twitter/android/wg;

    return-object v0
.end method

.method private a(Laev;Landroid/view/ViewGroup;)Lcom/twitter/util/collection/ay;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laev;",
            "Landroid/view/ViewGroup;",
            ")",
            "Lcom/twitter/util/collection/ay",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 257
    iget-object v0, p0, Lcom/twitter/android/wc;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v7, v8

    .line 259
    :goto_0
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v10

    .line 260
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v11

    .line 261
    invoke-virtual {p0}, Lcom/twitter/android/wc;->g()Ljava/util/List;

    move-result-object v0

    .line 263
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 264
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/wc;->h(J)Ljava/lang/Object;

    move-result-object v2

    .line 265
    sget-object v3, Lcom/twitter/android/wc;->c:Ljava/lang/Integer;

    if-eq v2, v3, :cond_4

    .line 268
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 269
    iget-object v3, p0, Lcom/twitter/android/wc;->d:Lcom/twitter/android/wg;

    invoke-virtual {v3}, Lcom/twitter/android/wg;->c()Ljava/util/Set;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 270
    invoke-virtual {v11, v2}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 271
    iget-object v2, p0, Lcom/twitter/android/wc;->d:Lcom/twitter/android/wg;

    invoke-virtual {v2}, Lcom/twitter/android/wg;->c()Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 275
    :goto_2
    iget-object v0, p0, Lcom/twitter/android/wc;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/twitter/android/wc;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 277
    iget-object v0, p0, Lcom/twitter/android/wc;->j:Ljava/util/Set;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 278
    iget-object v0, p0, Lcom/twitter/android/wc;->j:Ljava/util/Set;

    .line 279
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move v6, v8

    :goto_3
    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    .line 278
    invoke-direct/range {v1 .. v6}, Lcom/twitter/android/wc;->a(JLandroid/view/ViewGroup;Laev;Z)Landroid/view/View;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v3, v0}, Lcom/twitter/android/wc;->a(JLjava/lang/Object;)V

    goto :goto_1

    :cond_1
    move v7, v9

    .line 257
    goto/16 :goto_0

    .line 273
    :cond_2
    invoke-virtual {v10, v2}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_2

    :cond_3
    move v6, v9

    .line 279
    goto :goto_3

    .line 283
    :cond_4
    iget-object v2, p0, Lcom/twitter/android/wc;->j:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 284
    iget-object v2, p0, Lcom/twitter/android/wc;->e:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 288
    :cond_5
    invoke-static {}, Lcom/twitter/util/collection/r;->f()Lcom/twitter/util/collection/r;

    move-result-object v8

    .line 289
    invoke-virtual {p0}, Lcom/twitter/android/wc;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 290
    iget-object v0, p0, Lcom/twitter/android/wc;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_6

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    move v6, v9

    .line 291
    invoke-direct/range {v1 .. v6}, Lcom/twitter/android/wc;->a(JLandroid/view/ViewGroup;Laev;Z)Landroid/view/View;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 294
    invoke-virtual {p0, v2, v3, v1}, Lcom/twitter/android/wc;->a(JLjava/lang/Object;)V

    .line 295
    invoke-virtual {v8, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_4

    .line 299
    :cond_6
    iget-object v0, p0, Lcom/twitter/android/wc;->j:Ljava/util/Set;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 303
    :cond_7
    invoke-direct {p0, p2}, Lcom/twitter/android/wc;->a(Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object v1

    .line 305
    if-eqz v1, :cond_9

    .line 307
    iget-object v0, p0, Lcom/twitter/android/wc;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 308
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v4, v5, v0}, Lcom/twitter/android/wc;->a(JLjava/lang/Object;)V

    goto :goto_5

    .line 311
    :cond_8
    if-nez v7, :cond_9

    .line 312
    invoke-virtual {v8, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 316
    :cond_9
    new-instance v0, Lcom/twitter/util/collection/ay;

    invoke-virtual {v8}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v2

    .line 317
    invoke-virtual {v11}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/util/collection/ay;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 316
    return-object v0
.end method

.method private a(JLaev;Lcom/twitter/library/media/widget/UserImageView;)V
    .locals 3

    .prologue
    .line 374
    iget-object v0, p0, Lcom/twitter/android/wc;->d:Lcom/twitter/android/wg;

    invoke-virtual {v0}, Lcom/twitter/android/wg;->b()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 375
    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {p4, v0}, Lcom/twitter/library/media/widget/UserImageView;->a(Ljava/lang/String;)Z

    .line 391
    :goto_0
    return-void

    .line 378
    :cond_0
    invoke-virtual {p3, p1, p2}, Laev;->a(J)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/we;

    invoke-direct {v1, p0, p4}, Lcom/twitter/android/we;-><init>(Lcom/twitter/android/wc;Lcom/twitter/library/media/widget/UserImageView;)V

    invoke-virtual {v0, v1}, Lrx/o;->c(Ldjf;)Lrx/ap;

    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/android/wc;)Lcom/twitter/platform/u;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/twitter/android/wc;->h:Lcom/twitter/platform/u;

    return-object v0
.end method

.method static synthetic k()J
    .locals 2

    .prologue
    .line 58
    sget-wide v0, Lcom/twitter/android/wc;->a:J

    return-wide v0
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/twitter/android/wc;->l:Lcom/twitter/android/wi;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/twitter/android/wc;->l:Lcom/twitter/android/wi;

    invoke-virtual {v0, p1}, Lcom/twitter/android/wi;->a(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 244
    :goto_0
    return-object v0

    .line 241
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(J)Lrx/ap;
    .locals 3

    .prologue
    .line 190
    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/wc;->e(J)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/wd;

    invoke-direct {v1, p0}, Lcom/twitter/android/wd;-><init>(Lcom/twitter/android/wc;)V

    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/ao;)Lrx/ap;

    move-result-object v0

    return-object v0
.end method

.method public a(JJ)V
    .locals 3

    .prologue
    .line 428
    iget-object v0, p0, Lcom/twitter/android/wc;->d:Lcom/twitter/android/wg;

    invoke-virtual {v0}, Lcom/twitter/android/wg;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/twitter/android/wc;->d:Lcom/twitter/android/wg;

    invoke-virtual {v0}, Lcom/twitter/android/wg;->c()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object v0, p0, Lcom/twitter/android/wc;->d:Lcom/twitter/android/wg;

    invoke-virtual {v0}, Lcom/twitter/android/wg;->d()Ljava/util/Set;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/wc;->c(J)V

    .line 433
    :cond_0
    return-void
.end method

.method protected a(JLjava/lang/Object;)V
    .locals 3

    .prologue
    .line 530
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 531
    iget-object v0, p0, Lcom/twitter/android/wc;->e:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    return-void
.end method

.method public a(JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/twitter/android/wc;->d:Lcom/twitter/android/wg;

    invoke-virtual {v0}, Lcom/twitter/android/wg;->b()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    return-void
.end method

.method public a(Landroid/view/View;ZLandroid/content/Context;Laev;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 109
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 111
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/twitter/android/wc;->l:Lcom/twitter/android/wi;

    if-nez v0, :cond_4

    .line 112
    :cond_0
    new-instance v0, Lcom/twitter/android/wi;

    invoke-direct {v0, p1, p3}, Lcom/twitter/android/wi;-><init>(Landroid/view/View;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/wc;->l:Lcom/twitter/android/wi;

    .line 115
    iget-object v0, p0, Lcom/twitter/android/wc;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 116
    :goto_0
    iget-object v3, p0, Lcom/twitter/android/wc;->e:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 117
    iget-object v3, p0, Lcom/twitter/android/wc;->j:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    move v3, v0

    .line 122
    :goto_1
    const v0, 0x7f13030b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 124
    invoke-virtual {p0}, Lcom/twitter/android/wc;->e()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 127
    invoke-virtual {p0}, Lcom/twitter/android/wc;->h()Z

    move-result v4

    if-nez v4, :cond_5

    .line 129
    :goto_2
    invoke-direct {p0, p4, v0}, Lcom/twitter/android/wc;->a(Laev;Landroid/view/ViewGroup;)Lcom/twitter/util/collection/ay;

    move-result-object v2

    .line 130
    iget-object v0, v2, Lcom/twitter/util/collection/ay;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 131
    iget-object v0, v2, Lcom/twitter/util/collection/ay;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 132
    iget-object v0, v2, Lcom/twitter/util/collection/ay;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 134
    if-eqz v3, :cond_6

    .line 135
    iget-object v0, p0, Lcom/twitter/android/wc;->l:Lcom/twitter/android/wi;

    invoke-virtual {v0}, Lcom/twitter/android/wi;->d()V

    .line 154
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/twitter/android/wc;->k:Lcom/twitter/android/dm/as;

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/twitter/android/wc;->k:Lcom/twitter/android/dm/as;

    iget-object v1, p0, Lcom/twitter/android/wc;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/twitter/android/dm/as;->a(I)V

    .line 157
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 115
    goto :goto_0

    :cond_4
    move v3, v2

    .line 119
    goto :goto_1

    :cond_5
    move v1, v2

    .line 127
    goto :goto_2

    .line 136
    :cond_6
    if-eqz v1, :cond_7

    .line 137
    iget-object v0, p0, Lcom/twitter/android/wc;->l:Lcom/twitter/android/wi;

    invoke-virtual {v0}, Lcom/twitter/android/wi;->a()V

    goto :goto_3

    .line 139
    :cond_7
    iget-object v1, p0, Lcom/twitter/android/wc;->l:Lcom/twitter/android/wi;

    invoke-virtual {v1, v5, v0}, Lcom/twitter/android/wi;->a(Ljava/util/List;Ljava/util/List;)V

    .line 140
    iget-object v0, p0, Lcom/twitter/android/wc;->l:Lcom/twitter/android/wi;

    invoke-virtual {v0, v4}, Lcom/twitter/android/wi;->a(Ljava/util/List;)V

    goto :goto_3

    .line 142
    :cond_8
    invoke-virtual {p0}, Lcom/twitter/android/wc;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/twitter/android/wc;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 145
    iget-object v0, p0, Lcom/twitter/android/wc;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 146
    iget-object v0, p0, Lcom/twitter/android/wc;->d:Lcom/twitter/android/wg;

    invoke-virtual {v0}, Lcom/twitter/android/wg;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 147
    iget-object v0, p0, Lcom/twitter/android/wc;->l:Lcom/twitter/android/wi;

    invoke-virtual {v0}, Lcom/twitter/android/wi;->b()V

    goto :goto_3

    .line 149
    :cond_9
    iget-object v0, p0, Lcom/twitter/android/wc;->d:Lcom/twitter/android/wg;

    invoke-virtual {v0}, Lcom/twitter/android/wg;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 150
    iget-object v0, p0, Lcom/twitter/android/wc;->l:Lcom/twitter/android/wi;

    invoke-virtual {v0}, Lcom/twitter/android/wi;->c()V

    goto :goto_3
.end method

.method public a(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 437
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 438
    iget-object v2, v0, Lcom/twitter/model/core/TwitterUser;->e:Ljava/lang/String;

    .line 439
    if-eqz v2, :cond_0

    .line 440
    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, v2}, Lcom/twitter/android/wc;->a(JLjava/lang/String;)V

    goto :goto_0

    .line 443
    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/twitter/android/wc;->l:Lcom/twitter/android/wi;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/twitter/android/wc;->l:Lcom/twitter/android/wi;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/twitter/android/wc;->l:Lcom/twitter/android/wi;

    invoke-virtual {v0}, Lcom/twitter/android/wi;->e()V

    .line 181
    :cond_0
    return-void
.end method

.method public b(J)V
    .locals 5

    .prologue
    .line 395
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 396
    iget-object v0, p0, Lcom/twitter/android/wc;->d:Lcom/twitter/android/wg;

    invoke-virtual {v0}, Lcom/twitter/android/wg;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 397
    iget-object v1, p0, Lcom/twitter/android/wc;->h:Lcom/twitter/platform/u;

    invoke-interface {v1}, Lcom/twitter/platform/u;->b()J

    move-result-wide v2

    .line 398
    iget-object v1, p0, Lcom/twitter/android/wc;->d:Lcom/twitter/android/wg;

    invoke-virtual {v1}, Lcom/twitter/android/wg;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    if-nez v0, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/twitter/android/wc;->i()V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/wc;->k:Lcom/twitter/android/dm/as;

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/twitter/android/wc;->k:Lcom/twitter/android/dm/as;

    invoke-interface {v0}, Lcom/twitter/android/dm/as;->a()V

    .line 407
    :cond_1
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lrx/ap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 217
    iget-object v0, p0, Lcom/twitter/android/wc;->d:Lcom/twitter/android/wg;

    invoke-virtual {v0}, Lcom/twitter/android/wg;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 218
    invoke-virtual {p0, v4, v5}, Lcom/twitter/android/wc;->a(J)Lrx/ap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public c(J)V
    .locals 3

    .prologue
    .line 411
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 412
    iget-object v0, p0, Lcom/twitter/android/wc;->d:Lcom/twitter/android/wg;

    invoke-virtual {v0}, Lcom/twitter/android/wg;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 413
    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/twitter/android/wc;->d:Lcom/twitter/android/wg;

    invoke-virtual {v0}, Lcom/twitter/android/wg;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    invoke-virtual {p0}, Lcom/twitter/android/wc;->i()V

    .line 418
    :cond_0
    return-void
.end method

.method public d()Lcom/twitter/android/wg;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/twitter/android/wc;->d:Lcom/twitter/android/wg;

    return-object v0
.end method

.method protected d(J)Ljava/lang/Long;
    .locals 3

    .prologue
    .line 458
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 459
    iget-object v0, p0, Lcom/twitter/android/wc;->d:Lcom/twitter/android/wg;

    invoke-virtual {v0}, Lcom/twitter/android/wg;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/wc;->d:Lcom/twitter/android/wg;

    .line 460
    invoke-virtual {v0}, Lcom/twitter/android/wg;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 459
    :goto_0
    return-object v0

    .line 460
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e(J)Lrx/o;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/o",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 469
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lrx/o;->b(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    .line 470
    invoke-virtual {p0}, Lcom/twitter/android/wc;->j()J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lrx/o;->b(JLjava/util/concurrent/TimeUnit;)Lrx/o;

    move-result-object v0

    .line 471
    invoke-static {}, Ldiz;->a()Lrx/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/t;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/wf;

    invoke-direct {v1, p0}, Lcom/twitter/android/wf;-><init>(Lcom/twitter/android/wc;)V

    .line 472
    invoke-virtual {v0, v1}, Lrx/o;->d(Ldjj;)Lrx/o;

    move-result-object v0

    .line 469
    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 449
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 450
    iget-object v0, p0, Lcom/twitter/android/wc;->d:Lcom/twitter/android/wg;

    invoke-virtual {v0}, Lcom/twitter/android/wg;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected f()Ljava/util/List;
    .locals 2
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
    .line 488
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 489
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/wc;->d:Lcom/twitter/android/wg;

    .line 490
    invoke-virtual {v1}, Lcom/twitter/android/wg;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Iterable;)Lcom/twitter/util/collection/r;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/wc;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->d(Ljava/lang/Iterable;)Lcom/twitter/util/collection/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 489
    return-object v0
.end method

.method public f(J)Z
    .locals 3

    .prologue
    .line 515
    iget-object v0, p0, Lcom/twitter/android/wc;->d:Lcom/twitter/android/wg;

    invoke-virtual {v0}, Lcom/twitter/android/wg;->d()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected g()Ljava/util/List;
    .locals 2
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
    .line 498
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 499
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/wc;->e:Ljava/util/Map;

    .line 500
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Iterable;)Lcom/twitter/util/collection/r;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/wc;->d:Lcom/twitter/android/wg;

    invoke-virtual {v1}, Lcom/twitter/android/wg;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->d(Ljava/lang/Iterable;)Lcom/twitter/util/collection/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 499
    return-object v0
.end method

.method public g(J)V
    .locals 3

    .prologue
    .line 523
    iget-object v0, p0, Lcom/twitter/android/wc;->d:Lcom/twitter/android/wg;

    invoke-virtual {v0}, Lcom/twitter/android/wg;->d()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 524
    return-void
.end method

.method protected h(J)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 539
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 540
    iget-object v0, p0, Lcom/twitter/android/wc;->e:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 507
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 508
    iget-object v0, p0, Lcom/twitter/android/wc;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected i()V
    .locals 5

    .prologue
    .line 547
    iget-object v0, p0, Lcom/twitter/android/wc;->f:Lcom/twitter/library/provider/b;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    sget-object v3, Lcom/twitter/library/provider/cu;->a:Landroid/net/Uri;

    iget-object v4, p0, Lcom/twitter/android/wc;->g:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/provider/b;->a([Landroid/net/Uri;)V

    .line 548
    iget-object v0, p0, Lcom/twitter/android/wc;->f:Lcom/twitter/library/provider/b;

    invoke-virtual {v0}, Lcom/twitter/library/provider/b;->a()V

    .line 549
    return-void
.end method

.method protected j()J
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/twitter/android/wc;->m:Ljava/lang/Long;

    if-nez v0, :cond_0

    sget-wide v0, Lcom/twitter/android/wc;->a:J

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/wc;->m:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method
