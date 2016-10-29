.class public abstract Lcp;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lda;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BUI",
        "LDER:Lcp",
        "<TBUI",
        "LDER;",
        "TREQUEST;TIMAGE;TINFO;>;REQUEST:",
        "Ljava/lang/Object;",
        "IMAGE:",
        "Ljava/lang/Object;",
        "INFO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lda;"
    }
.end annotation


# static fields
.field private static final a:Lct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lct",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/NullPointerException;

.field private static final p:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lct;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TREQUEST;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TREQUEST;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private h:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TREQUEST;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private i:Z

.field private j:Lbm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm",
            "<",
            "Lcom/facebook/datasource/d",
            "<TIMAGE;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private k:Lct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lct",
            "<-TINFO;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Lcx;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcq;

    invoke-direct {v0}, Lcq;-><init>()V

    sput-object v0, Lcp;->a:Lct;

    .line 54
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "No image request was specified!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcp;->b:Ljava/lang/NullPointerException;

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcp;->p:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Lct;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcp;->c:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcp;->d:Ljava/util/Set;

    .line 82
    invoke-direct {p0}, Lcp;->a()V

    .line 83
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 87
    iput-object v1, p0, Lcp;->e:Ljava/lang/Object;

    .line 88
    iput-object v1, p0, Lcp;->f:Ljava/lang/Object;

    .line 89
    iput-object v1, p0, Lcp;->g:Ljava/lang/Object;

    .line 90
    iput-object v1, p0, Lcp;->h:[Ljava/lang/Object;

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcp;->i:Z

    .line 92
    iput-object v1, p0, Lcp;->k:Lct;

    .line 93
    iput-boolean v2, p0, Lcp;->l:Z

    .line 94
    iput-boolean v2, p0, Lcp;->m:Z

    .line 95
    iput-object v1, p0, Lcp;->o:Lcx;

    .line 96
    return-void
.end method

.method protected static k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 290
    sget-object v0, Lcp;->p:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/Object;Z)Lbm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQUEST;Z)",
            "Lbm",
            "<",
            "Lcom/facebook/datasource/d",
            "<TIMAGE;>;>;"
        }
    .end annotation

    .prologue
    .line 349
    invoke-virtual {p0}, Lcp;->e()Ljava/lang/Object;

    move-result-object v0

    .line 350
    new-instance v1, Lcr;

    invoke-direct {v1, p0, p1, v0, p2}, Lcr;-><init>(Lcp;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v1
.end method

.method protected a([Ljava/lang/Object;Z)Lbm;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TREQUEST;Z)",
            "Lbm",
            "<",
            "Lcom/facebook/datasource/d",
            "<TIMAGE;>;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 327
    new-instance v2, Ljava/util/ArrayList;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 328
    if-eqz p2, :cond_0

    move v0, v1

    .line 330
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 331
    aget-object v3, p1, v0

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcp;->a(Ljava/lang/Object;Z)Lbm;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_0
    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 335
    aget-object v0, p1, v1

    invoke-virtual {p0, v0}, Lcp;->c(Ljava/lang/Object;)Lbm;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 337
    :cond_1
    invoke-static {v2}, Lcom/facebook/datasource/h;->a(Ljava/util/List;)Lcom/facebook/datasource/h;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Ljava/lang/Object;Ljava/lang/Object;Z)Lcom/facebook/datasource/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQUEST;",
            "Ljava/lang/Object;",
            "Z)",
            "Lcom/facebook/datasource/d",
            "<TIMAGE;>;"
        }
    .end annotation
.end method

.method public a(Lct;)Lcp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lct",
            "<-TINFO;>;)TBUI",
            "LDER;"
        }
    .end annotation

    .prologue
    .line 231
    iput-object p1, p0, Lcp;->k:Lct;

    .line 232
    invoke-virtual {p0}, Lcp;->c()Lcp;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcx;)Lcp;
    .locals 1
    .param p1    # Lcx;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcx;",
            ")TBUI",
            "LDER;"
        }
    .end annotation

    .prologue
    .line 244
    iput-object p1, p0, Lcp;->o:Lcx;

    .line 245
    invoke-virtual {p0}, Lcp;->c()Lcp;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lcp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TBUI",
            "LDER;"
        }
    .end annotation

    .prologue
    .line 107
    iput-object p1, p0, Lcp;->e:Ljava/lang/Object;

    .line 108
    invoke-virtual {p0}, Lcp;->c()Lcp;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)Lcp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TBUI",
            "LDER;"
        }
    .end annotation

    .prologue
    .line 220
    iput-boolean p1, p0, Lcp;->m:Z

    .line 221
    invoke-virtual {p0}, Lcp;->c()Lcp;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcm;)V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcp;->d:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcp;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lct;

    .line 368
    invoke-virtual {p1, v0}, Lcm;->a(Lct;)V

    goto :goto_0

    .line 371
    :cond_0
    iget-object v0, p0, Lcp;->k:Lct;

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcp;->k:Lct;

    invoke-virtual {p1, v0}, Lcm;->a(Lct;)V

    .line 374
    :cond_1
    iget-boolean v0, p0, Lcp;->m:Z

    if-eqz v0, :cond_2

    .line 375
    sget-object v0, Lcp;->a:Lct;

    invoke-virtual {p1, v0}, Lcm;->a(Lct;)V

    .line 377
    :cond_2
    return-void
.end method

.method public b(Ljava/lang/Object;)Lcp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQUEST;)TBUI",
            "LDER;"
        }
    .end annotation

    .prologue
    .line 119
    iput-object p1, p0, Lcp;->f:Ljava/lang/Object;

    .line 120
    invoke-virtual {p0}, Lcp;->c()Lcp;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcx;)Lda;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcp;->a(Lcx;)Lcp;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcm;)V
    .locals 2

    .prologue
    .line 381
    iget-boolean v0, p0, Lcp;->l:Z

    if-nez v0, :cond_0

    .line 391
    :goto_0
    return-void

    .line 384
    :cond_0
    invoke-virtual {p1}, Lcm;->c()Lcom/facebook/drawee/components/d;

    move-result-object v0

    .line 385
    if-nez v0, :cond_1

    .line 386
    new-instance v0, Lcom/facebook/drawee/components/d;

    invoke-direct {v0}, Lcom/facebook/drawee/components/d;-><init>()V

    .line 387
    invoke-virtual {p1, v0}, Lcm;->a(Lcom/facebook/drawee/components/d;)V

    .line 389
    :cond_1
    iget-boolean v1, p0, Lcp;->l:Z

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/d;->a(Z)V

    .line 390
    invoke-virtual {p0, p1}, Lcp;->c(Lcm;)V

    goto :goto_0
.end method

.method protected c(Ljava/lang/Object;)Lbm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQUEST;)",
            "Lbm",
            "<",
            "Lcom/facebook/datasource/d",
            "<TIMAGE;>;>;"
        }
    .end annotation

    .prologue
    .line 342
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcp;->a(Ljava/lang/Object;Z)Lbm;

    move-result-object v0

    return-object v0
.end method

.method protected abstract c()Lcp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBUI",
            "LDER;"
        }
    .end annotation
.end method

.method protected c(Lcm;)V
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p1}, Lcm;->d()Lcv;

    move-result-object v0

    .line 396
    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lcp;->c:Landroid/content/Context;

    invoke-static {v0}, Lcv;->a(Landroid/content/Context;)Lcv;

    move-result-object v0

    .line 398
    invoke-virtual {p1, v0}, Lcm;->a(Lcv;)V

    .line 400
    :cond_0
    return-void
.end method

.method protected abstract d()Lcm;
.end method

.method public synthetic d(Ljava/lang/Object;)Lda;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcp;->a(Ljava/lang/Object;)Lcp;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcp;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcp;->n:Z

    return v0
.end method

.method public g()Lcx;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcp;->o:Lcx;

    return-object v0
.end method

.method public h()Lcm;
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0}, Lcp;->i()V

    .line 260
    iget-object v0, p0, Lcp;->f:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcp;->h:[Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcp;->g:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcp;->g:Ljava/lang/Object;

    iput-object v0, p0, Lcp;->f:Ljava/lang/Object;

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcp;->g:Ljava/lang/Object;

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcp;->j()Lcm;

    move-result-object v0

    return-object v0
.end method

.method protected i()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 270
    iget-object v0, p0, Lcp;->h:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcp;->f:Ljava/lang/Object;

    if-nez v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    const-string/jumbo v3, "Cannot specify both ImageRequest and FirstAvailableImageRequests!"

    invoke-static {v0, v3}, Lbk;->b(ZLjava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lcp;->j:Lbm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcp;->h:[Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcp;->f:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcp;->g:Ljava/lang/Object;

    if-nez v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    const-string/jumbo v0, "Cannot specify DataSourceSupplier with other ImageRequests! Use one or the other."

    invoke-static {v1, v0}, Lbk;->b(ZLjava/lang/Object;)V

    .line 277
    return-void

    :cond_3
    move v0, v1

    .line 270
    goto :goto_0
.end method

.method protected j()Lcm;
    .locals 2

    .prologue
    .line 281
    invoke-virtual {p0}, Lcp;->d()Lcm;

    move-result-object v0

    .line 282
    invoke-virtual {p0}, Lcp;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcm;->a(Z)V

    .line 283
    invoke-virtual {p0, v0}, Lcp;->b(Lcm;)V

    .line 284
    invoke-virtual {p0, v0}, Lcp;->a(Lcm;)V

    .line 285
    return-object v0
.end method

.method protected l()Lbm;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbm",
            "<",
            "Lcom/facebook/datasource/d",
            "<TIMAGE;>;>;"
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lcp;->j:Lbm;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcp;->j:Lbm;

    .line 321
    :cond_0
    :goto_0
    return-object v0

    .line 299
    :cond_1
    const/4 v0, 0x0

    .line 302
    iget-object v1, p0, Lcp;->f:Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 303
    iget-object v0, p0, Lcp;->f:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcp;->c(Ljava/lang/Object;)Lbm;

    move-result-object v0

    .line 309
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcp;->g:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 310
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 311
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v0, p0, Lcp;->g:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcp;->c(Ljava/lang/Object;)Lbm;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-static {v1}, Lcom/facebook/datasource/l;->a(Ljava/util/List;)Lcom/facebook/datasource/l;

    move-result-object v0

    .line 317
    :cond_3
    if-nez v0, :cond_0

    .line 318
    sget-object v0, Lcp;->b:Ljava/lang/NullPointerException;

    invoke-static {v0}, Lcom/facebook/datasource/e;->b(Ljava/lang/Throwable;)Lbm;

    move-result-object v0

    goto :goto_0

    .line 304
    :cond_4
    iget-object v1, p0, Lcp;->h:[Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 305
    iget-object v0, p0, Lcp;->h:[Ljava/lang/Object;

    iget-boolean v1, p0, Lcp;->i:Z

    invoke-virtual {p0, v0, v1}, Lcp;->a([Ljava/lang/Object;Z)Lbm;

    move-result-object v0

    goto :goto_1
.end method

.method public synthetic m()Lcx;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcp;->h()Lcm;

    move-result-object v0

    return-object v0
.end method
