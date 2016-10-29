.class public Lbzn;
.super Lcom/twitter/library/service/b;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/service/b",
        "<",
        "Lbzm;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lbzn;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/service/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 27
    iput-object p3, p0, Lbzn;->a:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/library/service/d;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    invoke-virtual {p0}, Lbzn;->K()Lcom/twitter/library/service/e;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "commerce"

    aput-object v2, v1, v3

    const-string/jumbo v2, "purchases"

    aput-object v2, v1, v4

    .line 34
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->b([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lbzn;->a:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 35
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->b([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lbzn;->p:Landroid/content/Context;

    invoke-static {v0, v1}, Lbzl;->a(Lcom/twitter/library/service/e;Landroid/content/Context;)V

    .line 37
    invoke-virtual {v0}, Lcom/twitter/library/service/e;->a()Lcom/twitter/library/service/d;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lbzm;)V
    .locals 4

    .prologue
    .line 48
    invoke-virtual {p1}, Lcom/twitter/internal/network/HttpOperation;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p3}, Lbzm;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/commerce/model/r;

    .line 50
    iget-object v1, p2, Lcom/twitter/library/service/aa;->c:Landroid/os/Bundle;

    const-string/jumbo v2, "order_history_item"

    sget-object v3, Lcom/twitter/library/commerce/model/r;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v1, v2, v0, v3}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/os/Bundle;

    .line 55
    :goto_0
    invoke-virtual {p2, p1}, Lcom/twitter/library/service/aa;->a(Lcom/twitter/internal/network/HttpOperation;)V

    .line 56
    return-void

    .line 53
    :cond_0
    invoke-static {p2, p3}, Lbzl;->a(Lcom/twitter/library/service/aa;Lcom/twitter/library/api/t;)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/service/c;)V
    .locals 0

    .prologue
    .line 19
    check-cast p3, Lbzm;

    invoke-virtual {p0, p1, p2, p3}, Lbzn;->a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lbzm;)V

    return-void
.end method

.method protected b()Lbzm;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lbzm;

    invoke-direct {v0}, Lbzm;-><init>()V

    return-object v0
.end method

.method protected synthetic f()Lcom/twitter/library/service/c;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lbzn;->b()Lbzm;

    move-result-object v0

    return-object v0
.end method
