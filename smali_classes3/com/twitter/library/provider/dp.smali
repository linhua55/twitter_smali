.class Lcom/twitter/library/provider/dp;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldau;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldau",
        "<",
        "Lcom/twitter/model/core/cs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/twitter/library/provider/dm;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/dm;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 2504
    iput-object p1, p0, Lcom/twitter/library/provider/dp;->b:Lcom/twitter/library/provider/dm;

    iput-object p2, p0, Lcom/twitter/library/provider/dp;->a:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/cs;)Z
    .locals 4

    .prologue
    .line 2507
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/twitter/library/provider/dp;->a:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/twitter/model/core/cs;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 2504
    check-cast p1, Lcom/twitter/model/core/cs;

    invoke-virtual {p0, p1}, Lcom/twitter/library/provider/dp;->a(Lcom/twitter/model/core/cs;)Z

    move-result v0

    return v0
.end method
