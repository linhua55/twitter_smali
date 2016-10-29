.class Ltv/periscope/android/exoplayer/player/q;
.super Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;
.source "Twttr"


# instance fields
.field final synthetic a:Ltv/periscope/android/exoplayer/player/n;


# direct methods
.method public constructor <init>(Ltv/periscope/android/exoplayer/player/n;Landroid/content/Context;Lcom/google/android/exoplayer/SampleSource;IJLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V
    .locals 11

    .prologue
    .line 97
    iput-object p1, p0, Ltv/periscope/android/exoplayer/player/q;->a:Ltv/periscope/android/exoplayer/player/n;

    .line 98
    sget-object v4, Lcom/google/android/exoplayer/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer/MediaCodecSelector;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;IJLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    .line 100
    return-void
.end method


# virtual methods
.method protected dropOutputBuffer(Landroid/media/MediaCodec;I)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/q;->a:Ltv/periscope/android/exoplayer/player/n;

    invoke-static {v0}, Ltv/periscope/android/exoplayer/player/n;->a(Ltv/periscope/android/exoplayer/player/n;)J

    .line 118
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->dropOutputBuffer(Landroid/media/MediaCodec;I)V

    .line 119
    return-void
.end method

.method protected renderOutputBuffer(Landroid/media/MediaCodec;I)V
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/q;->a:Ltv/periscope/android/exoplayer/player/n;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ltv/periscope/android/exoplayer/player/n;->b(J)V

    .line 105
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->renderOutputBuffer(Landroid/media/MediaCodec;I)V

    .line 106
    return-void
.end method

.method protected renderOutputBufferV21(Landroid/media/MediaCodec;IJ)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/q;->a:Ltv/periscope/android/exoplayer/player/n;

    invoke-virtual {v0, p3, p4}, Ltv/periscope/android/exoplayer/player/n;->b(J)V

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->renderOutputBufferV21(Landroid/media/MediaCodec;IJ)V

    .line 112
    return-void
.end method

.method protected skipOutputBuffer(Landroid/media/MediaCodec;I)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Ltv/periscope/android/exoplayer/player/q;->a:Ltv/periscope/android/exoplayer/player/n;

    invoke-static {v0}, Ltv/periscope/android/exoplayer/player/n;->a(Ltv/periscope/android/exoplayer/player/n;)J

    .line 125
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->skipOutputBuffer(Landroid/media/MediaCodec;I)V

    .line 126
    return-void
.end method
