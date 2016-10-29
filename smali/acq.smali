.class Lacq;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjj",
        "<",
        "Lcom/twitter/util/collection/ar",
        "<",
        "Ljava/lang/Long;",
        "Lcom/twitter/model/moments/d;",
        ">;",
        "Lrx/o",
        "<",
        "Lcom/twitter/util/collection/ar",
        "<",
        "Lcom/twitter/model/moments/viewmodels/d;",
        "Lcom/twitter/model/moments/d;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lacp;


# direct methods
.method constructor <init>(Lacp;J)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lacq;->b:Lacp;

    iput-wide p2, p0, Lacq;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    check-cast p1, Lcom/twitter/util/collection/ar;

    invoke-virtual {p0, p1}, Lacq;->a(Lcom/twitter/util/collection/ar;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/util/collection/ar;)Lrx/o;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/collection/ar",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/d;",
            ">;)",
            "Lrx/o",
            "<",
            "Lcom/twitter/util/collection/ar",
            "<",
            "Lcom/twitter/model/moments/viewmodels/d;",
            "Lcom/twitter/model/moments/d;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p1}, Lcom/twitter/util/collection/ar;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lacq;->b:Lacp;

    invoke-static {v0}, Lacp;->a(Lacp;)Lazt;

    move-result-object v0

    iget-wide v2, p0, Lacq;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lazt;->a_(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    .line 63
    :cond_0
    invoke-virtual {p1}, Lcom/twitter/util/collection/ar;->b()Ljava/lang/Object;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/twitter/util/collection/ar;->b(Ljava/lang/Object;)Lcom/twitter/util/collection/ar;

    move-result-object v0

    invoke-static {v0}, Lrx/o;->b(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    goto :goto_0
.end method
