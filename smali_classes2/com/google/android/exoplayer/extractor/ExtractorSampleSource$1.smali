.class Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$1;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$1;->this$0:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$1;->this$0:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;

    # getter for: Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->extractorHolder:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->access$000(Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;)Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->release()V

    .line 561
    return-void
.end method
