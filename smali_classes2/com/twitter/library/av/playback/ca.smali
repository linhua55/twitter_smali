.class public Lcom/twitter/library/av/playback/ca;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownstreamFormatChanged(ILcom/google/android/exoplayer/chunk/Format;IJ)V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public onLoadCanceled(IJ)V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public onLoadCompleted(IJIILcom/google/android/exoplayer/chunk/Format;JJJJ)V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public onLoadError(ILjava/io/IOException;)V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public onLoadStarted(IJIILcom/google/android/exoplayer/chunk/Format;JJ)V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public onProgramDateTime(Ljava/util/Date;J)V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public onUpstreamDiscarded(IJJ)V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
