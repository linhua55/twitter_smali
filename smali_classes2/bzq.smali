.class public Lbzq;
.super Lcom/twitter/library/service/b;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/service/b",
        "<",
        "Lbzo;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/Long;)V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lbzq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/service/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 33
    iput-object p3, p0, Lbzq;->a:Ljava/lang/Long;

    .line 34
    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/library/service/d;
    .locals 4

    .prologue
    .line 39
    invoke-virtual {p0}, Lbzq;->K()Lcom/twitter/library/service/e;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "commerce"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "purchases"

    aput-object v3, v1, v2

    .line 40
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->b([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "page_size"

    const-wide/16 v2, 0x64

    .line 41
    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;J)Lcom/twitter/library/service/e;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lbzq;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 44
    const-string/jumbo v1, "last_item_id"

    iget-object v2, p0, Lbzq;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;J)Lcom/twitter/library/service/e;

    .line 46
    :cond_0
    iget-object v1, p0, Lbzq;->p:Landroid/content/Context;

    invoke-static {v0, v1}, Lbzl;->a(Lcom/twitter/library/service/e;Landroid/content/Context;)V

    .line 47
    invoke-virtual {v0}, Lcom/twitter/library/service/e;->a()Lcom/twitter/library/service/d;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lbzo;)V
    .locals 4

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/twitter/internal/network/HttpOperation;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p3}, Lbzo;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/commerce/model/v;

    .line 60
    invoke-virtual {p0}, Lbzq;->T()Lcom/twitter/library/provider/b;

    move-result-object v1

    .line 61
    invoke-virtual {p0}, Lbzq;->S()Lcom/twitter/library/provider/dm;

    move-result-object v2

    .line 62
    invoke-virtual {v2, v0, v1}, Lcom/twitter/library/provider/dm;->a(Lcom/twitter/library/commerce/model/v;Lcom/twitter/library/provider/b;)I

    .line 63
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v2, 0x0

    sget-object v3, Lcom/twitter/library/provider/dd;->a:Landroid/net/Uri;

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Lcom/twitter/library/provider/b;->a([Landroid/net/Uri;)V

    .line 64
    invoke-virtual {v1}, Lcom/twitter/library/provider/b;->a()V

    .line 65
    iget-object v0, p2, Lcom/twitter/library/service/aa;->c:Landroid/os/Bundle;

    const-string/jumbo v1, "order_history_list"

    invoke-virtual {p3}, Lbzo;->b()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/twitter/library/commerce/model/v;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/os/Bundle;

    .line 70
    :goto_0
    invoke-virtual {p2, p1}, Lcom/twitter/library/service/aa;->a(Lcom/twitter/internal/network/HttpOperation;)V

    .line 71
    return-void

    .line 68
    :cond_0
    invoke-static {p2, p3}, Lbzl;->a(Lcom/twitter/library/service/aa;Lcom/twitter/library/api/t;)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/service/c;)V
    .locals 0

    .prologue
    .line 23
    check-cast p3, Lbzo;

    invoke-virtual {p0, p1, p2, p3}, Lbzq;->a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lbzo;)V

    return-void
.end method

.method protected b()Lbzo;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lbzo;

    invoke-direct {v0}, Lbzo;-><init>()V

    return-object v0
.end method

.method protected synthetic f()Lcom/twitter/library/service/c;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lbzq;->b()Lbzo;

    move-result-object v0

    return-object v0
.end method
