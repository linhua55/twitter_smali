.class public Lcom/twitter/android/av/aj;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/nq;


# instance fields
.field private final a:Lcom/twitter/util/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/twitter/android/av/ak;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/util/x;Lcom/twitter/android/av/ak;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;",
            "Lcom/twitter/android/av/ak;",
            ")V"
        }
    .end annotation

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Lcom/twitter/android/av/aj;->a:Lcom/twitter/util/x;

    .line 246
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/android/av/aj;->b:Ljava/lang/ref/WeakReference;

    .line 247
    return-void
.end method

.method private a(Lcom/twitter/model/core/Tweet;Z)V
    .locals 2

    .prologue
    .line 354
    iput-boolean p2, p1, Lcom/twitter/model/core/Tweet;->a:Z

    .line 355
    iget v1, p1, Lcom/twitter/model/core/Tweet;->k:I

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/twitter/model/core/Tweet;->k:I

    .line 356
    iget-object v0, p0, Lcom/twitter/android/av/aj;->a:Lcom/twitter/util/x;

    invoke-virtual {v0, p1}, Lcom/twitter/util/x;->a(Ljava/lang/Object;)V

    .line 357
    return-void

    .line 355
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/twitter/android/av/aj;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/av/ak;

    .line 367
    if-eqz v0, :cond_0

    .line 368
    invoke-interface {v0, p1}, Lcom/twitter/android/av/ak;->a(Ljava/lang/String;)V

    .line 370
    :cond_0
    return-void
.end method

.method private b(Lcom/twitter/model/core/Tweet;Z)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 360
    if-nez p2, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p1, Lcom/twitter/model/core/Tweet;->c:Z

    .line 361
    iget v0, p1, Lcom/twitter/model/core/Tweet;->h:I

    if-eqz p2, :cond_0

    const/4 v1, -0x1

    :cond_0
    add-int/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/twitter/model/core/Tweet;->h:I

    .line 362
    iget-object v0, p0, Lcom/twitter/android/av/aj;->a:Lcom/twitter/util/x;

    invoke-virtual {v0, p1}, Lcom/twitter/util/x;->a(Ljava/lang/Object;)V

    .line 363
    return-void

    :cond_1
    move v0, v2

    .line 360
    goto :goto_0
.end method


# virtual methods
.method public a(JLcom/twitter/model/core/Tweet;Z)V
    .locals 1

    .prologue
    .line 329
    invoke-direct {p0, p3, p4}, Lcom/twitter/android/av/aj;->b(Lcom/twitter/model/core/Tweet;Z)V

    .line 330
    if-eqz p4, :cond_0

    const-string/jumbo v0, "unretweet"

    :goto_0
    invoke-direct {p0, v0}, Lcom/twitter/android/av/aj;->a(Ljava/lang/String;)V

    .line 331
    return-void

    .line 330
    :cond_0
    const-string/jumbo v0, "retweet"

    goto :goto_0
.end method

.method public a(JZZZ)V
    .locals 0

    .prologue
    .line 336
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;)V
    .locals 1

    .prologue
    .line 307
    instance-of v0, p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 308
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    .line 309
    new-instance v0, Lcom/twitter/android/np;

    invoke-direct {v0, p1, p2}, Lcom/twitter/android/np;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/twitter/model/core/Tweet;)V

    .line 310
    invoke-virtual {v0, p0}, Lcom/twitter/android/np;->a(Lcom/twitter/android/nq;)Lcom/twitter/android/np;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Lcom/twitter/android/np;->a()Lcom/twitter/android/nm;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Lcom/twitter/android/nm;->a()V

    .line 314
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/client/Session;)V
    .locals 2

    .prologue
    .line 256
    invoke-static {}, Lcom/twitter/android/composer/ax;->a()Lcom/twitter/android/composer/ax;

    move-result-object v0

    .line 257
    invoke-virtual {v0, p2}, Lcom/twitter/android/composer/ax;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/composer/ax;

    move-result-object v0

    .line 258
    invoke-virtual {p3}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ax;->b(Ljava/lang/String;)Lcom/twitter/android/composer/ax;

    move-result-object v0

    .line 259
    invoke-virtual {v0, p1}, Lcom/twitter/android/composer/ax;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 256
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 260
    const-string/jumbo v0, "reply"

    invoke-direct {p0, v0}, Lcom/twitter/android/av/aj;->a(Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/client/Session;Lcav;Landroid/view/View;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 272
    invoke-static {p1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v8

    .line 273
    iget-boolean v0, p2, Lcom/twitter/model/core/Tweet;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 274
    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/twitter/android/av/aj;->a(Lcom/twitter/model/core/Tweet;Z)V

    .line 276
    if-nez v0, :cond_2

    .line 277
    if-eqz p4, :cond_0

    .line 278
    invoke-virtual {p4, p5}, Lcav;->c(Landroid/view/View;)V

    .line 280
    :cond_0
    new-instance v1, Lbrt;

    iget-wide v4, p2, Lcom/twitter/model/core/Tweet;->p:J

    iget-wide v6, p2, Lcom/twitter/model/core/Tweet;->q:J

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v1 .. v7}, Lbrt;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JJ)V

    .line 282
    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbrt;->a(Lcss;)Lbrt;

    move-result-object v0

    .line 280
    invoke-virtual {v8, v0, v9}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 284
    const-string/jumbo v0, "unfavorite"

    invoke-direct {p0, v0}, Lcom/twitter/android/av/aj;->a(Ljava/lang/String;)V

    .line 299
    :goto_1
    return-void

    .line 273
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 286
    :cond_2
    if-eqz p4, :cond_3

    .line 287
    invoke-virtual {p4, p5}, Lcav;->b(Landroid/view/View;)V

    .line 289
    :cond_3
    new-instance v1, Lbrp;

    iget-wide v4, p2, Lcom/twitter/model/core/Tweet;->p:J

    iget-wide v6, p2, Lcom/twitter/model/core/Tweet;->q:J

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v1 .. v7}, Lbrp;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JJ)V

    .line 294
    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbrp;->a(Lcss;)Lbrp;

    move-result-object v0

    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->l()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrp;->a(Ljava/lang/Boolean;)Lbrp;

    move-result-object v0

    .line 289
    invoke-virtual {v8, v0, v9}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 297
    const-string/jumbo v0, "favorite"

    invoke-direct {p0, v0}, Lcom/twitter/android/av/aj;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public b(JLcom/twitter/model/core/Tweet;Z)V
    .locals 1

    .prologue
    .line 340
    if-nez p4, :cond_0

    .line 341
    const-string/jumbo v0, "quote"

    invoke-direct {p0, v0}, Lcom/twitter/android/av/aj;->a(Ljava/lang/String;)V

    .line 343
    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;Lcom/twitter/model/core/Tweet;)V
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/twitter/library/util/an;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Z)V

    .line 324
    const-string/jumbo v0, "share"

    invoke-direct {p0, v0}, Lcom/twitter/android/av/aj;->a(Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public c(JLcom/twitter/model/core/Tweet;Z)V
    .locals 0

    .prologue
    .line 347
    return-void
.end method

.method public d(JLcom/twitter/model/core/Tweet;Z)V
    .locals 0

    .prologue
    .line 351
    return-void
.end method
