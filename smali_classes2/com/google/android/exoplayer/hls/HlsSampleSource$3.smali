.class Lcom/google/android/exoplayer/hls/HlsSampleSource$3;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/hls/HlsSampleSource;

.field final synthetic val$programDateTime:Ljava/util/Date;

.field final synthetic val$startTimeUs:J


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/hls/HlsSampleSource;Ljava/util/Date;J)V
    .locals 1

    .prologue
    .line 817
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$3;->this$0:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    iput-object p2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$3;->val$programDateTime:Ljava/util/Date;

    iput-wide p3, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$3;->val$startTimeUs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 820
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$3;->this$0:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    # getter for: Lcom/google/android/exoplayer/hls/HlsSampleSource;->eventListener:Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->access$100(Lcom/google/android/exoplayer/hls/HlsSampleSource;)Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$3;->val$programDateTime:Ljava/util/Date;

    iget-wide v2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$3;->val$startTimeUs:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;->onProgramDateTime(Ljava/util/Date;J)V

    .line 821
    return-void
.end method
