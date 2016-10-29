.class final Lcom/twitter/model/moments/viewmodels/n;
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
        "Lcom/twitter/model/moments/viewmodels/m;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldau;


# direct methods
.method constructor <init>(Ldau;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/twitter/model/moments/viewmodels/n;->a:Ldau;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/viewmodels/m;)Z
    .locals 3

    .prologue
    .line 123
    iget-object v0, p1, Lcom/twitter/model/moments/viewmodels/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/MomentPage;

    .line 124
    iget-object v2, p0, Lcom/twitter/model/moments/viewmodels/n;->a:Ldau;

    invoke-interface {v2, v0}, Ldau;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x1

    .line 128
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 120
    check-cast p1, Lcom/twitter/model/moments/viewmodels/m;

    invoke-virtual {p0, p1}, Lcom/twitter/model/moments/viewmodels/n;->a(Lcom/twitter/model/moments/viewmodels/m;)Z

    move-result v0

    return v0
.end method
