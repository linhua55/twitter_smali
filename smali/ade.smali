.class public Lade;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Laer;


# direct methods
.method public constructor <init>(Laer;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lade;->a:Laer;

    .line 42
    return-void
.end method

.method private a(Lcom/twitter/android/moments/viewmodels/b;Ljava/util/List;)Ldjj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/moments/viewmodels/b;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/moments/maker/w;",
            ">;)",
            "Ldjj",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/viewmodels/m;",
            ">;",
            "Lcom/twitter/model/moments/viewmodels/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Ladh;

    invoke-direct {v0, p0, p2, p1}, Ladh;-><init>(Lade;Ljava/util/List;Lcom/twitter/android/moments/viewmodels/b;)V

    return-object v0
.end method

.method private a(Lcom/twitter/model/moments/viewmodels/a;Ljava/util/List;)Lrx/w;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/viewmodels/a;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/moments/maker/w;",
            ">;)",
            "Lrx/w",
            "<",
            "Lcom/twitter/model/moments/viewmodels/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v2, Lcom/twitter/android/moments/viewmodels/b;

    invoke-direct {v2, p1}, Lcom/twitter/android/moments/viewmodels/b;-><init>(Lcom/twitter/model/moments/viewmodels/a;)V

    .line 94
    invoke-static {}, Lcom/twitter/util/collection/MutableSet;->a()Ljava/util/Set;

    move-result-object v3

    .line 95
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/w;

    .line 96
    instance-of v1, v0, Lcom/twitter/model/moments/maker/a;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 97
    check-cast v1, Lcom/twitter/model/moments/maker/a;

    iget-wide v6, v1, Lcom/twitter/model/moments/maker/a;->c:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_1
    instance-of v1, v0, Lcom/twitter/model/moments/maker/MomentEditOperation;

    if-eqz v1, :cond_0

    .line 100
    check-cast v0, Lcom/twitter/model/moments/maker/MomentEditOperation;

    .line 101
    iget-object v1, v0, Lcom/twitter/model/moments/maker/MomentEditOperation;->d:Lcom/twitter/model/moments/maker/n;

    if-eqz v1, :cond_0

    .line 102
    iget-object v0, v0, Lcom/twitter/model/moments/maker/MomentEditOperation;->d:Lcom/twitter/model/moments/maker/n;

    iget-object v0, v0, Lcom/twitter/model/moments/maker/n;->b:Lcom/twitter/model/moments/ak;

    iget-object v0, v0, Lcom/twitter/model/moments/ak;->e:Ljava/lang/Long;

    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_2
    iget-object v0, p0, Lade;->a:Laer;

    invoke-interface {v0, v3}, Laer;->a(Ljava/util/Collection;)Lrx/w;

    move-result-object v0

    .line 108
    invoke-direct {p0, v2, p2}, Lade;->a(Lcom/twitter/android/moments/viewmodels/b;Ljava/util/List;)Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/w;->c(Ldjj;)Lrx/w;

    move-result-object v0

    .line 107
    return-object v0
.end method


# virtual methods
.method public a()Ldjk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldjk",
            "<",
            "Lcom/twitter/util/collection/ar",
            "<",
            "Lcom/twitter/model/moments/viewmodels/d;",
            "Lcom/twitter/model/moments/d;",
            ">;",
            "Lcom/twitter/model/moments/maker/y;",
            "Lrx/o",
            "<",
            "Lcom/twitter/util/collection/ar",
            "<",
            "Lcom/twitter/model/moments/viewmodels/d;",
            "Lcom/twitter/model/moments/d;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Ladg;

    invoke-direct {v0, p0}, Ladg;-><init>(Lade;)V

    return-object v0
.end method

.method public a(Lcom/twitter/util/collection/ar;Lcom/twitter/model/moments/maker/y;)Lrx/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/collection/ar",
            "<",
            "Lcom/twitter/model/moments/viewmodels/d;",
            "Lcom/twitter/model/moments/d;",
            ">;",
            "Lcom/twitter/model/moments/maker/y;",
            ")",
            "Lrx/w",
            "<",
            "Lcom/twitter/util/collection/ar",
            "<",
            "Lcom/twitter/model/moments/viewmodels/d;",
            "Lcom/twitter/model/moments/d;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p1}, Lcom/twitter/util/collection/ar;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-static {p1}, Lrx/w;->a(Ljava/lang/Object;)Lrx/w;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 52
    :cond_0
    invoke-virtual {p1}, Lcom/twitter/util/collection/ar;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/d;

    .line 53
    if-eqz p2, :cond_1

    iget-object v1, p2, Lcom/twitter/model/moments/maker/y;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    :cond_1
    invoke-static {v0}, Lcom/twitter/util/collection/ar;->a(Ljava/lang/Object;)Lcom/twitter/util/collection/ar;

    move-result-object v0

    invoke-static {v0}, Lrx/w;->a(Ljava/lang/Object;)Lrx/w;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_2
    iget-object v0, v0, Lcom/twitter/model/moments/viewmodels/d;->a:Lcom/twitter/model/moments/viewmodels/a;

    .line 58
    iget-object v1, p2, Lcom/twitter/model/moments/maker/y;->c:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lade;->a(Lcom/twitter/model/moments/viewmodels/a;Ljava/util/List;)Lrx/w;

    move-result-object v0

    new-instance v1, Ladf;

    invoke-direct {v1, p0}, Ladf;-><init>(Lade;)V

    .line 59
    invoke-virtual {v0, v1}, Lrx/w;->c(Ldjj;)Lrx/w;

    move-result-object v0

    goto :goto_0
.end method
