.class public Lblv;
.super Lcom/twitter/library/service/b;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/service/b",
        "<",
        "Lcom/twitter/library/api/t",
        "<",
        "Lcom/twitter/model/account/UserSettings;",
        "Lcom/twitter/model/core/cj;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/twitter/model/account/UserSettings;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 137
    const-class v0, Lblo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/service/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 138
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/model/account/UserSettings;ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 142
    const-class v0, Lblo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/service/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 143
    iput-object p3, p0, Lblv;->h:Lcom/twitter/model/account/UserSettings;

    .line 144
    iput-boolean p4, p0, Lblv;->a:Z

    .line 145
    iput-object p5, p0, Lblv;->c:Ljava/lang/String;

    .line 146
    if-eqz p5, :cond_0

    invoke-virtual {p2}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lblv;->g:Ljava/lang/String;

    .line 147
    return-void

    .line 146
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 169
    const-class v0, Lblo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/service/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 170
    iput-object p3, p0, Lblv;->b:Ljava/lang/String;

    .line 171
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lblv;->h(I)Lcom/twitter/library/service/x;

    .line 172
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 151
    const-class v0, Lblo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/service/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 152
    iput-object p3, p0, Lblv;->c:Ljava/lang/String;

    .line 153
    invoke-virtual {p2}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lblv;->g:Ljava/lang/String;

    .line 154
    iput-object p4, p0, Lblv;->i:Ljava/lang/String;

    .line 155
    iput-object p5, p0, Lblv;->j:Ljava/lang/String;

    .line 156
    iput-object p6, p0, Lblv;->k:Ljava/lang/String;

    .line 157
    iput-boolean p7, p0, Lblv;->l:Z

    .line 158
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/library/client/Session;)Lblv;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lblv;

    invoke-direct {v0, p0, p1}, Lblv;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    const-string/jumbo v1, "Settings fetch is never triggered by a user action."

    .line 90
    invoke-virtual {v0, v1}, Lblv;->k(Ljava/lang/String;)Lcom/twitter/library/service/x;

    move-result-object v0

    const/4 v1, 0x1

    .line 91
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/x;->h(I)Lcom/twitter/library/service/x;

    move-result-object v0

    check-cast v0, Lblv;

    .line 89
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/model/account/UserSettings;ZLjava/lang/String;)Lblv;
    .locals 6

    .prologue
    .line 97
    new-instance v0, Lblv;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lblv;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/model/account/UserSettings;ZLjava/lang/String;)V

    const/4 v1, 0x2

    .line 98
    invoke-virtual {v0, v1}, Lblv;->h(I)Lcom/twitter/library/service/x;

    move-result-object v0

    check-cast v0, Lblv;

    .line 97
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lblv;
    .locals 8

    .prologue
    .line 112
    new-instance v0, Lblv;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lblv;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x3

    .line 114
    invoke-virtual {v0, v1}, Lblv;->h(I)Lcom/twitter/library/service/x;

    move-result-object v0

    check-cast v0, Lblv;

    .line 112
    return-object v0
.end method

.method private a(Lcom/twitter/library/client/Session;Lcom/twitter/model/account/UserSettings;)V
    .locals 2

    .prologue
    .line 443
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v0

    .line 444
    if-eqz v0, :cond_0

    .line 445
    iget-boolean v0, v0, Lcom/twitter/model/account/UserSettings;->B:Z

    iput-boolean v0, p2, Lcom/twitter/model/account/UserSettings;->B:Z

    .line 447
    :cond_0
    invoke-virtual {p1, p2}, Lcom/twitter/library/client/Session;->a(Lcom/twitter/model/account/UserSettings;)V

    .line 448
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lcom/twitter/library/util/b;->a(Ljava/lang/String;Lcom/twitter/model/core/TwitterUser;Lcom/twitter/model/account/UserSettings;)V

    .line 449
    return-void
.end method

.method private a(Lcom/twitter/library/client/Session;Lcom/twitter/model/account/UserSettings;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 453
    iget-object v1, p2, Lcom/twitter/model/account/UserSettings;->m:Ljava/lang/String;

    .line 455
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v2

    .line 456
    if-eqz v2, :cond_1

    .line 457
    new-instance v0, Lcom/twitter/model/core/cv;

    invoke-direct {v0, v2}, Lcom/twitter/model/core/cv;-><init>(Lcom/twitter/model/core/TwitterUser;)V

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cv;->g(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/core/cv;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 458
    invoke-static {}, Lcom/twitter/app/common/account/d;->a()Lcom/twitter/app/common/account/d;

    move-result-object v3

    new-instance v4, Lcom/twitter/app/common/account/UserIdentifier;

    iget-wide v6, v2, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-direct {v4, v6, v7}, Lcom/twitter/app/common/account/UserIdentifier;-><init>(J)V

    invoke-virtual {v3, v4}, Lcom/twitter/app/common/account/d;->a(Lcom/twitter/app/common/account/UserIdentifier;)Lcom/twitter/app/common/account/a;

    move-result-object v3

    .line 459
    if-eqz v3, :cond_0

    .line 460
    sget-object v4, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    .line 461
    invoke-static {v3, v4}, Lcom/twitter/library/util/b;->a(Lcom/twitter/app/common/account/a;Ljava/lang/String;)Z

    move-result v4

    .line 462
    invoke-static {v3, v1}, Lcom/twitter/library/util/b;->b(Lcom/twitter/app/common/account/a;Ljava/lang/String;)Lcom/twitter/app/common/account/a;

    move-result-object v3

    .line 463
    if-eqz v3, :cond_0

    .line 464
    invoke-static {v3, v0, p2}, Lcom/twitter/library/util/b;->a(Lcom/twitter/app/common/account/a;Lcom/twitter/model/core/TwitterUser;Lcom/twitter/model/account/UserSettings;)V

    .line 465
    sget-object v5, Lcom/twitter/library/provider/cn;->c:Ljava/lang/String;

    invoke-static {v3, v5, v4}, Lcom/twitter/library/util/b;->a(Lcom/twitter/app/common/account/a;Ljava/lang/String;Z)V

    .line 468
    :cond_0
    invoke-virtual {p1, v0}, Lcom/twitter/library/client/Session;->a(Lcom/twitter/model/core/TwitterUser;)V

    .line 469
    invoke-virtual {p1, v1}, Lcom/twitter/library/client/Session;->a(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lblv;->p:Landroid/content/Context;

    iget-wide v4, v2, Lcom/twitter/model/core/TwitterUser;->c:J

    .line 473
    invoke-static {v0, v4, v5, p3}, Lcom/twitter/library/platform/TwitterDataSyncService;->c(Landroid/content/Context;JLjava/lang/String;)Z

    move-result v0

    .line 474
    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lblv;->p:Landroid/content/Context;

    iget-wide v4, v2, Lcom/twitter/model/core/TwitterUser;->c:J

    iget-object v1, p0, Lblv;->c:Ljava/lang/String;

    invoke-static {v0, v4, v5, v1}, Lcom/twitter/library/platform/TwitterDataSyncService;->a(Landroid/content/Context;JLjava/lang/String;)V

    .line 476
    iget-object v0, p0, Lblv;->p:Landroid/content/Context;

    iget-wide v2, v2, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-static {v0, v2, v3, p3}, Lcom/twitter/library/platform/TwitterDataSyncService;->b(Landroid/content/Context;JLjava/lang/String;)V

    .line 479
    :cond_1
    return-void
.end method

.method private a(Lcom/twitter/library/service/e;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 487
    iget-object v0, p0, Lblv;->p:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 488
    if-eqz v0, :cond_0

    .line 489
    const-string/jumbo v1, "locale"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v1

    const-string/jumbo v2, "lang"

    .line 490
    invoke-static {v0}, Lcom/twitter/util/a;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 492
    :cond_0
    return-void
.end method

.method private a(Lcom/twitter/model/account/UserSettings;)V
    .locals 2

    .prologue
    .line 363
    invoke-virtual {p0}, Lblv;->N()Lcom/twitter/library/service/ab;

    move-result-object v0

    .line 364
    if-eqz v0, :cond_1

    .line 365
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    iget-object v0, v0, Lcom/twitter/library/service/ab;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bk;->c(Ljava/lang/String;)Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 366
    if-eqz v0, :cond_1

    .line 367
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v1

    .line 368
    if-eqz v1, :cond_0

    .line 369
    iget-boolean v1, v1, Lcom/twitter/model/account/UserSettings;->B:Z

    iput-boolean v1, p1, Lcom/twitter/model/account/UserSettings;->B:Z

    .line 371
    :cond_0
    invoke-virtual {v0, p1}, Lcom/twitter/library/client/Session;->a(Lcom/twitter/model/account/UserSettings;)V

    .line 372
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/twitter/library/util/b;->a(Ljava/lang/String;Lcom/twitter/model/core/TwitterUser;Lcom/twitter/model/account/UserSettings;)V

    .line 375
    :cond_1
    return-void
.end method

.method private a(Lcom/twitter/model/account/UserSettings;Lcom/twitter/model/core/cj;I)V
    .locals 3

    .prologue
    const/16 v2, 0xc8

    .line 408
    if-eq p3, v2, :cond_0

    const/16 v0, 0x193

    if-ne p3, v0, :cond_1

    .line 409
    :cond_0
    invoke-virtual {p0}, Lblv;->N()Lcom/twitter/library/service/ab;

    move-result-object v0

    .line 410
    if-eqz v0, :cond_1

    .line 411
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    iget-object v0, v0, Lcom/twitter/library/service/ab;->a:Ljava/lang/String;

    .line 412
    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bk;->c(Ljava/lang/String;)Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 413
    if-eqz v1, :cond_1

    .line 414
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v0

    .line 415
    if-ne p3, v2, :cond_2

    .line 426
    :goto_0
    if-eqz p1, :cond_1

    .line 427
    invoke-direct {p0, v1, p1}, Lblv;->a(Lcom/twitter/library/client/Session;Lcom/twitter/model/account/UserSettings;)V

    .line 428
    invoke-static {p2}, Lcom/twitter/library/util/ad;->a(Lcom/twitter/model/core/cj;)Lcom/twitter/model/core/cg;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lblv;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lblv;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lblv;->g:Ljava/lang/String;

    iget-object v2, p0, Lblv;->c:Ljava/lang/String;

    .line 429
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 430
    iget-object v0, p0, Lblv;->c:Ljava/lang/String;

    iput-object v0, p1, Lcom/twitter/model/account/UserSettings;->m:Ljava/lang/String;

    .line 431
    iget-object v0, p0, Lblv;->g:Ljava/lang/String;

    invoke-direct {p0, v1, p1, v0}, Lblv;->a(Lcom/twitter/library/client/Session;Lcom/twitter/model/account/UserSettings;Ljava/lang/String;)V

    .line 437
    :cond_1
    return-void

    .line 421
    :cond_2
    if-eqz v0, :cond_3

    .line 423
    iget-boolean v2, p0, Lblv;->l:Z

    iput-boolean v2, v0, Lcom/twitter/model/account/UserSettings;->j:Z

    :cond_3
    move-object p1, v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lblv;
    .locals 8

    .prologue
    .line 120
    new-instance v0, Lblv;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lblv;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x4

    .line 122
    invoke-virtual {v0, v1}, Lblv;->h(I)Lcom/twitter/library/service/x;

    move-result-object v0

    check-cast v0, Lblv;

    .line 120
    return-object v0
.end method

.method private b(Lcom/twitter/model/account/UserSettings;)V
    .locals 7

    .prologue
    const/16 v6, 0x400

    .line 378
    iget-wide v0, p1, Lcom/twitter/model/account/UserSettings;->a:J

    iget-object v2, p0, Lblv;->h:Lcom/twitter/model/account/UserSettings;

    iget-wide v2, v2, Lcom/twitter/model/account/UserSettings;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lblv;->h:Lcom/twitter/model/account/UserSettings;

    iget-object v0, v0, Lcom/twitter/model/account/UserSettings;->b:Ljava/lang/String;

    iput-object v0, p1, Lcom/twitter/model/account/UserSettings;->b:Ljava/lang/String;

    .line 386
    :cond_0
    invoke-virtual {p0}, Lblv;->N()Lcom/twitter/library/service/ab;

    move-result-object v0

    .line 387
    iget-object v1, p1, Lcom/twitter/model/account/UserSettings;->n:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 388
    invoke-virtual {p0}, Lblv;->S()Lcom/twitter/library/provider/dm;

    move-result-object v1

    .line 389
    invoke-virtual {p0}, Lblv;->T()Lcom/twitter/library/provider/b;

    move-result-object v2

    .line 390
    iget-object v3, p1, Lcom/twitter/model/account/UserSettings;->n:Ljava/lang/String;

    const-string/jumbo v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 391
    iget-wide v4, v0, Lcom/twitter/library/service/ab;->c:J

    invoke-virtual {v1, v4, v5, v6, v2}, Lcom/twitter/library/provider/dm;->b(JILcom/twitter/library/provider/b;)V

    .line 396
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lblv;->a(Lcom/twitter/model/account/UserSettings;)V

    .line 398
    iget-object v1, p1, Lcom/twitter/model/account/UserSettings;->m:Ljava/lang/String;

    .line 399
    iget-object v2, p0, Lblv;->g:Ljava/lang/String;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lblv;->g:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 401
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    iget-object v0, v0, Lcom/twitter/library/service/ab;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bk;->c(Ljava/lang/String;)Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/Session;

    .line 402
    iget-object v1, p0, Lblv;->g:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lblv;->a(Lcom/twitter/library/client/Session;Lcom/twitter/model/account/UserSettings;Ljava/lang/String;)V

    .line 404
    :cond_2
    return-void

    .line 393
    :cond_3
    iget-wide v4, v0, Lcom/twitter/library/service/ab;->c:J

    invoke-virtual {v1, v4, v5, v6, v2}, Lcom/twitter/library/provider/dm;->a(JILcom/twitter/library/provider/b;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Z)Lblv;
    .locals 0

    .prologue
    .line 131
    iput-boolean p1, p0, Lblv;->m:Z

    .line 132
    return-object p0
.end method

.method protected a()Lcom/twitter/library/service/d;
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 177
    invoke-virtual {p0}, Lblv;->K()Lcom/twitter/library/service/e;

    move-result-object v1

    .line 178
    invoke-virtual {p0}, Lblv;->M()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 294
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid/unknown action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lblv;->M()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :pswitch_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "account"

    aput-object v2, v0, v3

    const-string/jumbo v2, "settings"

    aput-object v2, v0, v4

    invoke-virtual {v1, v0}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v2, "include_alt_text_compose"

    .line 181
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v2, "include_ranked_timeline"

    .line 182
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 183
    invoke-static {}, Lcal;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const-string/jumbo v0, "include_mention_filter"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v2, "include_universal_quality_filtering"

    .line 185
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 187
    :cond_0
    invoke-direct {p0, v1}, Lblv;->a(Lcom/twitter/library/service/e;)V

    .line 297
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/twitter/library/service/e;->a()Lcom/twitter/library/service/d;

    move-result-object v0

    return-object v0

    .line 191
    :pswitch_1
    sget-object v0, Lcom/twitter/internal/network/HttpOperation$RequestMethod;->b:Lcom/twitter/internal/network/HttpOperation$RequestMethod;

    invoke-virtual {v1, v0}, Lcom/twitter/library/service/e;->a(Lcom/twitter/internal/network/HttpOperation$RequestMethod;)Lcom/twitter/library/service/e;

    .line 192
    new-array v0, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "account"

    aput-object v2, v0, v3

    const-string/jumbo v2, "settings"

    aput-object v2, v0, v4

    invoke-virtual {v1, v0}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v2, "include_alt_text_compose"

    .line 193
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v2, "include_ranked_timeline"

    .line 194
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 195
    invoke-direct {p0, v1}, Lblv;->a(Lcom/twitter/library/service/e;)V

    .line 197
    iget-object v0, p0, Lblv;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p0, Lblv;->h:Lcom/twitter/model/account/UserSettings;

    iget-object v2, p0, Lblv;->c:Ljava/lang/String;

    iput-object v2, v0, Lcom/twitter/model/account/UserSettings;->m:Ljava/lang/String;

    .line 199
    const-string/jumbo v0, "old_screen_name"

    iget-object v2, p0, Lblv;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 202
    :cond_2
    const-string/jumbo v0, "geo_enabled"

    iget-object v2, p0, Lblv;->h:Lcom/twitter/model/account/UserSettings;

    iget-boolean v2, v2, Lcom/twitter/model/account/UserSettings;->c:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v2, "protected"

    iget-object v3, p0, Lblv;->h:Lcom/twitter/model/account/UserSettings;

    iget-boolean v3, v3, Lcom/twitter/model/account/UserSettings;->j:Z

    .line 203
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v2, "discoverable_by_email"

    iget-object v3, p0, Lblv;->h:Lcom/twitter/model/account/UserSettings;

    iget-boolean v3, v3, Lcom/twitter/model/account/UserSettings;->i:Z

    .line 205
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v2, "discoverable_by_mobile_phone"

    iget-object v3, p0, Lblv;->h:Lcom/twitter/model/account/UserSettings;

    iget-boolean v3, v3, Lcom/twitter/model/account/UserSettings;->l:Z

    .line 207
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 206
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v2, "display_sensitive_media"

    iget-object v3, p0, Lblv;->h:Lcom/twitter/model/account/UserSettings;

    iget-boolean v3, v3, Lcom/twitter/model/account/UserSettings;->k:Z

    .line 209
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 208
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v2, "screen_name"

    iget-object v3, p0, Lblv;->h:Lcom/twitter/model/account/UserSettings;

    iget-object v3, v3, Lcom/twitter/model/account/UserSettings;->m:Ljava/lang/String;

    .line 210
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v2, "email_follow_enabled"

    iget-object v3, p0, Lblv;->h:Lcom/twitter/model/account/UserSettings;

    iget-boolean v3, v3, Lcom/twitter/model/account/UserSettings;->o:Z

    .line 212
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v2, "allow_ads_personalization"

    iget-object v3, p0, Lblv;->h:Lcom/twitter/model/account/UserSettings;

    iget-boolean v3, v3, Lcom/twitter/model/account/UserSettings;->q:Z

    .line 214
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 213
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v2, "sleep_time_enabled"

    iget-object v3, p0, Lblv;->h:Lcom/twitter/model/account/UserSettings;

    iget-boolean v3, v3, Lcom/twitter/model/account/UserSettings;->e:Z

    .line 215
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v2

    const-string/jumbo v3, "smart_mute"

    iget-object v0, p0, Lblv;->h:Lcom/twitter/model/account/UserSettings;

    iget-boolean v0, v0, Lcom/twitter/model/account/UserSettings;->t:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "enabled"

    .line 216
    :goto_1
    invoke-virtual {v2, v3, v0}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v2, "alt_text_compose_enabled"

    iget-object v3, p0, Lblv;->h:Lcom/twitter/model/account/UserSettings;

    iget-boolean v3, v3, Lcom/twitter/model/account/UserSettings;->r:Z

    .line 218
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v2, "dm_receipt_setting"

    iget-object v3, p0, Lblv;->h:Lcom/twitter/model/account/UserSettings;

    iget-object v3, v3, Lcom/twitter/model/account/UserSettings;->y:Ljava/lang/String;

    .line 219
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 220
    invoke-static {}, Lcal;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 221
    const-string/jumbo v0, "universal_quality_filtering"

    iget-object v2, p0, Lblv;->h:Lcom/twitter/model/account/UserSettings;

    iget-object v2, v2, Lcom/twitter/model/account/UserSettings;->z:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v2, "mention_filter"

    iget-object v3, p0, Lblv;->h:Lcom/twitter/model/account/UserSettings;

    iget-object v3, v3, Lcom/twitter/model/account/UserSettings;->A:Ljava/lang/String;

    .line 223
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v2, "include_mention_filter"

    .line 224
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v2, "include_universal_quality_filtering"

    .line 225
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 228
    :cond_3
    iget-boolean v0, p0, Lblv;->m:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lblv;->h:Lcom/twitter/model/account/UserSettings;

    invoke-virtual {v0}, Lcom/twitter/model/account/UserSettings;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 229
    const-string/jumbo v0, "ranked_timeline_setting"

    iget-object v2, p0, Lblv;->h:Lcom/twitter/model/account/UserSettings;

    iget v2, v2, Lcom/twitter/model/account/UserSettings;->v:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;J)Lcom/twitter/library/service/e;

    .line 232
    :cond_4
    iget-object v0, p0, Lblv;->h:Lcom/twitter/model/account/UserSettings;

    iget-boolean v0, v0, Lcom/twitter/model/account/UserSettings;->e:Z

    if-eqz v0, :cond_5

    .line 233
    const-string/jumbo v0, "start_sleep_time"

    iget-object v2, p0, Lblv;->h:Lcom/twitter/model/account/UserSettings;

    invoke-virtual {v2}, Lcom/twitter/model/account/UserSettings;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v2, "end_sleep_time"

    iget-object v3, p0, Lblv;->h:Lcom/twitter/model/account/UserSettings;

    .line 234
    invoke-virtual {v3}, Lcom/twitter/model/account/UserSettings;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v2, "time_zone"

    .line 235
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 238
    :cond_5
    iget-boolean v0, p0, Lblv;->a:Z

    if-eqz v0, :cond_6

    .line 239
    iget-object v0, p0, Lblv;->h:Lcom/twitter/model/account/UserSettings;

    iget-boolean v0, v0, Lcom/twitter/model/account/UserSettings;->B:Z

    if-eqz v0, :cond_9

    .line 240
    const-string/jumbo v0, "personalized_trends"

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 247
    :cond_6
    :goto_2
    iget-object v0, p0, Lblv;->h:Lcom/twitter/model/account/UserSettings;

    iget-object v0, v0, Lcom/twitter/model/account/UserSettings;->n:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 248
    const-string/jumbo v0, "allow_media_tagging"

    iget-object v2, p0, Lblv;->h:Lcom/twitter/model/account/UserSettings;

    iget-object v2, v2, Lcom/twitter/model/account/UserSettings;->n:Ljava/lang/String;

    .line 249
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 248
    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 252
    :cond_7
    iget-object v0, p0, Lblv;->h:Lcom/twitter/model/account/UserSettings;

    iget-object v0, v0, Lcom/twitter/model/account/UserSettings;->s:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 253
    const-string/jumbo v0, "allow_dms_from"

    iget-object v2, p0, Lblv;->h:Lcom/twitter/model/account/UserSettings;

    iget-object v2, v2, Lcom/twitter/model/account/UserSettings;->s:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    goto/16 :goto_0

    .line 215
    :cond_8
    const-string/jumbo v0, "disabled"

    goto/16 :goto_1

    .line 242
    :cond_9
    const-string/jumbo v0, "trend_location_woeid"

    iget-object v2, p0, Lblv;->h:Lcom/twitter/model/account/UserSettings;

    iget-wide v2, v2, Lcom/twitter/model/account/UserSettings;->a:J

    .line 243
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 242
    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    goto :goto_2

    .line 258
    :pswitch_2
    sget-object v0, Lcom/twitter/internal/network/HttpOperation$RequestMethod;->b:Lcom/twitter/internal/network/HttpOperation$RequestMethod;

    invoke-virtual {v1, v0}, Lcom/twitter/library/service/e;->a(Lcom/twitter/internal/network/HttpOperation$RequestMethod;)Lcom/twitter/library/service/e;

    .line 259
    new-array v0, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "account"

    aput-object v2, v0, v3

    const-string/jumbo v2, "settings"

    aput-object v2, v0, v4

    invoke-virtual {v1, v0}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    .line 260
    invoke-direct {p0, v1}, Lblv;->a(Lcom/twitter/library/service/e;)V

    .line 262
    const-string/jumbo v0, "protected"

    iget-boolean v2, p0, Lblv;->l:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 264
    iget-object v0, p0, Lblv;->c:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 265
    const-string/jumbo v0, "screen_name"

    iget-object v2, p0, Lblv;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 267
    :cond_a
    iget-object v0, p0, Lblv;->k:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 268
    const-string/jumbo v0, "email"

    iget-object v2, p0, Lblv;->k:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 270
    :cond_b
    iget-object v0, p0, Lblv;->i:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 271
    const-string/jumbo v0, "current_password"

    iget-object v2, p0, Lblv;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 273
    :cond_c
    iget-object v0, p0, Lblv;->j:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 274
    const-string/jumbo v0, "new_password"

    iget-object v2, p0, Lblv;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 275
    const-string/jumbo v0, "password_confirmation"

    iget-object v2, p0, Lblv;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 277
    :cond_d
    iget-object v0, p0, Lblv;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 278
    const-string/jumbo v0, "country_code"

    iget-object v2, p0, Lblv;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    goto/16 :goto_0

    .line 283
    :pswitch_3
    sget-object v0, Lcom/twitter/internal/network/HttpOperation$RequestMethod;->b:Lcom/twitter/internal/network/HttpOperation$RequestMethod;

    invoke-virtual {v1, v0}, Lcom/twitter/library/service/e;->a(Lcom/twitter/internal/network/HttpOperation$RequestMethod;)Lcom/twitter/library/service/e;

    .line 284
    new-array v0, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "account"

    aput-object v2, v0, v3

    const-string/jumbo v2, "resend_confirmation_email"

    aput-object v2, v0, v4

    invoke-virtual {v1, v0}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    .line 285
    invoke-direct {p0, v1}, Lblv;->a(Lcom/twitter/library/service/e;)V

    .line 286
    const-string/jumbo v0, "protected"

    iget-boolean v2, p0, Lblv;->l:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 287
    iget-object v0, p0, Lblv;->k:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 288
    const-string/jumbo v0, "email"

    iget-object v2, p0, Lblv;->k:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    goto/16 :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/t;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/internal/network/HttpOperation;",
            "Lcom/twitter/library/service/aa;",
            "Lcom/twitter/library/api/t",
            "<",
            "Lcom/twitter/model/account/UserSettings;",
            "Lcom/twitter/model/core/cj;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 309
    invoke-virtual {p0}, Lblv;->M()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 311
    :pswitch_0
    invoke-virtual {p1}, Lcom/twitter/internal/network/HttpOperation;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p3}, Lcom/twitter/library/api/t;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/account/UserSettings;

    .line 313
    if-eqz v0, :cond_0

    .line 314
    iget-object v1, p2, Lcom/twitter/library/service/aa;->c:Landroid/os/Bundle;

    const-string/jumbo v2, "SETTINGS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 315
    invoke-direct {p0, v0}, Lblv;->a(Lcom/twitter/model/account/UserSettings;)V

    .line 316
    iget-object v0, p0, Lblv;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/util/x;->a(Landroid/content/Context;)Lcom/twitter/library/util/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/util/x;->b()V

    goto :goto_0

    .line 322
    :pswitch_1
    invoke-virtual {p1}, Lcom/twitter/internal/network/HttpOperation;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p3}, Lcom/twitter/library/api/t;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/account/UserSettings;

    .line 324
    if-eqz v0, :cond_0

    .line 325
    iget-object v1, p2, Lcom/twitter/library/service/aa;->c:Landroid/os/Bundle;

    const-string/jumbo v2, "SETTINGS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 326
    iget-object v1, p0, Lblv;->g:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 327
    iget-object v1, p2, Lcom/twitter/library/service/aa;->c:Landroid/os/Bundle;

    const-string/jumbo v2, "OLD_SCREEN_NAME"

    iget-object v3, p0, Lblv;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_1
    invoke-direct {p0, v0}, Lblv;->b(Lcom/twitter/model/account/UserSettings;)V

    goto :goto_0

    .line 339
    :pswitch_2
    invoke-virtual {p1}, Lcom/twitter/internal/network/HttpOperation;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 340
    invoke-virtual {p3}, Lcom/twitter/library/api/t;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/account/UserSettings;

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 346
    :goto_1
    invoke-virtual {p2}, Lcom/twitter/library/service/aa;->g()Lcom/twitter/internal/network/k;

    move-result-object v2

    .line 347
    if-eqz v2, :cond_3

    .line 348
    iget v2, v2, Lcom/twitter/internal/network/k;->a:I

    .line 352
    :goto_2
    invoke-direct {p0, v1, v0, v2}, Lblv;->a(Lcom/twitter/model/account/UserSettings;Lcom/twitter/model/core/cj;I)V

    goto :goto_0

    .line 342
    :cond_2
    invoke-virtual {p3}, Lcom/twitter/library/api/t;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cj;

    .line 343
    iget-object v2, p2, Lcom/twitter/library/service/aa;->c:Landroid/os/Bundle;

    const-string/jumbo v3, "CUSTOM_ERRORS"

    sget-object v4, Lcom/twitter/model/core/cj;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v2, v3, v0, v4}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/os/Bundle;

    goto :goto_1

    .line 350
    :cond_3
    invoke-virtual {p2}, Lcom/twitter/library/service/aa;->d()I

    move-result v2

    goto :goto_2

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/service/c;)V
    .locals 0

    .prologue
    .line 42
    check-cast p3, Lcom/twitter/library/api/t;

    invoke-virtual {p0, p1, p2, p3}, Lblv;->a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/t;)V

    return-void
.end method

.method protected b()Lcom/twitter/library/api/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/library/api/t",
            "<",
            "Lcom/twitter/model/account/UserSettings;",
            "Lcom/twitter/model/core/cj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    const-class v0, Lcom/twitter/model/account/UserSettings;

    invoke-static {v0}, Lcom/twitter/library/api/v;->a(Ljava/lang/Class;)Lcom/twitter/library/api/v;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic f()Lcom/twitter/library/service/c;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lblv;->b()Lcom/twitter/library/api/t;

    move-result-object v0

    return-object v0
.end method
