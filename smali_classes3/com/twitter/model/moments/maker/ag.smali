.class Lcom/twitter/model/moments/maker/ag;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjf",
        "<",
        "Ljava/util/List",
        "<",
        "Lcqt;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/twitter/model/moments/maker/af;


# direct methods
.method constructor <init>(Lcom/twitter/model/moments/maker/af;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/twitter/model/moments/maker/ag;->b:Lcom/twitter/model/moments/maker/af;

    iput-object p2, p0, Lcom/twitter/model/moments/maker/ag;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcqt;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/twitter/util/j;->b(Z)Z

    .line 50
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqt;

    iget-wide v0, v0, Lcqt;->j:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/twitter/model/moments/maker/ag;->a:Ljava/util/Map;

    new-instance v2, Lcqx;

    invoke-direct {v2, p1}, Lcqx;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void

    :cond_0
    move v0, v1

    .line 49
    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/twitter/model/moments/maker/ag;->a(Ljava/util/List;)V

    return-void
.end method
