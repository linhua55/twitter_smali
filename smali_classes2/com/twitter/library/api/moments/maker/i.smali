.class public Lcom/twitter/library/api/moments/maker/i;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/database/lru/am;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/database/lru/am",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/maker/y;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/database/lru/am;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/database/lru/am",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/maker/y;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/twitter/library/api/moments/maker/i;->a:Lcom/twitter/database/lru/am;

    .line 29
    return-void
.end method


# virtual methods
.method public a(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/moments/maker/w;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {}, Lcom/twitter/util/h;->c()V

    .line 35
    iget-object v0, p0, Lcom/twitter/library/api/moments/maker/i;->a:Lcom/twitter/database/lru/am;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twitter/database/lru/am;->a(Ljava/lang/Object;)Lrx/w;

    move-result-object v0

    invoke-virtual {v0}, Lrx/w;->c()Ldlt;

    move-result-object v0

    invoke-virtual {v0}, Ldlt;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/maker/y;

    iget-object v0, v0, Lcom/twitter/model/moments/maker/y;->c:Ljava/util/List;

    return-object v0
.end method

.method public a(JLjava/lang/Integer;)V
    .locals 3

    .prologue
    .line 46
    invoke-static {}, Lcom/twitter/util/h;->c()V

    .line 47
    iget-object v0, p0, Lcom/twitter/library/api/moments/maker/i;->a:Lcom/twitter/database/lru/am;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/twitter/library/api/moments/maker/j;

    invoke-direct {v2, p0, p3}, Lcom/twitter/library/api/moments/maker/j;-><init>(Lcom/twitter/library/api/moments/maker/i;Ljava/lang/Integer;)V

    invoke-interface {v0, v1, v2}, Lcom/twitter/database/lru/am;->a(Ljava/lang/Object;Ldjj;)Lrx/w;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lrx/w;->c()Ldlt;

    move-result-object v0

    invoke-virtual {v0}, Ldlt;->a()Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public b(J)V
    .locals 3

    .prologue
    .line 63
    invoke-static {}, Lcom/twitter/util/h;->c()V

    .line 64
    iget-object v0, p0, Lcom/twitter/library/api/moments/maker/i;->a:Lcom/twitter/database/lru/am;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/twitter/library/api/moments/maker/k;

    invoke-direct {v2, p0}, Lcom/twitter/library/api/moments/maker/k;-><init>(Lcom/twitter/library/api/moments/maker/i;)V

    invoke-interface {v0, v1, v2}, Lcom/twitter/database/lru/am;->a(Ljava/lang/Object;Ldjj;)Lrx/w;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lrx/w;->c()Ldlt;

    move-result-object v0

    invoke-virtual {v0}, Ldlt;->a()Ljava/lang/Object;

    .line 75
    return-void
.end method
