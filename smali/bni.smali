.class public Lbni;
.super Lbky;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbky",
        "<",
        "Lcom/twitter/library/api/t",
        "<",
        "Lcot;",
        "Lcom/twitter/model/core/cj;",
        ">;>;"
    }
.end annotation


# instance fields
.field protected a:Lcot;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lbni;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lbky;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 32
    iput-object p3, p0, Lbni;->b:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/internal/network/HttpOperation;",
            "Lcom/twitter/library/service/aa;",
            "Lcom/twitter/library/api/t",
            "<",
            "Lcot;",
            "Lcom/twitter/model/core/cj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/twitter/internal/network/HttpOperation;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p3}, Lcom/twitter/library/api/t;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcot;

    iput-object v0, p0, Lbni;->a:Lcot;

    .line 67
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/service/c;)V
    .locals 0

    .prologue
    .line 22
    check-cast p3, Lcom/twitter/library/api/t;

    invoke-virtual {p0, p1, p2, p3}, Lbni;->a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/t;)V

    return-void
.end method

.method protected b()Lcom/twitter/library/service/e;
    .locals 4

    .prologue
    .line 48
    invoke-virtual {p0}, Lbni;->K()Lcom/twitter/library/service/e;

    move-result-object v0

    sget-object v1, Lcom/twitter/internal/network/HttpOperation$RequestMethod;->a:Lcom/twitter/internal/network/HttpOperation$RequestMethod;

    .line 49
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a(Lcom/twitter/internal/network/HttpOperation$RequestMethod;)Lcom/twitter/library/service/e;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "device"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "install_referrer"

    aput-object v3, v1, v2

    .line 50
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "os_version"

    iget-object v2, p0, Lbni;->b:Ljava/lang/String;

    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    .line 53
    return-object v0
.end method

.method public e()Lcot;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lbni;->a:Lcot;

    return-object v0
.end method

.method protected synthetic f()Lcom/twitter/library/service/c;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lbni;->g()Lcom/twitter/library/api/t;

    move-result-object v0

    return-object v0
.end method

.method protected g()Lcom/twitter/library/api/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/library/api/t",
            "<",
            "Lcot;",
            "Lcom/twitter/model/core/cj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    const-class v0, Lcot;

    invoke-static {v0}, Lcom/twitter/library/api/v;->a(Ljava/lang/Class;)Lcom/twitter/library/api/v;

    move-result-object v0

    return-object v0
.end method
