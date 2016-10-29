.class Lcom/twitter/library/client/at;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/client/bf;


# instance fields
.field final synthetic a:Lcom/twitter/library/client/as;


# direct methods
.method constructor <init>(Lcom/twitter/library/client/as;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/twitter/library/client/at;->a:Lcom/twitter/library/client/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;Lcom/twitter/library/service/x;)V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public a(ILcom/twitter/library/service/x;)V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public b(ILcom/twitter/library/service/x;)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/twitter/library/client/at;->a:Lcom/twitter/library/client/as;

    invoke-static {v0, p2}, Lcom/twitter/library/client/as;->a(Lcom/twitter/library/client/as;Lcom/twitter/library/service/x;)Lcom/twitter/library/client/ba;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/library/client/at;->a:Lcom/twitter/library/client/as;

    invoke-static {v1}, Lcom/twitter/library/client/as;->a(Lcom/twitter/library/client/as;)Lcom/twitter/library/client/aw;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/twitter/library/client/at;->a:Lcom/twitter/library/client/as;

    invoke-static {v1}, Lcom/twitter/library/client/as;->a(Lcom/twitter/library/client/as;)Lcom/twitter/library/client/aw;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/twitter/library/client/aw;->a(Lcom/twitter/library/client/ba;)V

    .line 44
    :cond_0
    return-void
.end method
