.class Lcom/google/android/exoplayer/MediaCodecTrackRenderer$2;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/MediaCodecTrackRenderer;

.field final synthetic val$e:Landroid/media/MediaCodec$CryptoException;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/MediaCodecTrackRenderer;Landroid/media/MediaCodec$CryptoException;)V
    .locals 0

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$2;->this$0:Lcom/google/android/exoplayer/MediaCodecTrackRenderer;

    iput-object p2, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$2;->val$e:Landroid/media/MediaCodec$CryptoException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$2;->this$0:Lcom/google/android/exoplayer/MediaCodecTrackRenderer;

    # getter for: Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->eventListener:Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer;->access$000(Lcom/google/android/exoplayer/MediaCodecTrackRenderer;)Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$2;->val$e:Landroid/media/MediaCodec$CryptoException;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/MediaCodecTrackRenderer$EventListener;->onCryptoError(Landroid/media/MediaCodec$CryptoException;)V

    .line 1031
    return-void
.end method
