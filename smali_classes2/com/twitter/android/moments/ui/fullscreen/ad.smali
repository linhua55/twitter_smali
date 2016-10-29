.class Lcom/twitter/android/moments/ui/fullscreen/ad;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/ab;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/ab;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/ad;->a:Lcom/twitter/android/moments/ui/fullscreen/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ad;->a:Lcom/twitter/android/moments/ui/fullscreen/ab;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/ab;->c(Lcom/twitter/android/moments/ui/fullscreen/ab;)Lcom/twitter/android/moments/ui/fullscreen/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ad;->a:Lcom/twitter/android/moments/ui/fullscreen/ab;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/ab;->c(Lcom/twitter/android/moments/ui/fullscreen/ab;)Lcom/twitter/android/moments/ui/fullscreen/ag;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/android/moments/ui/fullscreen/ag;->b:Lcom/twitter/android/moments/ui/video/b;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/video/b;->f()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/AVPlayer;->d(Z)V

    .line 79
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 73
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/ad;->a(Ljava/lang/Boolean;)V

    return-void
.end method
