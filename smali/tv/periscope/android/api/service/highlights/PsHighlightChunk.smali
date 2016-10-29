.class public Ltv/periscope/android/api/service/highlights/PsHighlightChunk;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public audioDurationMs:D
    .annotation runtime Lnu;
        a = "audio_duration"
    .end annotation
.end field

.field public id3Tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltv/periscope/android/api/service/highlights/PsHighlightChunkId3Tag;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnu;
        a = "id3_tags"
    .end annotation
.end field

.field public ntpTimestamp:D
    .annotation runtime Lnu;
        a = "ntp_timestamp"
    .end annotation
.end field

.field public score:F
    .annotation runtime Lnu;
        a = "score"
    .end annotation
.end field

.field public videoDurationMs:D
    .annotation runtime Lnu;
        a = "video_duration"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Ldnv;
    .locals 6

    .prologue
    .line 28
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Ltv/periscope/android/api/service/highlights/PsHighlightChunk;->id3Tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    iget-object v0, p0, Ltv/periscope/android/api/service/highlights/PsHighlightChunk;->id3Tags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/api/service/highlights/PsHighlightChunkId3Tag;

    .line 30
    invoke-virtual {v0}, Ltv/periscope/android/api/service/highlights/PsHighlightChunkId3Tag;->create()Ldnx;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    :cond_0
    invoke-static {}, Ldnv;->f()Ldnw;

    move-result-object v0

    iget v2, p0, Ltv/periscope/android/api/service/highlights/PsHighlightChunk;->score:F

    .line 34
    invoke-virtual {v0, v2}, Ldnw;->a(F)Ldnw;

    move-result-object v0

    iget-wide v2, p0, Ltv/periscope/android/api/service/highlights/PsHighlightChunk;->videoDurationMs:D

    double-to-long v2, v2

    .line 35
    invoke-virtual {v0, v2, v3}, Ldnw;->a(J)Ldnw;

    move-result-object v0

    iget-wide v2, p0, Ltv/periscope/android/api/service/highlights/PsHighlightChunk;->audioDurationMs:D

    double-to-long v2, v2

    .line 36
    invoke-virtual {v0, v2, v3}, Ldnw;->b(J)Ldnw;

    move-result-object v0

    iget-wide v2, p0, Ltv/periscope/android/api/service/highlights/PsHighlightChunk;->ntpTimestamp:D

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    .line 37
    invoke-virtual {v0, v2, v3}, Ldnw;->c(J)Ldnw;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v1}, Ldnw;->a(Ljava/util/List;)Ldnw;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ldnw;->a()Ldnv;

    move-result-object v0

    return-object v0
.end method
