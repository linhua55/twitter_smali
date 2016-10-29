.class public Lcom/twitter/android/moments/data/ah;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/android/moments/data/ak;

.field private final b:Lcom/twitter/library/client/bk;


# direct methods
.method public constructor <init>(Lcom/twitter/library/client/bk;Lcom/twitter/android/moments/data/ak;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/twitter/android/moments/data/ah;->a:Lcom/twitter/android/moments/data/ak;

    .line 26
    iput-object p1, p0, Lcom/twitter/android/moments/data/ah;->b:Lcom/twitter/library/client/bk;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 34
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v2

    .line 35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/MomentPage;

    .line 36
    instance-of v4, v0, Lcom/twitter/model/moments/viewmodels/y;

    if-eqz v4, :cond_0

    .line 37
    check-cast v0, Lcom/twitter/model/moments/viewmodels/y;

    .line 38
    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/y;->a()Z

    move-result v4

    if-nez v4, :cond_0

    .line 39
    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/y;->s()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 40
    invoke-virtual {v2, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v2}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 45
    iget-object v2, p0, Lcom/twitter/android/moments/data/ah;->a:Lcom/twitter/android/moments/data/ak;

    new-instance v3, Lcom/twitter/android/moments/data/ai;

    invoke-direct {v3, p0, v0}, Lcom/twitter/android/moments/data/ai;-><init>(Lcom/twitter/android/moments/data/ah;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/twitter/android/moments/data/ak;->a(Lcom/twitter/util/y;)V

    .line 66
    iget-object v2, p0, Lcom/twitter/android/moments/data/ah;->a:Lcom/twitter/android/moments/data/ak;

    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/twitter/android/moments/data/ah;->b:Lcom/twitter/library/client/bk;

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    new-instance v3, Lcom/twitter/android/moments/data/aj;

    invoke-direct {v3, p0, p1}, Lcom/twitter/android/moments/data/aj;-><init>(Lcom/twitter/android/moments/data/ah;Ljava/util/List;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/twitter/android/moments/data/ak;->a(Ljava/util/List;Lcom/twitter/library/client/Session;Lcom/twitter/android/moments/data/al;)V

    .line 81
    return-void
.end method
