.class Ladc;
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
        "Ljava/lang/Long;",
        "Lcom/twitter/util/collection/ab",
        "<",
        "Lcom/twitter/model/core/TwitterUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ladb;


# direct methods
.method constructor <init>(Ladb;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Ladc;->a:Ladb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)Lcom/twitter/util/collection/ab;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Ladc;->a:Ladb;

    invoke-static {v0}, Ladb;->a(Ladb;)Lcom/twitter/library/provider/dm;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/provider/dm;->a(J)Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/ab;->b(Ljava/lang/Object;)Lcom/twitter/util/collection/ab;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Ladc;->a(Ljava/lang/Long;)Lcom/twitter/util/collection/ab;

    move-result-object v0

    return-object v0
.end method
