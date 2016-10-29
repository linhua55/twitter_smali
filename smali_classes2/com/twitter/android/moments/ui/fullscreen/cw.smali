.class Lcom/twitter/android/moments/ui/fullscreen/cw;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjf",
        "<",
        "Lcom/twitter/model/core/Tweet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/twitter/model/moments/viewmodels/MomentPage;

.field final synthetic c:Lcom/twitter/android/moments/ui/fullscreen/cv;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/cv;Landroid/view/ViewGroup;Lcom/twitter/model/moments/viewmodels/MomentPage;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/cw;->c:Lcom/twitter/android/moments/ui/fullscreen/cv;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/cw;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/cw;->b:Lcom/twitter/model/moments/viewmodels/MomentPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/Tweet;)V
    .locals 4

    .prologue
    .line 40
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/cw;->c:Lcom/twitter/android/moments/ui/fullscreen/cv;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/cw;->c:Lcom/twitter/android/moments/ui/fullscreen/cv;

    invoke-static {v1}, Lcom/twitter/android/moments/ui/fullscreen/cv;->a(Lcom/twitter/android/moments/ui/fullscreen/cv;)Lcom/twitter/android/moments/ui/fullscreen/fp;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/cw;->a:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/cw;->b:Lcom/twitter/model/moments/viewmodels/MomentPage;

    invoke-virtual {v1, v2, p1, v3}, Lcom/twitter/android/moments/ui/fullscreen/fp;->a(Landroid/view/ViewGroup;Lcom/twitter/model/core/Tweet;Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/android/moments/ui/fullscreen/fr;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/cv;->a(Lcom/twitter/android/moments/ui/fullscreen/cv;Lcom/twitter/android/moments/ui/fullscreen/fr;)Lcom/twitter/android/moments/ui/fullscreen/fr;

    .line 41
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/cw;->c:Lcom/twitter/android/moments/ui/fullscreen/cv;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/cv;->b(Lcom/twitter/android/moments/ui/fullscreen/cv;)Lcom/twitter/android/moments/ui/fullscreen/fr;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/android/moments/ui/fullscreen/fr;->a()V

    .line 42
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Lcom/twitter/model/core/Tweet;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/cw;->a(Lcom/twitter/model/core/Tweet;)V

    return-void
.end method
