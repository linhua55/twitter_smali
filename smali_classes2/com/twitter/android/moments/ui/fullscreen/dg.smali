.class Lcom/twitter/android/moments/ui/fullscreen/dg;
.super Lach;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lach",
        "<",
        "Lcom/twitter/util/collection/ab",
        "<",
        "Lcom/twitter/model/core/Tweet;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/df;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/df;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/dg;->a:Lcom/twitter/android/moments/ui/fullscreen/df;

    invoke-direct {p0}, Lach;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/util/collection/ab;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p1}, Lcom/twitter/util/collection/ab;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/dg;->a:Lcom/twitter/android/moments/ui/fullscreen/df;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/df;->b(Lcom/twitter/android/moments/ui/fullscreen/df;)Lcom/twitter/android/moments/ui/fullscreen/dh;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/dg;->a:Lcom/twitter/android/moments/ui/fullscreen/df;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/df;->a(Lcom/twitter/android/moments/ui/fullscreen/df;)Lcom/twitter/model/moments/ah;

    move-result-object v2

    invoke-virtual {p1}, Lcom/twitter/util/collection/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    invoke-virtual {v1, v2, v0}, Lcom/twitter/android/moments/ui/fullscreen/dh;->a(Lcom/twitter/model/moments/ah;Lcom/twitter/model/core/Tweet;)V

    .line 42
    :cond_0
    return-void
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Lcom/twitter/util/collection/ab;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/dg;->a(Lcom/twitter/util/collection/ab;)V

    return-void
.end method
