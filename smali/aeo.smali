.class public Laeo;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/di/g;
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Lazt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lazt",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Lazt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lazt",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Lazt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lazt",
            "<",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/Tweet;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Lazt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lazt",
            "<",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/Tweet;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lazt;Lazt;Lazt;Lazt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lazt",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;>;",
            "Lazt",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;>;",
            "Lazt",
            "<",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/Tweet;",
            ">;>;",
            "Lazt",
            "<",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/Tweet;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Laeo;->a:Lazt;

    .line 44
    iput-object p2, p0, Laeo;->b:Lazt;

    .line 45
    iput-object p3, p0, Laeo;->c:Lazt;

    .line 46
    iput-object p4, p0, Laeo;->d:Lazt;

    .line 47
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/library/client/Session;)Laeo;
    .locals 6

    .prologue
    .line 51
    new-instance v0, Lapi;

    new-instance v1, Lazn;

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lazn;-><init>(Landroid/content/ContentResolver;)V

    invoke-direct {v0, v1, p1}, Lapi;-><init>(Lazt;Lcom/twitter/library/client/Session;)V

    .line 53
    new-instance v1, Lacw;

    new-instance v2, Lacy;

    invoke-direct {v2, p0, p1}, Lacy;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    invoke-direct {v1, v2, v0}, Lacw;-><init>(Lacy;Lapi;)V

    .line 55
    new-instance v2, Laeo;

    new-instance v3, Lazm;

    new-instance v4, Lacu;

    invoke-direct {v4, v1}, Lacu;-><init>(Lazt;)V

    invoke-direct {v3, v4}, Lazm;-><init>(Lazt;)V

    new-instance v4, Lazm;

    new-instance v5, Lacu;

    invoke-direct {v5, v0}, Lacu;-><init>(Lazt;)V

    invoke-direct {v4, v5}, Lazm;-><init>(Lazt;)V

    invoke-direct {v2, v3, v4, v1, v0}, Laeo;-><init>(Lazt;Lazt;Lazt;Lazt;)V

    return-object v2
.end method

.method static synthetic a(Laeo;)Lazt;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Laeo;->c:Lazt;

    return-object v0
.end method


# virtual methods
.method public a(J)Lrx/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/o",
            "<",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Laeo;->b:Lazt;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lazt;->a_(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lrx/o;->i()Lrx/o;

    move-result-object v0

    iget-object v1, p0, Laeo;->a:Lazt;

    .line 69
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Lazt;->a_(Ljava/lang/Object;)Lrx/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->e(Lrx/o;)Lrx/o;

    move-result-object v0

    new-instance v1, Laep;

    invoke-direct {v1, p0}, Laep;-><init>(Laeo;)V

    .line 70
    invoke-virtual {v0, v1}, Lrx/o;->k(Ldjj;)Lrx/o;

    move-result-object v0

    .line 67
    return-object v0
.end method

.method public a(Ljava/lang/Iterable;)Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lrx/o",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/Tweet;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Laeo;->d:Lazt;

    invoke-interface {v0, p1}, Lazt;->a_(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    invoke-virtual {v0}, Lrx/o;->i()Lrx/o;

    move-result-object v0

    new-instance v1, Laeq;

    invoke-direct {v1, p0, p1}, Laeq;-><init>(Laeo;Ljava/lang/Iterable;)V

    invoke-virtual {v0, v1}, Lrx/o;->f(Ldjj;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/app/common/di/InjectionScope;)V
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/twitter/app/common/di/InjectionScope;->c:Lcom/twitter/app/common/di/InjectionScope;

    if-ne p1, v0, :cond_0

    .line 104
    invoke-static {p0}, Ltv/periscope/android/util/g;->a(Ljava/io/Closeable;)V

    .line 106
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Laeo;->a:Lazt;

    invoke-interface {v0}, Lazt;->close()V

    .line 98
    iget-object v0, p0, Laeo;->b:Lazt;

    invoke-interface {v0}, Lazt;->close()V

    .line 99
    return-void
.end method
