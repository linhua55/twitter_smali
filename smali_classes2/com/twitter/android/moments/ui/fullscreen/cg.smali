.class Lcom/twitter/android/moments/ui/fullscreen/cg;
.super Lach;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lach",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/model/moments/viewmodels/a;

.field final synthetic b:Lcom/twitter/util/collection/ab;

.field final synthetic c:Lcom/twitter/android/moments/ui/fullscreen/by;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/by;Lcom/twitter/model/moments/viewmodels/a;Lcom/twitter/util/collection/ab;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/cg;->c:Lcom/twitter/android/moments/ui/fullscreen/by;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/cg;->a:Lcom/twitter/model/moments/viewmodels/a;

    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/cg;->b:Lcom/twitter/util/collection/ab;

    invoke-direct {p0}, Lach;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 5

    .prologue
    .line 399
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/cg;->c:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/by;->l(Lcom/twitter/android/moments/ui/fullscreen/by;)Lcom/twitter/android/moments/ui/fullscreen/bd;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/cg;->c:Lcom/twitter/android/moments/ui/fullscreen/by;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/cg;->a:Lcom/twitter/model/moments/viewmodels/a;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/cg;->b:Lcom/twitter/util/collection/ab;

    iget-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/cg;->c:Lcom/twitter/android/moments/ui/fullscreen/by;

    .line 404
    invoke-static {v4}, Lcom/twitter/android/moments/ui/fullscreen/by;->k(Lcom/twitter/android/moments/ui/fullscreen/by;)Landroid/os/Bundle;

    move-result-object v4

    .line 401
    invoke-static {v1, v2, v3, v4}, Lcom/twitter/android/moments/ui/fullscreen/by;->a(Lcom/twitter/android/moments/ui/fullscreen/by;Lcom/twitter/model/moments/viewmodels/a;Lcom/twitter/util/collection/ab;Landroid/os/Bundle;)Lcom/twitter/android/moments/ui/fullscreen/ax;

    move-result-object v1

    .line 400
    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/bd;->a(Lcom/twitter/android/moments/ui/fullscreen/ax;)V

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/cg;->c:Lcom/twitter/android/moments/ui/fullscreen/by;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/by;->a(Lcom/twitter/android/moments/ui/fullscreen/by;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 396
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/cg;->a(Ljava/lang/Boolean;)V

    return-void
.end method
