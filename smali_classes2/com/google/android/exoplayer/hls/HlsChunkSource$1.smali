.class Lcom/google/android/exoplayer/hls/HlsChunkSource$1;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/hls/HlsChunkSource;

.field final synthetic val$rawResponse:[B


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;[B)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$1;->this$0:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    iput-object p2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$1;->val$rawResponse:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$1;->this$0:Lcom/google/android/exoplayer/hls/HlsChunkSource;

    # getter for: Lcom/google/android/exoplayer/hls/HlsChunkSource;->eventListener:Lcom/google/android/exoplayer/hls/HlsChunkSource$EventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer/hls/HlsChunkSource;->access$400(Lcom/google/android/exoplayer/hls/HlsChunkSource;)Lcom/google/android/exoplayer/hls/HlsChunkSource$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$1;->val$rawResponse:[B

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/hls/HlsChunkSource$EventListener;->onMediaPlaylistLoadCompleted([B)V

    .line 561
    return-void
.end method
