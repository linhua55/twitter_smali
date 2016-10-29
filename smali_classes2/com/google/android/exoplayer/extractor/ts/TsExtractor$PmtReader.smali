.class Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;
.super Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;
.source "Twttr"


# instance fields
.field private final pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

.field private sectionBytesRead:I

.field private final sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private sectionLength:I

.field final synthetic this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)V
    .locals 2

    .prologue
    .line 261
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;-><init>(Lcom/google/android/exoplayer/extractor/ts/TsExtractor$1;)V

    .line 262
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v1, 0x5

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    .line 263
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 264
    return-void
.end method

.method private readPrivateDataStreamType(Lcom/google/android/exoplayer/util/ParsableByteArray;I)I
    .locals 8

    .prologue
    const/16 v2, 0x87

    const/16 v1, 0x81

    .line 404
    const/4 v0, -0x1

    .line 405
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v3

    add-int/2addr v3, p2

    .line 406
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v4

    if-ge v4, v3, :cond_0

    .line 407
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 408
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 409
    const/4 v6, 0x5

    if-ne v4, v6, :cond_3

    .line 410
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    .line 411
    # getter for: Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->AC3_FORMAT_IDENTIFIER:J
    invoke-static {}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->access$300()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-nez v6, :cond_1

    move v0, v1

    .line 429
    :cond_0
    :goto_1
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 430
    return v0

    .line 413
    :cond_1
    # getter for: Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->E_AC3_FORMAT_IDENTIFIER:J
    invoke-static {}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->access$400()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    move v0, v2

    .line 414
    goto :goto_1

    .line 415
    :cond_2
    # getter for: Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->HEVC_FORMAT_IDENTIFIER:J
    invoke-static {}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->access$500()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 416
    const/16 v0, 0x24

    goto :goto_1

    .line 419
    :cond_3
    const/16 v6, 0x6a

    if-ne v4, v6, :cond_5

    move v0, v1

    .line 427
    :cond_4
    :goto_2
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 421
    :cond_5
    const/16 v6, 0x7a

    if-ne v4, v6, :cond_6

    move v0, v2

    .line 422
    goto :goto_2

    .line 423
    :cond_6
    const/16 v6, 0x7b

    if-ne v4, v6, :cond_4

    .line 424
    const/16 v0, 0x8a

    goto :goto_2
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer/util/ParsableByteArray;ZLcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .locals 8

    .prologue
    .line 274
    if-eqz p2, :cond_0

    .line 276
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 277
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 281
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes(Lcom/google/android/exoplayer/util/ParsableBitArray;I)V

    .line 282
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 283
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionLength:I

    .line 285
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->capacity()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionLength:I

    if-ge v0, v1, :cond_1

    .line 286
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionLength:I

    new-array v1, v1, [B

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionLength:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset([BI)V

    .line 293
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionLength:I

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionBytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 294
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionBytesRead:I

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 295
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionBytesRead:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionBytesRead:I

    .line 296
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionBytesRead:I

    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionLength:I

    if-ge v0, v1, :cond_2

    .line 392
    :goto_1
    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset()V

    .line 289
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionLength:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setLimit(I)V

    goto :goto_0

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 307
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes(Lcom/google/android/exoplayer/util/ParsableBitArray;I)V

    .line 308
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 309
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 312
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 314
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    iget-object v1, v1, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->id3Reader:Lcom/google/android/exoplayer/extractor/ts/Id3Reader;

    if-nez v1, :cond_3

    .line 317
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    new-instance v2, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;

    const/16 v3, 0x15

    invoke-interface {p3, v3}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    iput-object v2, v1, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->id3Reader:Lcom/google/android/exoplayer/extractor/ts/Id3Reader;

    .line 320
    :cond_3
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionLength:I

    add-int/lit8 v1, v1, -0x9

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, -0x4

    move v1, v0

    .line 322
    :goto_2
    if-lez v1, :cond_b

    .line 323
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes(Lcom/google/android/exoplayer/util/ParsableBitArray;I)V

    .line 324
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 325
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 326
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 327
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/util/ParsableBitArray;->skipBits(I)V

    .line 328
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 329
    const/4 v3, 0x6

    if-ne v0, v3, :cond_4

    .line 331
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->readPrivateDataStreamType(Lcom/google/android/exoplayer/util/ParsableByteArray;I)I

    move-result v0

    .line 335
    :goto_3
    add-int/lit8 v2, v2, 0x5

    sub-int v4, v1, v2

    .line 336
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    iget-object v1, v1, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->streamTypes:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v4

    .line 337
    goto :goto_2

    .line 333
    :cond_4
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->sectionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_3

    .line 341
    :cond_5
    sparse-switch v0, :sswitch_data_0

    .line 380
    const/4 v1, 0x0

    .line 384
    :goto_4
    if-eqz v1, :cond_6

    .line 385
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->streamTypes:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 386
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    new-instance v2, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    .line 387
    # getter for: Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->ptsTimestampAdjuster:Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;
    invoke-static {v3}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->access$200(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;-><init>(Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;Lcom/google/android/exoplayer/extractor/ts/PtsTimestampAdjuster;)V

    .line 386
    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_6
    move v1, v4

    .line 389
    goto :goto_2

    .line 343
    :sswitch_0
    new-instance v1, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;

    const/4 v2, 0x3

    invoke-interface {p3, v2}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    goto :goto_4

    .line 346
    :sswitch_1
    new-instance v1, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;

    const/4 v2, 0x4

    invoke-interface {p3, v2}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer/extractor/ts/MpegAudioReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    goto :goto_4

    .line 349
    :sswitch_2
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    # getter for: Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->workaroundFlags:I
    invoke-static {v1}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->access$100(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    goto :goto_4

    :cond_7
    new-instance v1, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;

    const/16 v2, 0xf

    .line 350
    invoke-interface {p3, v2}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v2

    new-instance v3, Lcom/google/android/exoplayer/extractor/DummyTrackOutput;

    invoke-direct {v3}, Lcom/google/android/exoplayer/extractor/DummyTrackOutput;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    goto :goto_4

    .line 353
    :sswitch_3
    new-instance v1, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;

    const/16 v2, 0x81

    invoke-interface {p3, v2}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;Z)V

    goto :goto_4

    .line 356
    :sswitch_4
    new-instance v1, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;

    const/16 v2, 0x87

    invoke-interface {p3, v2}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;Z)V

    goto :goto_4

    .line 360
    :sswitch_5
    new-instance v1, Lcom/google/android/exoplayer/extractor/ts/DtsReader;

    const/16 v2, 0x8a

    invoke-interface {p3, v2}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer/extractor/ts/DtsReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    goto :goto_4

    .line 363
    :sswitch_6
    new-instance v1, Lcom/google/android/exoplayer/extractor/ts/H262Reader;

    const/4 v2, 0x2

    invoke-interface {p3, v2}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer/extractor/ts/H262Reader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    goto/16 :goto_4

    .line 366
    :sswitch_7
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    # getter for: Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->workaroundFlags:I
    invoke-static {v1}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->access$100(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_8
    new-instance v3, Lcom/google/android/exoplayer/extractor/ts/H264Reader;

    const/16 v1, 0x1b

    .line 367
    invoke-interface {p3, v1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v6

    new-instance v7, Lcom/google/android/exoplayer/extractor/ts/SeiReader;

    const/16 v1, 0x100

    .line 368
    invoke-interface {p3, v1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/google/android/exoplayer/extractor/ts/SeiReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    .line 369
    # getter for: Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->workaroundFlags:I
    invoke-static {v1}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->access$100(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    :goto_5
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    .line 370
    # getter for: Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->workaroundFlags:I
    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->access$100(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;)I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    :goto_6
    invoke-direct {v3, v6, v7, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;Lcom/google/android/exoplayer/extractor/ts/SeiReader;ZZ)V

    move-object v1, v3

    goto/16 :goto_4

    .line 369
    :cond_9
    const/4 v1, 0x0

    goto :goto_5

    .line 370
    :cond_a
    const/4 v2, 0x0

    goto :goto_6

    .line 373
    :sswitch_8
    new-instance v1, Lcom/google/android/exoplayer/extractor/ts/H265Reader;

    const/16 v2, 0x24

    invoke-interface {p3, v2}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v2

    new-instance v3, Lcom/google/android/exoplayer/extractor/ts/SeiReader;

    const/16 v6, 0x100

    .line 374
    invoke-interface {p3, v6}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/google/android/exoplayer/extractor/ts/SeiReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer/extractor/ts/H265Reader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;Lcom/google/android/exoplayer/extractor/ts/SeiReader;)V

    goto/16 :goto_4

    .line 377
    :sswitch_9
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PmtReader;->this$0:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    iget-object v1, v1, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->id3Reader:Lcom/google/android/exoplayer/extractor/ts/Id3Reader;

    goto/16 :goto_4

    .line 391
    :cond_b
    invoke-interface {p3}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->endTracks()V

    goto/16 :goto_1

    .line 341
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_6
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0xf -> :sswitch_2
        0x15 -> :sswitch_9
        0x1b -> :sswitch_7
        0x24 -> :sswitch_8
        0x81 -> :sswitch_3
        0x82 -> :sswitch_5
        0x87 -> :sswitch_4
        0x8a -> :sswitch_5
    .end sparse-switch
.end method

.method public seek()V
    .locals 0

    .prologue
    .line 269
    return-void
.end method
