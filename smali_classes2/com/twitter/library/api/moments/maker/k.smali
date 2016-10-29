.class Lcom/twitter/library/api/moments/maker/k;
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
        "Lcom/twitter/model/moments/maker/y;",
        "Lcom/twitter/model/moments/maker/y;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/library/api/moments/maker/i;


# direct methods
.method constructor <init>(Lcom/twitter/library/api/moments/maker/i;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/twitter/library/api/moments/maker/k;->a:Lcom/twitter/library/api/moments/maker/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/maker/y;)Lcom/twitter/model/moments/maker/y;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/twitter/model/moments/maker/y;->a()Lcom/twitter/model/moments/maker/y;

    move-result-object v0

    .line 69
    iget-object v0, v0, Lcom/twitter/model/moments/maker/y;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/twitter/model/moments/maker/y;->a()Lcom/twitter/model/moments/maker/y;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    check-cast p1, Lcom/twitter/model/moments/maker/y;

    invoke-virtual {p0, p1}, Lcom/twitter/library/api/moments/maker/k;->a(Lcom/twitter/model/moments/maker/y;)Lcom/twitter/model/moments/maker/y;

    move-result-object v0

    return-object v0
.end method
