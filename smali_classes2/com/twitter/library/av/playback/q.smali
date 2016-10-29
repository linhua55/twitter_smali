.class Lcom/twitter/library/av/playback/q;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback",
        "<",
        "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/twitter/library/av/playback/p;


# direct methods
.method constructor <init>(Lcom/twitter/library/av/playback/p;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/twitter/library/av/playback/q;->c:Lcom/twitter/library/av/playback/p;

    iput-object p2, p0, Lcom/twitter/library/av/playback/q;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/twitter/library/av/playback/q;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;)V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/twitter/library/av/playback/q;->c:Lcom/twitter/library/av/playback/p;

    iget-object v1, p0, Lcom/twitter/library/av/playback/q;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/library/av/playback/q;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/twitter/library/av/playback/p;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;)V

    .line 51
    return-void
.end method

.method public synthetic onSingleManifest(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 47
    check-cast p1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    invoke-virtual {p0, p1}, Lcom/twitter/library/av/playback/q;->a(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;)V

    return-void
.end method

.method public onSingleManifestError(Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/twitter/library/av/playback/q;->c:Lcom/twitter/library/av/playback/p;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/twitter/library/av/playback/p;->a(ZLjava/lang/Exception;)V

    .line 56
    return-void
.end method
