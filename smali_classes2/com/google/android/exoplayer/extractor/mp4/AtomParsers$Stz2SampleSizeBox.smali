.class final Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$SampleSizeBox;


# instance fields
.field private currentByte:I

.field private final data:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final fieldSize:I

.field private final sampleCount:I

.field private sampleIndex:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;)V
    .locals 2

    .prologue
    .line 1244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1245
    iget-object v0, p1, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 1246
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 1247
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->fieldSize:I

    .line 1248
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->sampleCount:I

    .line 1249
    return-void
.end method


# virtual methods
.method public getSampleCount()I
    .locals 1

    .prologue
    .line 1253
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->sampleCount:I

    return v0
.end method

.method public isFixedSampleSize()Z
    .locals 1

    .prologue
    .line 1278
    const/4 v0, 0x0

    return v0
.end method

.method public readNextSampleSize()I
    .locals 2

    .prologue
    .line 1258
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->fieldSize:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1259
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1271
    :goto_0
    return v0

    .line 1260
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->fieldSize:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 1261
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    goto :goto_0

    .line 1264
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->sampleIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->sampleIndex:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 1266
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->currentByte:I

    .line 1268
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->currentByte:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 1271
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;->currentByte:I

    and-int/lit8 v0, v0, 0xf

    goto :goto_0
.end method