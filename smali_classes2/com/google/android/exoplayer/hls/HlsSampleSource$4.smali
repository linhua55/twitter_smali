.class Lcom/google/android/exoplayer/hls/HlsSampleSource$4;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/hls/HlsSampleSource;

.field final synthetic val$bytesLoaded:J


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/hls/HlsSampleSource;J)V
    .locals 0

    .prologue
    .line 828
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$4;->this$0:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    iput-wide p2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$4;->val$bytesLoaded:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 831
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$4;->this$0:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    # getter for: Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventListener:Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->access$100(Lcom/google/android/exoplayer/hls/HlsSampleSource;)Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$4;->this$0:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    # getter for: Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventSourceId:I
    invoke-static {v1}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->access$000(Lcom/google/android/exoplayer/hls/HlsSampleSource;)I

    move-result v1

    iget-wide v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$4;->val$bytesLoaded:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;->onLoadCanceled(IJ)V

    .line 832
    return-void
.end method
