.class public final Lokhttp3/aq;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field a:Lokhttp3/ad;

.field b:Ljava/net/Proxy;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/x;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/al;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/al;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/net/ProxySelector;

.field h:Lokhttp3/ab;

.field i:Lokhttp3/d;

.field j:Ldfr;

.field k:Ljavax/net/SocketFactory;

.field l:Ljavax/net/ssl/SSLSocketFactory;

.field m:Ldha;

.field n:Ljavax/net/ssl/HostnameVerifier;

.field o:Lokhttp3/p;

.field p:Lokhttp3/b;

.field q:Lokhttp3/b;

.field r:Lokhttp3/v;

.field s:Lokhttp3/ae;

.field t:Z

.field u:Z

.field v:Z

.field w:I

.field x:I

.field y:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x2710

    const/4 v1, 0x1

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/aq;->e:Ljava/util/List;

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/aq;->f:Ljava/util/List;

    .line 422
    new-instance v0, Lokhttp3/ad;

    invoke-direct {v0}, Lokhttp3/ad;-><init>()V

    iput-object v0, p0, Lokhttp3/aq;->a:Lokhttp3/ad;

    .line 423
    invoke-static {}, Lokhttp3/ao;->z()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aq;->c:Ljava/util/List;

    .line 424
    invoke-static {}, Lokhttp3/ao;->A()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aq;->d:Ljava/util/List;

    .line 425
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aq;->g:Ljava/net/ProxySelector;

    .line 426
    sget-object v0, Lokhttp3/ab;->a:Lokhttp3/ab;

    iput-object v0, p0, Lokhttp3/aq;->h:Lokhttp3/ab;

    .line 427
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aq;->k:Ljavax/net/SocketFactory;

    .line 428
    sget-object v0, Ldhc;->a:Ldhc;

    iput-object v0, p0, Lokhttp3/aq;->n:Ljavax/net/ssl/HostnameVerifier;

    .line 429
    sget-object v0, Lokhttp3/p;->a:Lokhttp3/p;

    iput-object v0, p0, Lokhttp3/aq;->o:Lokhttp3/p;

    .line 430
    sget-object v0, Lokhttp3/b;->a:Lokhttp3/b;

    iput-object v0, p0, Lokhttp3/aq;->p:Lokhttp3/b;

    .line 431
    sget-object v0, Lokhttp3/b;->a:Lokhttp3/b;

    iput-object v0, p0, Lokhttp3/aq;->q:Lokhttp3/b;

    .line 432
    new-instance v0, Lokhttp3/v;

    invoke-direct {v0}, Lokhttp3/v;-><init>()V

    iput-object v0, p0, Lokhttp3/aq;->r:Lokhttp3/v;

    .line 433
    sget-object v0, Lokhttp3/ae;->a:Lokhttp3/ae;

    iput-object v0, p0, Lokhttp3/aq;->s:Lokhttp3/ae;

    .line 434
    iput-boolean v1, p0, Lokhttp3/aq;->t:Z

    .line 435
    iput-boolean v1, p0, Lokhttp3/aq;->u:Z

    .line 436
    iput-boolean v1, p0, Lokhttp3/aq;->v:Z

    .line 437
    iput v2, p0, Lokhttp3/aq;->w:I

    .line 438
    iput v2, p0, Lokhttp3/aq;->x:I

    .line 439
    iput v2, p0, Lokhttp3/aq;->y:I

    .line 440
    return-void
.end method

.method constructor <init>(Lokhttp3/ao;)V
    .locals 2

    .prologue
    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/aq;->e:Ljava/util/List;

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/aq;->f:Ljava/util/List;

    .line 443
    iget-object v0, p1, Lokhttp3/ao;->a:Lokhttp3/ad;

    iput-object v0, p0, Lokhttp3/aq;->a:Lokhttp3/ad;

    .line 444
    iget-object v0, p1, Lokhttp3/ao;->b:Ljava/net/Proxy;

    iput-object v0, p0, Lokhttp3/aq;->b:Ljava/net/Proxy;

    .line 445
    iget-object v0, p1, Lokhttp3/ao;->c:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/aq;->c:Ljava/util/List;

    .line 446
    iget-object v0, p1, Lokhttp3/ao;->d:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/aq;->d:Ljava/util/List;

    .line 447
    iget-object v0, p0, Lokhttp3/aq;->e:Ljava/util/List;

    iget-object v1, p1, Lokhttp3/ao;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 448
    iget-object v0, p0, Lokhttp3/aq;->f:Ljava/util/List;

    iget-object v1, p1, Lokhttp3/ao;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 449
    iget-object v0, p1, Lokhttp3/ao;->g:Ljava/net/ProxySelector;

    iput-object v0, p0, Lokhttp3/aq;->g:Ljava/net/ProxySelector;

    .line 450
    iget-object v0, p1, Lokhttp3/ao;->h:Lokhttp3/ab;

    iput-object v0, p0, Lokhttp3/aq;->h:Lokhttp3/ab;

    .line 451
    iget-object v0, p1, Lokhttp3/ao;->j:Ldfr;

    iput-object v0, p0, Lokhttp3/aq;->j:Ldfr;

    .line 452
    iget-object v0, p1, Lokhttp3/ao;->i:Lokhttp3/d;

    iput-object v0, p0, Lokhttp3/aq;->i:Lokhttp3/d;

    .line 453
    iget-object v0, p1, Lokhttp3/ao;->k:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lokhttp3/aq;->k:Ljavax/net/SocketFactory;

    .line 454
    iget-object v0, p1, Lokhttp3/ao;->l:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lokhttp3/aq;->l:Ljavax/net/ssl/SSLSocketFactory;

    .line 455
    iget-object v0, p1, Lokhttp3/ao;->m:Ldha;

    iput-object v0, p0, Lokhttp3/aq;->m:Ldha;

    .line 456
    iget-object v0, p1, Lokhttp3/ao;->n:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lokhttp3/aq;->n:Ljavax/net/ssl/HostnameVerifier;

    .line 457
    iget-object v0, p1, Lokhttp3/ao;->o:Lokhttp3/p;

    iput-object v0, p0, Lokhttp3/aq;->o:Lokhttp3/p;

    .line 458
    iget-object v0, p1, Lokhttp3/ao;->p:Lokhttp3/b;

    iput-object v0, p0, Lokhttp3/aq;->p:Lokhttp3/b;

    .line 459
    iget-object v0, p1, Lokhttp3/ao;->q:Lokhttp3/b;

    iput-object v0, p0, Lokhttp3/aq;->q:Lokhttp3/b;

    .line 460
    iget-object v0, p1, Lokhttp3/ao;->r:Lokhttp3/v;

    iput-object v0, p0, Lokhttp3/aq;->r:Lokhttp3/v;

    .line 461
    iget-object v0, p1, Lokhttp3/ao;->s:Lokhttp3/ae;

    iput-object v0, p0, Lokhttp3/aq;->s:Lokhttp3/ae;

    .line 462
    iget-boolean v0, p1, Lokhttp3/ao;->t:Z

    iput-boolean v0, p0, Lokhttp3/aq;->t:Z

    .line 463
    iget-boolean v0, p1, Lokhttp3/ao;->u:Z

    iput-boolean v0, p0, Lokhttp3/aq;->u:Z

    .line 464
    iget-boolean v0, p1, Lokhttp3/ao;->v:Z

    iput-boolean v0, p0, Lokhttp3/aq;->v:Z

    .line 465
    iget v0, p1, Lokhttp3/ao;->w:I

    iput v0, p0, Lokhttp3/aq;->w:I

    .line 466
    iget v0, p1, Lokhttp3/ao;->x:I

    iput v0, p0, Lokhttp3/aq;->x:I

    .line 467
    iget v0, p1, Lokhttp3/ao;->y:I

    iput v0, p0, Lokhttp3/aq;->y:I

    .line 468
    return-void
.end method


# virtual methods
.method public a()Lokhttp3/ao;
    .locals 2

    .prologue
    .line 830
    new-instance v0, Lokhttp3/ao;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/ao;-><init>(Lokhttp3/aq;Lokhttp3/ap;)V

    return-object v0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lokhttp3/aq;
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 476
    cmp-long v0, p1, v4

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 479
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Timeout too small."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_3
    long-to-int v0, v0

    iput v0, p0, Lokhttp3/aq;->w:I

    .line 482
    return-object p0
.end method

.method public a(Ljava/net/Proxy;)Lokhttp3/aq;
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lokhttp3/aq;->b:Ljava/net/Proxy;

    .line 520
    return-object p0
.end method

.method public a(Ljava/util/List;)Lokhttp3/aq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;)",
            "Lokhttp3/aq;"
        }
    .end annotation

    .prologue
    .line 782
    invoke-static {p1}, Ldey;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 783
    sget-object v1, Lokhttp3/Protocol;->b:Lokhttp3/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 784
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "protocols doesn\'t contain http/1.1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 786
    :cond_0
    sget-object v1, Lokhttp3/Protocol;->a:Lokhttp3/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 787
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "protocols must not contain http/1.0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 789
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 790
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "protocols must not contain null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 792
    :cond_2
    invoke-static {v0}, Ldey;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aq;->c:Ljava/util/List;

    .line 793
    return-object p0
.end method

.method public a(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/aq;
    .locals 2

    .prologue
    .line 652
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "hostnameVerifier == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    :cond_0
    iput-object p1, p0, Lokhttp3/aq;->n:Ljavax/net/ssl/HostnameVerifier;

    .line 654
    return-object p0
.end method

.method public a(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/aq;
    .locals 2

    .prologue
    .line 638
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "sslSocketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 639
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "trustManager == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    :cond_1
    iput-object p1, p0, Lokhttp3/aq;->l:Ljavax/net/ssl/SSLSocketFactory;

    .line 641
    invoke-static {p2}, Ldha;->a(Ljavax/net/ssl/X509TrustManager;)Ldha;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aq;->m:Ldha;

    .line 642
    return-object p0
.end method

.method public a(Lokhttp3/al;)Lokhttp3/aq;
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lokhttp3/aq;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    return-object p0
.end method

.method public a(Lokhttp3/d;)Lokhttp3/aq;
    .locals 1

    .prologue
    .line 555
    iput-object p1, p0, Lokhttp3/aq;->i:Lokhttp3/d;

    .line 556
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/aq;->j:Ldfr;

    .line 557
    return-object p0
.end method

.method public b(JLjava/util/concurrent/TimeUnit;)Lokhttp3/aq;
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 490
    cmp-long v0, p1, v4

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 493
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Timeout too small."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_3
    long-to-int v0, v0

    iput v0, p0, Lokhttp3/aq;->x:I

    .line 496
    return-object p0
.end method

.method public c(JLjava/util/concurrent/TimeUnit;)Lokhttp3/aq;
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 504
    cmp-long v0, p1, v4

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 507
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Timeout too small."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    :cond_3
    long-to-int v0, v0

    iput v0, p0, Lokhttp3/aq;->y:I

    .line 510
    return-object p0
.end method
