.class Lcom/twitter/android/livevideo/player/y;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer/text/SubtitleLayout;

.field final synthetic b:Lcom/twitter/android/livevideo/player/w;


# direct methods
.method constructor <init>(Lcom/twitter/android/livevideo/player/w;Lcom/google/android/exoplayer/text/SubtitleLayout;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/twitter/android/livevideo/player/y;->b:Lcom/twitter/android/livevideo/player/w;

    iput-object p2, p0, Lcom/twitter/android/livevideo/player/y;->a:Lcom/google/android/exoplayer/text/SubtitleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 103
    iget-object v1, p0, Lcom/twitter/android/livevideo/player/y;->a:Lcom/google/android/exoplayer/text/SubtitleLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/text/SubtitleLayout;->setVisibility(I)V

    .line 104
    return-void

    .line 103
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 100
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/twitter/android/livevideo/player/y;->a(Ljava/lang/Boolean;)V

    return-void
.end method
