.class public Lcom/twitter/android/card/k;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/card/i;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/android/revenue/u;

.field private final c:J

.field private d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private e:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private f:Ljava/lang/String;

.field private g:Lcom/twitter/library/card/CardContext;

.field private h:Lclm;

.field private i:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 56
    new-instance v0, Lcom/twitter/android/revenue/u;

    invoke-direct {v0}, Lcom/twitter/android/revenue/u;-><init>()V

    .line 57
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 56
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/twitter/android/card/k;-><init>(Landroid/content/Context;Lcom/twitter/android/revenue/u;J)V

    .line 58
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/twitter/android/revenue/u;J)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/twitter/android/card/k;->a:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/twitter/android/card/k;->b:Lcom/twitter/android/revenue/u;

    .line 63
    iput-wide p3, p0, Lcom/twitter/android/card/k;->c:J

    .line 64
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 406
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/card/k;->c:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "profile"

    aput-object v3, v1, v2

    const/4 v2, 0x0

    aput-object v2, v1, v6

    const/4 v2, 0x2

    const-string/jumbo v3, "spotlight"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "platform_card"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p1, v1, v2

    .line 407
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/card/k;->a:Landroid/content/Context;

    const-string/jumbo v2, "app"

    iget-object v3, p0, Lcom/twitter/android/card/k;->h:Lclm;

    iget-wide v4, p0, Lcom/twitter/android/card/k;->i:J

    .line 410
    invoke-virtual/range {v0 .. v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Ljava/lang/String;Lclm;J)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/card/k;->f:Ljava/lang/String;

    .line 411
    invoke-virtual {v0, v1, p2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    .line 412
    invoke-virtual {p0}, Lcom/twitter/android/card/k;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->l(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 413
    iget-wide v2, p0, Lcom/twitter/android/card/k;->i:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 414
    iget-wide v2, p0, Lcom/twitter/android/card/k;->i:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->j(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 415
    invoke-virtual {v0, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(Z)Lcom/twitter/library/scribe/ScribeLog;

    .line 417
    :cond_0
    return-object v0
.end method

.method private a(Lcom/twitter/library/scribe/NativeCardUserAction;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 465
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/card/k;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    const/4 v0, 0x0

    .line 472
    :goto_0
    return-object v0

    .line 468
    :cond_0
    new-instance v0, Lcom/twitter/library/scribe/NativeCardEvent;

    iget-object v1, p0, Lcom/twitter/android/card/k;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/twitter/library/scribe/NativeCardEvent;-><init>(Ljava/lang/String;)V

    .line 469
    if-eqz p1, :cond_1

    .line 470
    invoke-virtual {v0, p1}, Lcom/twitter/library/scribe/NativeCardEvent;->a(Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 472
    :cond_1
    invoke-virtual {v0}, Lcom/twitter/library/scribe/NativeCardEvent;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/twitter/android/card/k;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/twitter/android/card/k;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a()Ljava/lang/String;

    move-result-object p1

    .line 479
    :cond_0
    return-object p1
.end method

.method private f(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/twitter/android/card/k;->h:Lclm;

    if-eqz v0, :cond_0

    .line 380
    invoke-direct {p0, p1, p3}, Lcom/twitter/android/card/k;->a(Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    .line 382
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/card/k;->g(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    goto :goto_0
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/card/k;->f(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    return-object v0
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 389
    const-string/jumbo v0, "tweet"

    invoke-direct {p0, v0}, Lcom/twitter/android/card/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 390
    iget-object v0, p0, Lcom/twitter/android/card/k;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/card/k;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/card/k;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 391
    invoke-virtual {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b()Ljava/lang/String;

    move-result-object v0

    .line 393
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/card/k;->g:Lcom/twitter/library/card/CardContext;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/twitter/android/card/k;->g:Lcom/twitter/library/card/CardContext;

    .line 394
    invoke-virtual {v1}, Lcom/twitter/library/card/CardContext;->f()Lcom/twitter/library/scribe/ScribeItemsProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/twitter/library/scribe/ScribeItemsProvider;->a()Ljava/lang/String;

    move-result-object v1

    .line 395
    :goto_1
    new-instance v4, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v6, p0, Lcom/twitter/android/card/k;->c:J

    invoke-direct {v4, v6, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v5, p0, Lcom/twitter/android/card/k;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/twitter/android/card/k;->g:Lcom/twitter/library/card/CardContext;

    iget-object v7, p0, Lcom/twitter/android/card/k;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 396
    invoke-virtual {v4, v5, v6, v7, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v2

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v0, v4, v3

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object p2, v4, v0

    const/4 v0, 0x4

    aput-object p1, v4, v0

    .line 397
    invoke-virtual {v2, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/card/k;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 398
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/card/k;->f:Ljava/lang/String;

    .line 399
    invoke-virtual {v0, v1, p3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    .line 400
    invoke-virtual {p0}, Lcom/twitter/android/card/k;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->l(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 401
    return-object v0

    .line 391
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 394
    goto :goto_1
.end method

.method private h(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/card/k;->h(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    return-object v0
.end method

.method private h(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 431
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/card/k;->c:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v1, p0, Lcom/twitter/android/card/k;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/card/k;->g:Lcom/twitter/library/card/CardContext;

    iget-object v3, p0, Lcom/twitter/android/card/k;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const/4 v4, 0x0

    .line 432
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "tweet::tweet"

    aput-object v3, v2, v5

    aput-object p2, v2, v6

    const/4 v3, 0x2

    aput-object p1, v2, v3

    .line 433
    invoke-static {v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const-string/jumbo v1, "tweet::tweet::impression"

    .line 434
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/card/k;->e:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 435
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/card/k;->f:Ljava/lang/String;

    .line 436
    invoke-virtual {v0, v1, p3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    .line 437
    invoke-virtual {p0}, Lcom/twitter/android/card/k;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->l(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 438
    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/library/scribe/TwitterScribeAssociation;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/twitter/android/card/k;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    return-object v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 78
    iput-wide p1, p0, Lcom/twitter/android/card/k;->i:J

    .line 79
    return-void
.end method

.method public a(Lclm;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/twitter/android/card/k;->h:Lclm;

    .line 74
    return-void
.end method

.method public a(Lcom/twitter/library/api/PromotedEvent;)V
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/twitter/android/card/k;->a(Lcom/twitter/library/api/PromotedEvent;Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 450
    return-void
.end method

.method public a(Lcom/twitter/library/api/PromotedEvent;Lcom/twitter/library/scribe/NativeCardUserAction;)V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/twitter/android/card/k;->g:Lcom/twitter/library/card/CardContext;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/twitter/android/card/k;->g:Lcom/twitter/library/card/CardContext;

    invoke-virtual {v0}, Lcom/twitter/library/card/CardContext;->i()Lcss;

    move-result-object v0

    .line 456
    if-eqz v0, :cond_0

    .line 458
    invoke-static {p1, v0}, Lcft;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)Lcfv;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/twitter/android/card/k;->a(Lcom/twitter/library/scribe/NativeCardUserAction;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcfv;->c(Ljava/lang/String;)Lcfv;

    move-result-object v0

    invoke-virtual {v0}, Lcfv;->a()Lcft;

    move-result-object v0

    .line 459
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 462
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/library/card/CardContext;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/twitter/android/card/k;->g:Lcom/twitter/library/card/CardContext;

    .line 99
    return-void
.end method

.method public a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/twitter/android/card/k;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 84
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/twitter/android/card/k;->f:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/card/k;->c(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 170
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)V
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/card/k;->f(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    .line 159
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 160
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 242
    const-string/jumbo v0, "2586390716:message_me"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/card/k;->d(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/card/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()Lcom/twitter/library/card/CardContext;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/twitter/android/card/k;->g:Lcom/twitter/library/card/CardContext;

    return-object v0
.end method

.method b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 5

    .prologue
    .line 132
    invoke-static {}, Lcom/twitter/util/ak;->a()Ljava/lang/String;

    move-result-object v0

    .line 133
    sget-object v1, Lcom/twitter/library/client/u;->a:Lcom/twitter/library/client/u;

    invoke-virtual {v1}, Lcom/twitter/library/client/u;->a()Lcom/twitter/library/api/d;

    move-result-object v1

    .line 134
    invoke-virtual {p0, p1, v0}, Lcom/twitter/android/card/k;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-direct {p0, p2, p3}, Lcom/twitter/android/card/k;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v3

    .line 140
    const-string/jumbo v4, "app_download_client_event"

    invoke-virtual {v3, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->h(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 141
    if-eqz v0, :cond_0

    .line 142
    const-string/jumbo v4, "4"

    invoke-virtual {v3, v4, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 144
    :cond_0
    if-eqz v2, :cond_1

    .line 145
    const-string/jumbo v0, "3"

    invoke-virtual {v3, v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 147
    :cond_1
    if-eqz v1, :cond_2

    .line 148
    const-string/jumbo v0, "6"

    invoke-virtual {v1}, Lcom/twitter/library/api/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 149
    invoke-virtual {v1}, Lcom/twitter/library/api/d;->b()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Z)Lcom/twitter/library/scribe/ScribeLog;

    .line 151
    :cond_2
    return-object v3
.end method

.method public b(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/twitter/android/card/k;->e:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 89
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 353
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/card/k;->c:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v1, p0, Lcom/twitter/android/card/k;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/card/k;->g:Lcom/twitter/library/card/CardContext;

    iget-object v3, p0, Lcom/twitter/android/card/k;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 354
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "tweet:::platform_promotion_card:open_link"

    aput-object v3, v1, v2

    .line 355
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/card/k;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 356
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {v0, p1, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {v0, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->g(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 357
    invoke-virtual {p0}, Lcom/twitter/android/card/k;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->l(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 353
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 358
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/card/k;->e(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 262
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)V
    .locals 5

    .prologue
    .line 343
    const-string/jumbo v0, "tweet"

    invoke-direct {p0, v0}, Lcom/twitter/android/card/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/card/k;->c:J

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v2, p0, Lcom/twitter/android/card/k;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/android/card/k;->g:Lcom/twitter/library/card/CardContext;

    iget-object v4, p0, Lcom/twitter/android/card/k;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 345
    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/library/card/CardContext;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "::tweet:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "open_web_view_card"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 346
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/card/k;->f:Ljava/lang/String;

    .line 347
    invoke-virtual {v0, v1, p3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/card/k;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 348
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 344
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 349
    return-void
.end method

.method c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/twitter/android/card/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/util/c;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "2"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "1"

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 296
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/card/k;->h(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    .line 298
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 299
    invoke-virtual {v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->c()Lcom/twitter/library/scribe/ScribeItem;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    .line 300
    if-nez v0, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-object v0, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->n:Ljava/lang/String;

    .line 304
    invoke-static {}, Lcom/twitter/util/ak;->a()Ljava/lang/String;

    move-result-object v1

    .line 305
    sget-object v2, Lcom/twitter/library/client/u;->a:Lcom/twitter/library/client/u;

    invoke-virtual {v2}, Lcom/twitter/library/client/u;->a()Lcom/twitter/library/api/d;

    move-result-object v2

    .line 306
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 307
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/card/k;->h(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v3

    .line 312
    const-string/jumbo v4, "app_download_client_event"

    invoke-virtual {v3, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->h(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 313
    const-string/jumbo v4, "4"

    invoke-virtual {v3, v4, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 316
    invoke-static {v0, v1}, Lcom/twitter/library/util/an;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    const-string/jumbo v1, "3"

    invoke-virtual {v3, v1, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 320
    if-eqz v2, :cond_2

    .line 321
    const-string/jumbo v0, "6"

    .line 322
    invoke-virtual {v2}, Lcom/twitter/library/api/d;->a()Ljava/lang/String;

    move-result-object v1

    .line 321
    invoke-virtual {v3, v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 323
    invoke-virtual {v2}, Lcom/twitter/library/api/d;->b()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Z)Lcom/twitter/library/scribe/ScribeLog;

    .line 325
    :cond_2
    invoke-static {v3}, Lbjf;->a(Lbjh;)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)V
    .locals 5

    .prologue
    .line 180
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/card/k;->f(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v1

    .line 182
    invoke-virtual {v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->c()Lcom/twitter/library/scribe/ScribeItem;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    .line 184
    if-nez v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->n:Ljava/lang/String;

    .line 190
    invoke-static {}, Lcom/twitter/util/ak;->a()Ljava/lang/String;

    move-result-object v2

    .line 191
    sget-object v3, Lcom/twitter/library/client/u;->a:Lcom/twitter/library/client/u;

    invoke-virtual {v3}, Lcom/twitter/library/client/u;->a()Lcom/twitter/library/api/d;

    move-result-object v3

    .line 192
    invoke-virtual {p0, v0, v2}, Lcom/twitter/android/card/k;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_1

    .line 194
    const-string/jumbo v4, "3"

    invoke-virtual {v1, v4, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 196
    :cond_1
    invoke-static {v1}, Lbjf;->a(Lbjh;)V

    .line 201
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/card/k;->f(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v1

    .line 203
    const-string/jumbo v4, "app_download_client_event"

    invoke-virtual {v1, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->h(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 204
    if-eqz v2, :cond_2

    .line 205
    const-string/jumbo v4, "4"

    invoke-virtual {v1, v4, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 207
    :cond_2
    if-eqz v0, :cond_3

    .line 208
    const-string/jumbo v2, "3"

    invoke-virtual {v1, v2, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 210
    :cond_3
    if-eqz v3, :cond_4

    .line 211
    const-string/jumbo v0, "6"

    invoke-virtual {v3}, Lcom/twitter/library/api/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 212
    invoke-virtual {v3}, Lcom/twitter/library/api/d;->b()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Z)Lcom/twitter/library/scribe/ScribeLog;

    .line 214
    :cond_4
    invoke-virtual {v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->e()Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 362
    const-string/jumbo v0, "installed_app"

    invoke-virtual {p0, v0, p2}, Lcom/twitter/android/card/k;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v3

    .line 364
    const-string/jumbo v0, "installed_app"

    invoke-virtual {p0, p1, v0, p2}, Lcom/twitter/android/card/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v4

    .line 366
    const-string/jumbo v0, "post_installed_logging_timeframe"

    const v1, 0x1b7740

    invoke-static {v0, v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;I)I

    move-result v0

    int-to-long v8, v0

    .line 368
    const-string/jumbo v0, "post_installed_logging_polling_interval"

    const v1, 0x927c0

    invoke-static {v0, v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;I)I

    move-result v0

    int-to-long v10, v0

    .line 372
    iget-object v0, p0, Lcom/twitter/android/card/k;->g:Lcom/twitter/library/card/CardContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/card/k;->g:Lcom/twitter/library/card/CardContext;

    invoke-virtual {v0}, Lcom/twitter/library/card/CardContext;->i()Lcss;

    move-result-object v5

    .line 373
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/card/k;->b:Lcom/twitter/android/revenue/u;

    iget-object v1, p0, Lcom/twitter/android/card/k;->a:Landroid/content/Context;

    .line 374
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v6

    move-object v2, p1

    .line 373
    invoke-virtual/range {v0 .. v11}, Lcom/twitter/android/revenue/u;->b(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeLog;Lcom/twitter/library/scribe/TwitterScribeLog;Lcss;JJJ)V

    .line 375
    return-void

    .line 372
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)V
    .locals 4

    .prologue
    .line 252
    new-instance v0, Lcom/twitter/library/scribe/ScribeKeyValue;

    const-string/jumbo v1, "viewing_user_id"

    iget-wide v2, p0, Lcom/twitter/android/card/k;->c:J

    .line 254
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/twitter/library/scribe/ScribeKeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 255
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/card/k;->f(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/twitter/library/scribe/ScribeKeyValuesHolder;

    invoke-direct {v3, v0}, Lcom/twitter/library/scribe/ScribeKeyValuesHolder;-><init>(Ljava/util/List;)V

    .line 256
    invoke-virtual {v1, v2, p3, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;Lcom/twitter/library/scribe/ScribeKeyValuesHolder;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    .line 255
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 257
    return-void
.end method

.method e(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 3

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/card/k;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->c()Lcom/twitter/library/scribe/ScribeItem;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    .line 110
    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 122
    :goto_0
    return-object v0

    .line 115
    :cond_0
    iget-object v0, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->n:Ljava/lang/String;

    .line 116
    invoke-static {}, Lcom/twitter/util/ak;->a()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-virtual {p0, v0, v2}, Lcom/twitter/android/card/k;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_1

    .line 119
    const-string/jumbo v2, "3"

    invoke-virtual {v1, v2, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    :cond_1
    move-object v0, v1

    .line 122
    goto :goto_0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)V
    .locals 1

    .prologue
    .line 267
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/card/k;->f(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    .line 269
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 270
    return-void
.end method

.method f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    invoke-static {p1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    :cond_0
    const/4 v0, 0x0

    .line 237
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1, p2}, Lcom/twitter/library/util/an;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
