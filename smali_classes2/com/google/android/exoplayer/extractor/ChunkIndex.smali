.class public final Lcom/google/android/exoplayer/extractor/ChunkIndex;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/SeekMap;


# instance fields
.field public final durationsUs:[J

.field public final length:I

.field public final offsets:[J

.field public final sizes:[I

.field public final timesUs:[J


# direct methods
.method public constructor <init>([I[J[J[J)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    array-length v0, p1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ChunkIndex;->length:I

    .line 58
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ChunkIndex;->sizes:[I

    .line 59
    iput-object p2, p0, Lcom/google/android/exoplayer/extractor/ChunkIndex;->offsets:[J

    .line 60
    iput-object p3, p0, Lcom/google/android/exoplayer/extractor/ChunkIndex;->durationsUs:[J

    .line 61
    iput-object p4, p0, Lcom/google/android/exoplayer/extractor/ChunkIndex;->timesUs:[J

    .line 62
    return-void
.end method


# virtual methods
.method public getChunkIndex(J)I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ChunkIndex;->timesUs:[J

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/exoplayer/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    return v0
.end method

.method public getPosition(J)J
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ChunkIndex;->offsets:[J

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer/extractor/ChunkIndex;->getChunkIndex(J)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public isSeekable()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method
