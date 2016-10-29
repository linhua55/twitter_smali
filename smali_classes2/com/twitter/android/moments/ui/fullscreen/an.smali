.class Lcom/twitter/android/moments/ui/fullscreen/an;
.super Lach;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lach",
        "<",
        "Lcom/twitter/util/collection/ab",
        "<",
        "Lcom/twitter/model/core/TwitterUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/am;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/am;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/an;->a:Lcom/twitter/android/moments/ui/fullscreen/am;

    invoke-direct {p0}, Lach;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/util/collection/ab;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    invoke-virtual {p1}, Lcom/twitter/util/collection/ab;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/an;->a:Lcom/twitter/android/moments/ui/fullscreen/am;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/am;->a(Lcom/twitter/android/moments/ui/fullscreen/am;)Lcom/twitter/android/moments/ui/fullscreen/er;

    move-result-object v1

    invoke-virtual {p1}, Lcom/twitter/util/collection/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/ui/fullscreen/er;->a(Lcom/twitter/model/core/TwitterUser;)V

    .line 198
    :cond_0
    return-void
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 192
    check-cast p1, Lcom/twitter/util/collection/ab;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/an;->a(Lcom/twitter/util/collection/ab;)V

    return-void
.end method
