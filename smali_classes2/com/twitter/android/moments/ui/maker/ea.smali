.class final Lcom/twitter/android/moments/ui/maker/ea;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/object/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/object/e",
        "<",
        "Lcom/twitter/android/moments/viewmodels/q;",
        "Lcom/twitter/android/moments/ui/fullscreen/gn;",
        "Lakc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/ea;->a:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/viewmodels/q;Lcom/twitter/android/moments/ui/fullscreen/gn;)Lakc;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ea;->a:Landroid/view/LayoutInflater;

    .line 69
    invoke-interface {p1}, Lcom/twitter/android/moments/viewmodels/q;->c()Lcom/twitter/model/moments/k;

    move-result-object v1

    .line 68
    invoke-static {v0, p1, v1, p2}, Lakc;->a(Landroid/view/LayoutInflater;Lcom/twitter/android/moments/viewmodels/q;Lcom/twitter/model/moments/k;Lcom/twitter/android/moments/ui/fullscreen/gn;)Lakc;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    check-cast p1, Lcom/twitter/android/moments/viewmodels/q;

    check-cast p2, Lcom/twitter/android/moments/ui/fullscreen/gn;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/moments/ui/maker/ea;->a(Lcom/twitter/android/moments/viewmodels/q;Lcom/twitter/android/moments/ui/fullscreen/gn;)Lakc;

    move-result-object v0

    return-object v0
.end method
