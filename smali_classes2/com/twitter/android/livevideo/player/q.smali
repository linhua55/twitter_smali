.class Lcom/twitter/android/livevideo/player/q;
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
        "Lcom/twitter/library/av/playback/AVPlayerAttachment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/livevideo/player/p;


# direct methods
.method constructor <init>(Lcom/twitter/android/livevideo/player/p;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/twitter/android/livevideo/player/q;->a:Lcom/twitter/android/livevideo/player/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/av/playback/AVPlayerAttachment;)V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/twitter/library/av/playback/AVPlayerAttachment;->a(Z)V

    .line 78
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 74
    check-cast p1, Lcom/twitter/library/av/playback/AVPlayerAttachment;

    invoke-virtual {p0, p1}, Lcom/twitter/android/livevideo/player/q;->a(Lcom/twitter/library/av/playback/AVPlayerAttachment;)V

    return-void
.end method
