.class Lcom/twitter/android/moments/ui/fullscreen/hk;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/y",
        "<",
        "Lcom/twitter/android/moments/ui/fullscreen/af;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/hi;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/hi;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/hk;->a:Lcom/twitter/android/moments/ui/fullscreen/hi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/ui/fullscreen/af;)V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hk;->a:Lcom/twitter/android/moments/ui/fullscreen/hi;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/hi;->a(Lcom/twitter/android/moments/ui/fullscreen/hi;)Lcom/twitter/model/moments/viewmodels/ac;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/android/moments/ui/fullscreen/af;->a:Lcom/twitter/model/moments/viewmodels/ac;

    if-ne v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hk;->a:Lcom/twitter/android/moments/ui/fullscreen/hi;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/hi;->b(Lcom/twitter/android/moments/ui/fullscreen/hi;)Lcom/twitter/android/moments/ui/fullscreen/bs;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hk;->a:Lcom/twitter/android/moments/ui/fullscreen/hi;

    invoke-static {v1}, Lcom/twitter/android/moments/ui/fullscreen/hi;->a(Lcom/twitter/android/moments/ui/fullscreen/hi;)Lcom/twitter/model/moments/viewmodels/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/model/moments/viewmodels/ac;->j()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/moments/ui/fullscreen/k;

    invoke-direct {v2, p1}, Lcom/twitter/android/moments/ui/fullscreen/k;-><init>(Lcom/twitter/android/moments/ui/fullscreen/af;)V

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/moments/ui/fullscreen/bs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hk;->a:Lcom/twitter/android/moments/ui/fullscreen/hi;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/hi;->b(Lcom/twitter/android/moments/ui/fullscreen/hi;Z)Z

    .line 71
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    check-cast p1, Lcom/twitter/android/moments/ui/fullscreen/af;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/hk;->a(Lcom/twitter/android/moments/ui/fullscreen/af;)V

    return-void
.end method
