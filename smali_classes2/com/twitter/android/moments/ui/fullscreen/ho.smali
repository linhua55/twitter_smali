.class Lcom/twitter/android/moments/ui/fullscreen/ho;
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
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/hl;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/hl;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/ho;->a:Lcom/twitter/android/moments/ui/fullscreen/hl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ho;->a:Lcom/twitter/android/moments/ui/fullscreen/hl;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/fullscreen/hl;->b(Lcom/twitter/android/moments/ui/fullscreen/hl;)Lcom/twitter/android/moments/ui/video/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/video/b;->f()Lcom/twitter/library/av/playback/AVPlayer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/AVPlayer;->d(Z)V

    .line 143
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 139
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/ho;->a(Ljava/lang/Boolean;)V

    return-void
.end method
