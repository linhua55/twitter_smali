.class final Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final adaptiveMaxHeight:I

.field private final adaptiveMaxWidth:I

.field private final defaultVariantIndex:I

.field private final variants:[Lcom/google/android/exoplayer/hls/Variant;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/hls/Variant;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 882
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer/hls/Variant;

    aput-object p1, v0, v2

    iput-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    .line 883
    iput v2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->defaultVariantIndex:I

    .line 884
    iput v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->adaptiveMaxWidth:I

    .line 885
    iput v1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->adaptiveMaxHeight:I

    .line 886
    return-void
.end method

.method public constructor <init>([Lcom/google/android/exoplayer/hls/Variant;III)V
    .locals 0

    .prologue
    .line 889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 890
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    .line 891
    iput p2, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->defaultVariantIndex:I

    .line 892
    iput p3, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->adaptiveMaxWidth:I

    .line 893
    iput p4, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->adaptiveMaxHeight:I

    .line 894
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;)[Lcom/google/android/exoplayer/hls/Variant;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->variants:[Lcom/google/android/exoplayer/hls/Variant;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;)I
    .locals 1

    .prologue
    .line 873
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->defaultVariantIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;)I
    .locals 1

    .prologue
    .line 873
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->adaptiveMaxWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;)I
    .locals 1

    .prologue
    .line 873
    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsChunkSource$ExposedTrack;->adaptiveMaxHeight:I

    return v0
.end method
