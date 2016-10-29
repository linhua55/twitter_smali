.class Lcom/twitter/android/moments/ui/maker/cs;
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
.field final synthetic a:Lcom/twitter/model/moments/ak;

.field final synthetic b:Lcom/twitter/android/moments/ui/maker/cq;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/cq;Lcom/twitter/model/moments/ak;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/cs;->b:Lcom/twitter/android/moments/ui/maker/cq;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/cs;->a:Lcom/twitter/model/moments/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/viewmodels/m;)Z
    .locals 3

    .prologue
    .line 49
    if-eqz p1, :cond_1

    .line 50
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/m;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/MomentPage;

    .line 51
    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->i()Lcom/twitter/model/moments/ak;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/cs;->a:Lcom/twitter/model/moments/ak;

    invoke-virtual {v0, v2}, Lcom/twitter/model/moments/ak;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 46
    check-cast p1, Lcom/twitter/model/moments/viewmodels/m;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/cs;->a(Lcom/twitter/model/moments/viewmodels/m;)Z

    move-result v0

    return v0
.end method
