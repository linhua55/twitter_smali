.class Lcom/twitter/library/av/playback/w;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/google/android/exoplayer/text/TextRenderer;


# instance fields
.field final synthetic a:Lcom/twitter/library/av/playback/r;


# direct methods
.method constructor <init>(Lcom/twitter/library/av/playback/r;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/twitter/library/av/playback/w;->a:Lcom/twitter/library/av/playback/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/text/Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/twitter/library/av/playback/w;->a:Lcom/twitter/library/av/playback/r;

    iget-object v0, v0, Lcom/twitter/library/av/playback/r;->g:Lcom/twitter/library/av/s;

    invoke-interface {v0, p1}, Lcom/twitter/library/av/s;->a(Ljava/util/List;)V

    .line 268
    return-void
.end method
