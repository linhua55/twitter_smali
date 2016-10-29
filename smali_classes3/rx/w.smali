.class public Lrx/w;
.super Ljava/lang/Object;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static b:Ldlq;


# instance fields
.field final a:Lrx/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/p",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Ldlm;->a()Ldlm;

    move-result-object v0

    invoke-virtual {v0}, Ldlm;->d()Ldlq;

    move-result-object v0

    sput-object v0, Lrx/w;->b:Ldlq;

    return-void
.end method

.method protected constructor <init>(Lrx/am;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/am",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lrx/x;

    invoke-direct {v0, p0, p1}, Lrx/x;-><init>(Lrx/w;Lrx/am;)V

    iput-object v0, p0, Lrx/w;->a:Lrx/p;

    .line 98
    return-void
.end method

.method private constructor <init>(Lrx/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/p",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lrx/w;->a:Lrx/p;

    .line 102
    return-void
.end method

.method public static a(Ljava/lang/Object;)Lrx/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/w",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 663
    invoke-static {p0}, Lrx/internal/util/ad;->b(Ljava/lang/Object;)Lrx/internal/util/ad;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Callable;)Lrx/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<+TT;>;)",
            "Lrx/w",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 625
    new-instance v0, Lrx/ai;

    invoke-direct {v0, p0}, Lrx/ai;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lrx/w;->a(Lrx/am;)Lrx/w;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/am;)Lrx/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/am",
            "<TT;>;)",
            "Lrx/w",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Lrx/w;

    sget-object v1, Lrx/w;->b:Ldlq;

    invoke-virtual {v1, p0}, Ldlq;->a(Lrx/am;)Lrx/am;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/w;-><init>(Lrx/am;)V

    return-object v0
.end method

.method public static a(Lrx/w;)Lrx/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/w",
            "<+",
            "Lrx/w",
            "<+TT;>;>;)",
            "Lrx/w",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 686
    instance-of v0, p0, Lrx/internal/util/ad;

    if-eqz v0, :cond_0

    .line 687
    check-cast p0, Lrx/internal/util/ad;

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->b()Ldjj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/util/ad;->d(Ldjj;)Lrx/w;

    move-result-object v0

    .line 689
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/aj;

    invoke-direct {v0, p0}, Lrx/aj;-><init>(Lrx/w;)V

    invoke-static {v0}, Lrx/w;->a(Lrx/am;)Lrx/w;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lrx/w;Lrx/w;Ldjk;)Lrx/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/w",
            "<+TT1;>;",
            "Lrx/w",
            "<+TT2;>;",
            "Ldjk",
            "<-TT1;-TT2;+TR;>;)",
            "Lrx/w",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 985
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/w;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    new-instance v1, Lrx/al;

    invoke-direct {v1, p2}, Lrx/al;-><init>(Ldjk;)V

    invoke-static {v0, v1}, Lrx/internal/operators/ec;->a([Lrx/w;Ldjl;)Lrx/w;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lrx/w;)Lrx/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/w",
            "<TT;>;)",
            "Lrx/o",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lrx/w;->a:Lrx/p;

    invoke-static {v0}, Lrx/o;->a(Lrx/p;)Lrx/o;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lrx/ap;
    .locals 1

    .prologue
    .line 1585
    new-instance v0, Lrx/z;

    invoke-direct {v0, p0}, Lrx/z;-><init>(Lrx/w;)V

    invoke-virtual {p0, v0}, Lrx/w;->b(Lrx/ao;)Lrx/ap;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ldjf;)Lrx/ap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldjf",
            "<-TT;>;)",
            "Lrx/ap;"
        }
    .end annotation

    .prologue
    .line 1622
    if-nez p1, :cond_0

    .line 1623
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "onSuccess can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1626
    :cond_0
    new-instance v0, Lrx/aa;

    invoke-direct {v0, p0, p1}, Lrx/aa;-><init>(Lrx/w;Ldjf;)V

    invoke-virtual {p0, v0}, Lrx/w;->b(Lrx/ao;)Lrx/ap;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/an;)Lrx/ap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/an",
            "<-TT;>;)",
            "Lrx/ap;"
        }
    .end annotation

    .prologue
    .line 1880
    new-instance v0, Lrx/ac;

    invoke-direct {v0, p0, p1}, Lrx/ac;-><init>(Lrx/w;Lrx/an;)V

    .line 1898
    invoke-virtual {p1, v0}, Lrx/an;->a(Lrx/ap;)V

    .line 1899
    invoke-virtual {p0, v0}, Lrx/w;->b(Lrx/ao;)Lrx/ap;

    .line 1900
    return-object v0
.end method

.method public final a(Lrx/ao;)Lrx/ap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-TT;>;)",
            "Lrx/ap;"
        }
    .end annotation

    .prologue
    .line 1711
    :try_start_0
    invoke-virtual {p1}, Lrx/ao;->c()V

    .line 1712
    sget-object v0, Lrx/w;->b:Ldlq;

    iget-object v1, p0, Lrx/w;->a:Lrx/p;

    invoke-virtual {v0, p0, v1}, Ldlq;->a(Lrx/w;Lrx/p;)Lrx/p;

    move-result-object v0

    invoke-interface {v0, p1}, Lrx/p;->call(Ljava/lang/Object;)V

    .line 1713
    sget-object v0, Lrx/w;->b:Ldlq;

    invoke-virtual {v0, p1}, Ldlq;->a(Lrx/ap;)Lrx/ap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1730
    :goto_0
    return-object v0

    .line 1714
    :catch_0
    move-exception v0

    .line 1716
    invoke-static {v0}, Lrx/exceptions/e;->a(Ljava/lang/Throwable;)V

    .line 1719
    :try_start_1
    sget-object v1, Lrx/w;->b:Ldlq;

    invoke-virtual {v1, v0}, Ldlq;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/ao;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1730
    invoke-static {}, Ldmc;->b()Lrx/ap;

    move-result-object v0

    goto :goto_0

    .line 1720
    :catch_1
    move-exception v1

    .line 1721
    invoke-static {v1}, Lrx/exceptions/e;->a(Ljava/lang/Throwable;)V

    .line 1724
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error occurred attempting to subscribe ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "] and then again while trying to pass to onError."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1726
    sget-object v0, Lrx/w;->b:Ldlq;

    invoke-virtual {v0, v2}, Ldlq;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1728
    throw v2
.end method

.method public final a(Lrx/r;)Lrx/ap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/r",
            "<-TT;>;)",
            "Lrx/ap;"
        }
    .end annotation

    .prologue
    .line 1742
    if-nez p1, :cond_0

    .line 1743
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "observer is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1745
    :cond_0
    new-instance v0, Lrx/ab;

    invoke-direct {v0, p0, p1}, Lrx/ab;-><init>(Lrx/w;Lrx/r;)V

    invoke-virtual {p0, v0}, Lrx/w;->a(Lrx/an;)Lrx/ap;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;Lrx/t;)Lrx/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/t;",
            ")",
            "Lrx/w",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2477
    new-instance v0, Lrx/internal/operators/am;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/am;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/t;)V

    invoke-virtual {p0, v0}, Lrx/w;->a(Lrx/q;)Lrx/w;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ldje;)Lrx/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldje;",
            ")",
            "Lrx/w",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2453
    new-instance v0, Lrx/internal/operators/az;

    invoke-direct {v0, p1}, Lrx/internal/operators/az;-><init>(Ldje;)V

    invoke-virtual {p0, v0}, Lrx/w;->a(Lrx/q;)Lrx/w;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ldjj;)Lrx/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ldjj",
            "<-TT;+",
            "Lrx/w",
            "<+TR;>;>;)",
            "Lrx/w",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1378
    instance-of v0, p0, Lrx/internal/util/ad;

    if-eqz v0, :cond_0

    .line 1379
    check-cast p0, Lrx/internal/util/ad;

    invoke-virtual {p0, p1}, Lrx/internal/util/ad;->d(Ldjj;)Lrx/w;

    move-result-object v0

    .line 1381
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lrx/w;->c(Ldjj;)Lrx/w;

    move-result-object v0

    invoke-static {v0}, Lrx/w;->a(Lrx/w;)Lrx/w;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lrx/q;)Lrx/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/q",
            "<+TR;-TT;>;)",
            "Lrx/w",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 169
    new-instance v0, Lrx/w;

    new-instance v1, Lrx/ag;

    invoke-direct {v1, p0, p1}, Lrx/ag;-><init>(Lrx/w;Lrx/q;)V

    invoke-direct {v0, v1}, Lrx/w;-><init>(Lrx/p;)V

    return-object v0
.end method

.method public final a(Lrx/t;)Lrx/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/t;",
            ")",
            "Lrx/w",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1465
    instance-of v0, p0, Lrx/internal/util/ad;

    if-eqz v0, :cond_0

    .line 1466
    check-cast p0, Lrx/internal/util/ad;

    invoke-virtual {p0, p1}, Lrx/internal/util/ad;->c(Lrx/t;)Lrx/w;

    move-result-object v0

    .line 1470
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/internal/operators/bt;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/bt;-><init>(Lrx/t;Z)V

    invoke-virtual {p0, v0}, Lrx/w;->a(Lrx/q;)Lrx/w;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lrx/w;Ldjk;)Lrx/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/w",
            "<+TT2;>;",
            "Ldjk",
            "<-TT;-TT2;+TR;>;)",
            "Lrx/w",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 2360
    invoke-static {p0, p1, p2}, Lrx/w;->a(Lrx/w;Lrx/w;Ldjk;)Lrx/w;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/ao;)Lrx/ap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-TT;>;)",
            "Lrx/ap;"
        }
    .end annotation

    .prologue
    .line 1795
    if-nez p1, :cond_0

    .line 1796
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "observer can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1798
    :cond_0
    iget-object v0, p0, Lrx/w;->a:Lrx/p;

    if-nez v0, :cond_1

    .line 1799
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onSubscribe function can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1807
    :cond_1
    invoke-virtual {p1}, Lrx/ao;->c()V

    .line 1814
    instance-of v0, p1, Ldlb;

    if-nez v0, :cond_2

    .line 1816
    new-instance v0, Ldlb;

    invoke-direct {v0, p1}, Ldlb;-><init>(Lrx/ao;)V

    move-object p1, v0

    .line 1822
    :cond_2
    :try_start_0
    sget-object v0, Lrx/w;->b:Ldlq;

    iget-object v1, p0, Lrx/w;->a:Lrx/p;

    invoke-virtual {v0, p0, v1}, Ldlq;->a(Lrx/w;Lrx/p;)Lrx/p;

    move-result-object v0

    invoke-interface {v0, p1}, Lrx/p;->call(Ljava/lang/Object;)V

    .line 1823
    sget-object v0, Lrx/w;->b:Ldlq;

    invoke-virtual {v0, p1}, Ldlq;->a(Lrx/ap;)Lrx/ap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1840
    :goto_0
    return-object v0

    .line 1824
    :catch_0
    move-exception v0

    .line 1826
    invoke-static {v0}, Lrx/exceptions/e;->a(Ljava/lang/Throwable;)V

    .line 1829
    :try_start_1
    sget-object v1, Lrx/w;->b:Ldlq;

    invoke-virtual {v1, v0}, Ldlq;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/ao;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1840
    invoke-static {}, Ldmc;->a()Lrx/ap;

    move-result-object v0

    goto :goto_0

    .line 1830
    :catch_1
    move-exception v1

    .line 1831
    invoke-static {v1}, Lrx/exceptions/e;->a(Ljava/lang/Throwable;)V

    .line 1834
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error occurred attempting to subscribe ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "] and then again while trying to pass to onError."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1836
    sget-object v0, Lrx/w;->b:Ldlq;

    invoke-virtual {v0, v2}, Ldlq;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1838
    throw v2
.end method

.method public final b()Lrx/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/o",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2192
    invoke-static {p0}, Lrx/w;->b(Lrx/w;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ldjj;)Lrx/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ldjj",
            "<-TT;+",
            "Lrx/o",
            "<+TR;>;>;)",
            "Lrx/o",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1402
    invoke-virtual {p0, p1}, Lrx/w;->c(Ldjj;)Lrx/w;

    move-result-object v0

    invoke-static {v0}, Lrx/w;->b(Lrx/w;)Lrx/o;

    move-result-object v0

    invoke-static {v0}, Lrx/o;->b(Lrx/o;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ldjf;)Lrx/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldjf",
            "<-TT;>;)",
            "Lrx/w",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2416
    new-instance v0, Lrx/ah;

    invoke-direct {v0, p0, p1}, Lrx/ah;-><init>(Lrx/w;Ldjf;)V

    .line 2431
    new-instance v1, Lrx/internal/operators/ax;

    invoke-direct {v1, v0}, Lrx/internal/operators/ax;-><init>(Lrx/r;)V

    invoke-virtual {p0, v1}, Lrx/w;->a(Lrx/q;)Lrx/w;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lrx/t;)Lrx/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/t;",
            ")",
            "Lrx/w",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1920
    instance-of v0, p0, Lrx/internal/util/ad;

    if-eqz v0, :cond_0

    .line 1921
    check-cast p0, Lrx/internal/util/ad;

    invoke-virtual {p0, p1}, Lrx/internal/util/ad;->c(Lrx/t;)Lrx/w;

    move-result-object v0

    .line 1923
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/ad;

    invoke-direct {v0, p0, p1}, Lrx/ad;-><init>(Lrx/w;Lrx/t;)V

    invoke-static {v0}, Lrx/w;->a(Lrx/am;)Lrx/w;

    move-result-object v0

    goto :goto_0
.end method

.method public final c()Ldlt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldlt",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2332
    invoke-static {p0}, Ldlt;->a(Lrx/w;)Ldlt;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ldjj;)Lrx/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ldjj",
            "<-TT;+TR;>;)",
            "Lrx/w",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1422
    new-instance v0, Lrx/internal/operators/bn;

    invoke-direct {v0, p1}, Lrx/internal/operators/bn;-><init>(Ldjj;)V

    invoke-virtual {p0, v0}, Lrx/w;->a(Lrx/q;)Lrx/w;

    move-result-object v0

    return-object v0
.end method
