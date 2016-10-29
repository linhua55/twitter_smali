.class public Lcom/twitter/library/media/util/transcode/d;
.super Ljava/lang/Object;
.source "Twttr"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private volatile b:Z

.field private final c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:Lcom/twitter/util/math/Size;

.field private g:I

.field private h:I

.field private i:I

.field private j:Lcom/twitter/util/math/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/twitter/library/media/util/transcode/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/twitter/library/media/util/transcode/d;->e:J

    .line 74
    const v0, 0x2dc6c0

    iput v0, p0, Lcom/twitter/library/media/util/transcode/d;->g:I

    .line 77
    const/16 v0, 0x3c

    iput v0, p0, Lcom/twitter/library/media/util/transcode/d;->h:I

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Lcom/twitter/library/media/util/transcode/d;->i:I

    .line 184
    iput-object p1, p0, Lcom/twitter/library/media/util/transcode/d;->c:Ljava/lang/String;

    .line 185
    return-void
.end method

.method static synthetic a(Lcom/twitter/library/media/util/transcode/d;)J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/twitter/library/media/util/transcode/d;->e:J

    return-wide v0
.end method

.method private a(ILandroid/media/MediaExtractor;Landroid/media/MediaCodec;Lcom/twitter/library/media/util/transcode/b;Lcom/twitter/library/media/util/transcode/a;Landroid/media/MediaCodec;Landroid/media/MediaMuxer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twitter/library/media/util/transcode/TranscoderException;
        }
    .end annotation

    .prologue
    .line 430
    new-instance v8, Lcom/twitter/library/media/util/transcode/i;

    invoke-direct {v8, p0, p2, p3}, Lcom/twitter/library/media/util/transcode/i;-><init>(Lcom/twitter/library/media/util/transcode/d;Landroid/media/MediaExtractor;Landroid/media/MediaCodec;)V

    .line 431
    new-instance v0, Lcom/twitter/library/media/util/transcode/h;

    iget-wide v4, p0, Lcom/twitter/library/media/util/transcode/d;->d:J

    move-object v1, p0

    move-object v2, p6

    move-object/from16 v3, p7

    invoke-direct/range {v0 .. v5}, Lcom/twitter/library/media/util/transcode/h;-><init>(Lcom/twitter/library/media/util/transcode/d;Landroid/media/MediaCodec;Landroid/media/MediaMuxer;J)V

    .line 432
    new-instance v1, Lcom/twitter/library/media/util/transcode/g;

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/twitter/library/media/util/transcode/g;-><init>(Lcom/twitter/library/media/util/transcode/d;Landroid/media/MediaCodec;Lcom/twitter/library/media/util/transcode/b;Lcom/twitter/library/media/util/transcode/a;Landroid/media/MediaCodec;I)V

    .line 435
    :try_start_0
    iget-wide v2, p0, Lcom/twitter/library/media/util/transcode/d;->d:J

    const/4 v4, 0x0

    invoke-virtual {p2, v2, v3, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 437
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "doTranscodeThread-Extractor-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/twitter/library/media/util/transcode/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 438
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v8, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 439
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 441
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "doTranscodeThread-Encoder-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/twitter/library/media/util/transcode/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 442
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 443
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 446
    invoke-virtual {v1}, Lcom/twitter/library/media/util/transcode/g;->run()V

    .line 448
    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    :try_start_1
    invoke-virtual/range {p7 .. p7}, Landroid/media/MediaMuxer;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 457
    :goto_0
    :try_start_2
    invoke-virtual/range {p7 .. p7}, Landroid/media/MediaMuxer;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 460
    :goto_1
    invoke-virtual {v8}, Lcom/twitter/library/media/util/transcode/i;->b()V

    .line 461
    invoke-virtual {v0}, Lcom/twitter/library/media/util/transcode/h;->b()V

    .line 462
    invoke-virtual {v1}, Lcom/twitter/library/media/util/transcode/g;->b()V

    .line 463
    return-void

    .line 449
    :catch_0
    move-exception v0

    .line 450
    :try_start_3
    invoke-virtual {p0}, Lcom/twitter/library/media/util/transcode/d;->c()V

    .line 451
    new-instance v1, Lcom/twitter/library/media/util/transcode/TranscoderException;

    const/4 v2, 0x1

    const-string/jumbo v3, "interrupted"

    invoke-direct {v1, v2, v3, v0}, Lcom/twitter/library/media/util/transcode/TranscoderException;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 453
    :catchall_0
    move-exception v0

    .line 454
    :try_start_4
    invoke-virtual/range {p7 .. p7}, Landroid/media/MediaMuxer;->stop()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 457
    :goto_2
    :try_start_5
    invoke-virtual/range {p7 .. p7}, Landroid/media/MediaMuxer;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 458
    :goto_3
    throw v0

    .line 455
    :catch_1
    move-exception v2

    goto :goto_0

    .line 458
    :catch_2
    move-exception v2

    goto :goto_1

    .line 455
    :catch_3
    move-exception v1

    goto :goto_2

    .line 458
    :catch_4
    move-exception v1

    goto :goto_3
.end method

.method private a(Ljava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twitter/library/media/util/transcode/TranscoderException;
        }
    .end annotation

    .prologue
    .line 255
    const/4 v6, 0x0

    .line 256
    const/4 v8, 0x0

    .line 257
    const/4 v3, 0x0

    .line 258
    const/4 v9, 0x0

    .line 259
    const/4 v5, 0x0

    .line 262
    :try_start_0
    new-instance v4, Landroid/media/MediaExtractor;

    invoke-direct {v4}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 263
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/media/util/transcode/d;->c:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 264
    const-string/jumbo v2, "video/"

    invoke-static {v4, v2}, Lcom/twitter/media/util/r;->a(Landroid/media/MediaExtractor;Ljava/lang/String;)I

    move-result v2

    .line 265
    if-gez v2, :cond_5

    .line 266
    new-instance v2, Lcom/twitter/library/media/util/transcode/TranscoderException;

    const/4 v3, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "No video track found in "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/twitter/library/media/util/transcode/d;->c:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    invoke-direct {v2, v3, v7, v10}, Lcom/twitter/library/media/util/transcode/TranscoderException;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 384
    :catch_0
    move-exception v2

    move-object v7, v5

    move-object v5, v6

    move-object v6, v9

    .line 385
    :goto_0
    :try_start_2
    const-string/jumbo v3, "TextureTranscoder"

    const-string/jumbo v9, "Error transcoding video"

    invoke-static {v3, v9, v2}, Lcjw;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 386
    invoke-static {v2}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 387
    new-instance v3, Lcom/twitter/library/media/util/transcode/TranscoderException;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v3, v9, v10, v2}, Lcom/twitter/library/media/util/transcode/TranscoderException;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 389
    :catchall_0
    move-exception v2

    move-object v9, v6

    move-object v6, v5

    move-object v5, v7

    :goto_1
    if-eqz v9, :cond_0

    .line 390
    invoke-virtual {v9}, Lcom/twitter/library/media/util/transcode/b;->a()V

    .line 392
    :cond_0
    if-eqz v5, :cond_1

    .line 393
    invoke-virtual {v5}, Lcom/twitter/library/media/util/transcode/a;->a()V

    .line 395
    :cond_1
    if-eqz v8, :cond_2

    .line 397
    :try_start_3
    invoke-virtual {v8}, Landroid/media/MediaCodec;->stop()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    .line 400
    :goto_2
    :try_start_4
    invoke-virtual {v8}, Landroid/media/MediaCodec;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    .line 403
    :cond_2
    :goto_3
    if-eqz v6, :cond_3

    .line 405
    :try_start_5
    invoke-virtual {v6}, Landroid/media/MediaCodec;->stop()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b

    .line 408
    :goto_4
    :try_start_6
    invoke-virtual {v6}, Landroid/media/MediaCodec;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c

    .line 411
    :cond_3
    :goto_5
    if-eqz v4, :cond_4

    .line 413
    :try_start_7
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_d

    .line 414
    :cond_4
    :goto_6
    throw v2

    .line 268
    :cond_5
    :try_start_8
    invoke-virtual {v4, v2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 270
    invoke-virtual {v4, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v12

    .line 271
    const-string/jumbo v2, "TextureTranscoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Input format "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string/jumbo v2, "rotation-degrees"

    invoke-virtual {v12, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 276
    const-string/jumbo v2, "rotation-degrees"

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 279
    :cond_6
    const-string/jumbo v2, "width"

    invoke-virtual {v12, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v13

    .line 280
    const-string/jumbo v2, "height"

    invoke-virtual {v12, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v14

    .line 282
    const/4 v2, 0x0

    .line 283
    const-string/jumbo v3, "frame-rate"

    invoke-virtual {v12, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v3

    if-eqz v3, :cond_7

    .line 285
    :try_start_9
    const-string/jumbo v2, "frame-rate"

    invoke-virtual {v12, v2}, Landroid/media/MediaFormat;->getFloat(Ljava/lang/String;)F
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result v2

    float-to-int v2, v2

    .line 290
    :cond_7
    :goto_7
    if-nez v2, :cond_19

    .line 291
    const/16 v2, 0x1e

    move v11, v2

    .line 294
    :goto_8
    if-lez v11, :cond_8

    const/4 v2, 0x1

    :goto_9
    :try_start_a
    invoke-static {v2}, Lcom/twitter/util/h;->b(Z)Z

    .line 295
    move-object/from16 v0, p0

    iget v2, v0, Lcom/twitter/library/media/util/transcode/d;->h:I

    add-int/2addr v2, v11

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/twitter/library/media/util/transcode/d;->h:I

    div-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/twitter/library/media/util/transcode/d;->i:I

    .line 297
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/twitter/library/media/util/transcode/d;->e:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/twitter/library/media/util/transcode/d;->d:J

    move-wide/from16 v16, v0

    sub-long v2, v2, v16

    .line 298
    const-wide/16 v16, 0x0

    cmp-long v2, v2, v16

    if-gtz v2, :cond_9

    .line 299
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Duration can\'t be 0, end == start"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 389
    :catchall_1
    move-exception v2

    goto/16 :goto_1

    .line 286
    :catch_1
    move-exception v2

    .line 287
    const-string/jumbo v2, "frame-rate"

    invoke-virtual {v12, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    goto :goto_7

    .line 294
    :cond_8
    const/4 v2, 0x0

    goto :goto_9

    .line 302
    :cond_9
    new-instance v7, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v7}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/media/util/transcode/d;->c:Ljava/lang/String;

    invoke-virtual {v7, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 304
    const/4 v2, 0x0

    .line 305
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x11

    if-lt v3, v10, :cond_12

    .line 306
    const/16 v3, 0x18

    invoke-virtual {v7, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 308
    if-eqz v3, :cond_a

    .line 309
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_a
    move v3, v2

    .line 318
    :goto_a
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 320
    invoke-static {v13, v14}, Lcom/twitter/util/math/Size;->a(II)Lcom/twitter/util/math/Size;

    move-result-object v2

    .line 322
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/library/media/util/transcode/d;->f:Lcom/twitter/util/math/Size;

    if-eqz v7, :cond_16

    .line 323
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/library/media/util/transcode/d;->f:Lcom/twitter/util/math/Size;

    invoke-virtual {v7}, Lcom/twitter/util/math/Size;->a()I

    move-result v15

    .line 324
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/library/media/util/transcode/d;->f:Lcom/twitter/util/math/Size;

    invoke-virtual {v7}, Lcom/twitter/util/math/Size;->b()I

    move-result v16

    .line 325
    move/from16 v0, v16

    if-le v15, v0, :cond_13

    const/4 v7, 0x1

    move v10, v7

    .line 326
    :goto_b
    if-le v13, v14, :cond_14

    const/4 v7, 0x1

    .line 327
    :goto_c
    if-ne v7, v10, :cond_15

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/library/media/util/transcode/d;->f:Lcom/twitter/util/math/Size;

    .line 330
    :goto_d
    invoke-virtual {v2, v7}, Lcom/twitter/util/math/Size;->c(Lcom/twitter/util/math/Size;)Lcom/twitter/util/math/Size;

    move-result-object v7

    invoke-virtual {v7}, Lcom/twitter/util/math/Size;->a()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2}, Lcom/twitter/util/math/Size;->a()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v7, v10

    .line 331
    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v10, v7, v10

    if-gez v10, :cond_b

    .line 333
    invoke-static {v13, v7}, Lcom/twitter/media/MediaUtils;->a(IF)I

    move-result v2

    .line 334
    invoke-static {v14, v7}, Lcom/twitter/media/MediaUtils;->a(IF)I

    move-result v7

    .line 332
    invoke-static {v2, v7}, Lcom/twitter/util/math/Size;->a(II)Lcom/twitter/util/math/Size;

    move-result-object v2

    :cond_b
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/library/media/util/transcode/d;->j:Lcom/twitter/util/math/Size;

    .line 340
    :goto_e
    const/16 v2, 0x5a

    if-eq v3, v2, :cond_c

    const/16 v2, 0x10e

    if-ne v3, v2, :cond_17

    :cond_c
    const-string/jumbo v2, "video/avc"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/library/media/util/transcode/d;->j:Lcom/twitter/util/math/Size;

    .line 342
    invoke-virtual {v7}, Lcom/twitter/util/math/Size;->b()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/twitter/library/media/util/transcode/d;->j:Lcom/twitter/util/math/Size;

    invoke-virtual {v10}, Lcom/twitter/util/math/Size;->a()I

    move-result v10

    .line 341
    invoke-static {v2, v7, v10}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    .line 348
    :goto_f
    const-string/jumbo v7, "color-format"

    const v10, 0x7f000789

    invoke-virtual {v2, v7, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 350
    const-string/jumbo v7, "bitrate"

    move-object/from16 v0, p0

    iget v10, v0, Lcom/twitter/library/media/util/transcode/d;->g:I

    invoke-virtual {v2, v7, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 351
    const-string/jumbo v7, "frame-rate"

    move-object/from16 v0, p0

    iget v10, v0, Lcom/twitter/library/media/util/transcode/d;->i:I

    div-int v10, v11, v10

    invoke-virtual {v2, v7, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 353
    const-string/jumbo v7, "i-frame-interval"

    const/4 v10, 0x5

    invoke-virtual {v2, v7, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 354
    const-string/jumbo v7, "TextureTranscoder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Output format "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string/jumbo v7, "video/avc"

    invoke-static {v7}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v8

    .line 359
    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v8, v2, v7, v10, v11}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 360
    new-instance v7, Lcom/twitter/library/media/util/transcode/a;

    invoke-virtual {v8}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/twitter/library/media/util/transcode/a;-><init>(Landroid/view/Surface;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 361
    :try_start_b
    invoke-virtual {v7}, Lcom/twitter/library/media/util/transcode/a;->b()V

    .line 362
    invoke-virtual {v8}, Landroid/media/MediaCodec;->start()V

    .line 367
    const-string/jumbo v2, "mime"

    invoke-virtual {v12, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 368
    invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_f
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-result-object v5

    .line 369
    :try_start_c
    new-instance v6, Lcom/twitter/library/media/util/transcode/b;

    invoke-direct {v6}, Lcom/twitter/library/media/util/transcode/b;-><init>()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_10
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 370
    :try_start_d
    const-string/jumbo v2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-virtual {v6, v2}, Lcom/twitter/library/media/util/transcode/b;->a(Ljava/lang/String;)V

    .line 374
    const-string/jumbo v2, "width"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/library/media/util/transcode/d;->j:Lcom/twitter/util/math/Size;

    invoke-virtual {v9}, Lcom/twitter/util/math/Size;->a()I

    move-result v9

    invoke-virtual {v12, v2, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 375
    const-string/jumbo v2, "height"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/library/media/util/transcode/d;->j:Lcom/twitter/util/math/Size;

    invoke-virtual {v9}, Lcom/twitter/util/math/Size;->b()I

    move-result v9

    invoke-virtual {v12, v2, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 377
    :try_start_e
    invoke-virtual {v6}, Lcom/twitter/library/media/util/transcode/b;->b()Landroid/view/Surface;

    move-result-object v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v12, v2, v9, v10}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 381
    :try_start_f
    invoke-virtual {v5}, Landroid/media/MediaCodec;->start()V

    .line 382
    new-instance v9, Landroid/media/MediaMuxer;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/twitter/library/media/util/transcode/d;->a(ILandroid/media/MediaExtractor;Landroid/media/MediaCodec;Lcom/twitter/library/media/util/transcode/b;Lcom/twitter/library/media/util/transcode/a;Landroid/media/MediaCodec;Landroid/media/MediaMuxer;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 389
    if-eqz v6, :cond_d

    .line 390
    invoke-virtual {v6}, Lcom/twitter/library/media/util/transcode/b;->a()V

    .line 392
    :cond_d
    if-eqz v7, :cond_e

    .line 393
    invoke-virtual {v7}, Lcom/twitter/library/media/util/transcode/a;->a()V

    .line 395
    :cond_e
    if-eqz v8, :cond_f

    .line 397
    :try_start_10
    invoke-virtual {v8}, Landroid/media/MediaCodec;->stop()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    .line 400
    :goto_10
    :try_start_11
    invoke-virtual {v8}, Landroid/media/MediaCodec;->release()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    .line 403
    :cond_f
    :goto_11
    if-eqz v5, :cond_10

    .line 405
    :try_start_12
    invoke-virtual {v5}, Landroid/media/MediaCodec;->stop()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6

    .line 408
    :goto_12
    :try_start_13
    invoke-virtual {v5}, Landroid/media/MediaCodec;->release()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7

    .line 411
    :cond_10
    :goto_13
    if-eqz v4, :cond_11

    .line 413
    :try_start_14
    invoke-virtual {v4}, Landroid/media/MediaExtractor;->release()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8

    .line 417
    :cond_11
    :goto_14
    return-void

    .line 312
    :cond_12
    const-wide/16 v16, 0x0

    :try_start_15
    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 313
    if-eq v13, v14, :cond_18

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v14, v3, :cond_18

    .line 314
    const/16 v2, 0x5a

    move v3, v2

    .line 316
    :goto_15
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_a

    .line 325
    :cond_13
    const/4 v7, 0x0

    move v10, v7

    goto/16 :goto_b

    .line 326
    :cond_14
    const/4 v7, 0x0

    goto/16 :goto_c

    .line 328
    :cond_15
    move/from16 v0, v16

    invoke-static {v0, v15}, Lcom/twitter/util/math/Size;->a(II)Lcom/twitter/util/math/Size;

    move-result-object v7

    goto/16 :goto_d

    .line 337
    :cond_16
    invoke-static {v13, v14}, Lcom/twitter/util/math/Size;->a(II)Lcom/twitter/util/math/Size;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/twitter/library/media/util/transcode/d;->j:Lcom/twitter/util/math/Size;

    goto/16 :goto_e

    .line 341
    :cond_17
    const-string/jumbo v2, "video/avc"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/library/media/util/transcode/d;->j:Lcom/twitter/util/math/Size;

    .line 344
    invoke-virtual {v7}, Lcom/twitter/util/math/Size;->a()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/twitter/library/media/util/transcode/d;->j:Lcom/twitter/util/math/Size;

    invoke-virtual {v10}, Lcom/twitter/util/math/Size;->b()I

    move-result v10

    .line 343
    invoke-static {v2, v7, v10}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    move-result-object v2

    goto/16 :goto_f

    .line 378
    :catch_2
    move-exception v2

    .line 379
    :try_start_16
    new-instance v3, Lcom/twitter/library/media/util/transcode/TranscoderException;

    const/4 v9, 0x1

    const-string/jumbo v10, "cannot configure decoder"

    invoke-direct {v3, v9, v10, v2}, Lcom/twitter/library/media/util/transcode/TranscoderException;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 384
    :catch_3
    move-exception v2

    goto/16 :goto_0

    .line 398
    :catch_4
    move-exception v2

    goto :goto_10

    .line 401
    :catch_5
    move-exception v2

    goto :goto_11

    .line 406
    :catch_6
    move-exception v2

    goto :goto_12

    .line 409
    :catch_7
    move-exception v2

    goto :goto_13

    .line 414
    :catch_8
    move-exception v2

    goto :goto_14

    .line 398
    :catch_9
    move-exception v3

    goto/16 :goto_2

    .line 401
    :catch_a
    move-exception v3

    goto/16 :goto_3

    .line 406
    :catch_b
    move-exception v3

    goto/16 :goto_4

    .line 409
    :catch_c
    move-exception v3

    goto/16 :goto_5

    .line 414
    :catch_d
    move-exception v3

    goto/16 :goto_6

    .line 389
    :catchall_2
    move-exception v2

    move-object v4, v3

    goto/16 :goto_1

    :catchall_3
    move-exception v2

    move-object v5, v7

    goto/16 :goto_1

    :catchall_4
    move-exception v2

    move-object v6, v5

    move-object v5, v7

    goto/16 :goto_1

    .line 384
    :catch_e
    move-exception v2

    move-object v7, v5

    move-object v4, v3

    move-object v5, v6

    move-object v6, v9

    goto/16 :goto_0

    :catch_f
    move-exception v2

    move-object v5, v6

    move-object v6, v9

    goto/16 :goto_0

    :catch_10
    move-exception v2

    move-object v6, v9

    goto/16 :goto_0

    :cond_18
    move v3, v2

    goto :goto_15

    :cond_19
    move v11, v2

    goto/16 :goto_8
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/twitter/library/media/util/transcode/TranscoderException;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v7, Landroid/media/MediaMuxer;

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-direct {v7, v0, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    .line 91
    new-instance v8, Landroid/media/MediaExtractor;

    invoke-direct {v8}, Landroid/media/MediaExtractor;-><init>()V

    .line 92
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 93
    const-string/jumbo v2, "audio/"

    invoke-static {v8, v2}, Lcom/twitter/media/util/r;->a(Landroid/media/MediaExtractor;Ljava/lang/String;)I

    move-result v2

    .line 94
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 95
    new-instance v2, Lcom/twitter/library/media/util/transcode/TranscoderException;

    const/4 v3, 0x0

    const-string/jumbo v4, "cannot find audio track"

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/twitter/library/media/util/transcode/TranscoderException;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 98
    :cond_0
    invoke-virtual {v8, v2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 99
    invoke-virtual {v8, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 102
    :try_start_0
    invoke-virtual {v7, v2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 107
    const v2, 0x927c0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 108
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 109
    const/4 v2, 0x0

    invoke-virtual {v8, v10, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    .line 112
    new-instance v11, Landroid/media/MediaExtractor;

    invoke-direct {v11}, Landroid/media/MediaExtractor;-><init>()V

    .line 113
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 114
    const-string/jumbo v2, "video/"

    invoke-static {v11, v2}, Lcom/twitter/media/util/r;->a(Landroid/media/MediaExtractor;Ljava/lang/String;)I

    move-result v2

    .line 115
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 116
    new-instance v2, Lcom/twitter/library/media/util/transcode/TranscoderException;

    const/4 v3, 0x0

    const-string/jumbo v4, "cannot find video track"

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/twitter/library/media/util/transcode/TranscoderException;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 103
    :catch_0
    move-exception v3

    .line 104
    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cannot add audio track "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 105
    throw v3

    .line 118
    :cond_1
    invoke-virtual {v11, v2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 119
    invoke-virtual {v11, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 120
    invoke-virtual {v7, v2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v12

    .line 121
    const-string/jumbo v3, "max-input-size"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "max-input-size"

    .line 122
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 124
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 125
    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    .line 127
    invoke-virtual {v7}, Landroid/media/MediaMuxer;->start()V

    .line 129
    new-instance v13, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v13}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 134
    :goto_1
    if-nez v5, :cond_4

    .line 135
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 136
    const/4 v3, 0x0

    invoke-virtual {v8, v10, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    .line 142
    :cond_2
    :goto_2
    const/4 v3, -0x1

    if-ne v4, v3, :cond_5

    const/4 v3, 0x1

    move v6, v3

    .line 143
    :goto_3
    const/4 v3, -0x1

    if-ne v5, v3, :cond_6

    const/4 v3, 0x1

    .line 145
    :goto_4
    if-eqz v6, :cond_7

    if-eqz v3, :cond_7

    .line 176
    invoke-virtual {v7}, Landroid/media/MediaMuxer;->stop()V

    .line 177
    invoke-virtual {v7}, Landroid/media/MediaMuxer;->release()V

    .line 179
    invoke-virtual {v8}, Landroid/media/MediaExtractor;->release()V

    .line 180
    invoke-virtual {v11}, Landroid/media/MediaExtractor;->release()V

    .line 181
    return-void

    .line 122
    :cond_3
    const v2, 0xf4240

    .line 123
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    goto :goto_0

    .line 137
    :cond_4
    if-nez v4, :cond_2

    .line 138
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 139
    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    goto :goto_2

    .line 142
    :cond_5
    const/4 v3, 0x0

    move v6, v3

    goto :goto_3

    .line 143
    :cond_6
    const/4 v3, 0x0

    goto :goto_4

    .line 149
    :cond_7
    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v14

    .line 150
    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v16

    .line 151
    if-nez v6, :cond_b

    if-nez v3, :cond_8

    cmp-long v3, v14, v16

    if-gez v3, :cond_b

    .line 153
    :cond_8
    iput v4, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 154
    iput-wide v14, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 157
    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_9

    const/4 v3, 0x1

    iput v3, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    :goto_5
    iput v3, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 159
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 160
    invoke-virtual {v7, v12, v2, v13}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 161
    invoke-virtual {v11}, Landroid/media/MediaExtractor;->advance()Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    :goto_6
    move v4, v5

    :goto_7
    move v5, v4

    move v4, v3

    .line 174
    goto :goto_1

    .line 157
    :cond_9
    const/4 v3, 0x0

    goto :goto_5

    .line 161
    :cond_a
    const/4 v3, -0x1

    goto :goto_6

    .line 164
    :cond_b
    iput v5, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 165
    move-wide/from16 v0, v16

    iput-wide v0, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 168
    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_c

    const/4 v3, 0x1

    iput v3, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    :goto_8
    iput v3, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 170
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 171
    invoke-virtual {v7, v9, v10, v13}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 172
    invoke-virtual {v8}, Landroid/media/MediaExtractor;->advance()Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    :goto_9
    move/from16 v18, v4

    move v4, v3

    move/from16 v3, v18

    goto :goto_7

    .line 168
    :cond_c
    const/4 v3, 0x0

    goto :goto_8

    .line 172
    :cond_d
    const/4 v3, -0x1

    goto :goto_9
.end method

.method static synthetic b(Lcom/twitter/library/media/util/transcode/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/twitter/library/media/util/transcode/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/library/media/util/transcode/d;)J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/twitter/library/media/util/transcode/d;->d:J

    return-wide v0
.end method

.method static synthetic d()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/twitter/library/media/util/transcode/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/library/media/util/transcode/d;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/twitter/library/media/util/transcode/d;->b:Z

    return v0
.end method

.method static synthetic e(Lcom/twitter/library/media/util/transcode/d;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/twitter/library/media/util/transcode/d;->i:I

    return v0
.end method


# virtual methods
.method public a(I)Lcom/twitter/library/media/util/transcode/d;
    .locals 0

    .prologue
    .line 199
    iput p1, p0, Lcom/twitter/library/media/util/transcode/d;->g:I

    .line 200
    return-object p0
.end method

.method public a(JJ)Lcom/twitter/library/media/util/transcode/d;
    .locals 3

    .prologue
    .line 188
    iput-wide p1, p0, Lcom/twitter/library/media/util/transcode/d;->d:J

    .line 189
    add-long v0, p1, p3

    iput-wide v0, p0, Lcom/twitter/library/media/util/transcode/d;->e:J

    .line 190
    return-object p0
.end method

.method public a(Lcom/twitter/util/math/Size;)Lcom/twitter/library/media/util/transcode/d;
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/twitter/library/media/util/transcode/d;->f:Lcom/twitter/util/math/Size;

    .line 195
    return-object p0
.end method

.method public a()Lcom/twitter/util/math/Size;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/twitter/library/media/util/transcode/d;->j:Lcom/twitter/util/math/Size;

    return-object v0
.end method

.method public b(I)Lcom/twitter/library/media/util/transcode/d;
    .locals 0

    .prologue
    .line 204
    iput p1, p0, Lcom/twitter/library/media/util/transcode/d;->h:I

    .line 205
    return-object p0
.end method

.method public b()Ljava/io/File;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twitter/library/media/util/transcode/TranscoderException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 213
    invoke-static {}, Lcom/twitter/platform/PlatformContext;->e()Lcom/twitter/platform/PlatformContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/platform/PlatformContext;->d()Lcom/twitter/platform/p;

    move-result-object v0

    .line 214
    sget-object v1, Lcom/twitter/media/model/MediaType;->d:Lcom/twitter/media/model/MediaType;

    iget-object v1, v1, Lcom/twitter/media/model/MediaType;->extension:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/twitter/platform/p;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 215
    if-nez v1, :cond_0

    .line 216
    new-instance v0, Lcom/twitter/library/media/util/transcode/TranscoderException;

    const-string/jumbo v1, "cannot create temp video file"

    invoke-direct {v0, v8, v1, v9}, Lcom/twitter/library/media/util/transcode/TranscoderException;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 219
    :cond_0
    const-string/jumbo v2, "m4a"

    invoke-interface {v0, v2}, Lcom/twitter/platform/p;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 220
    if-nez v2, :cond_1

    .line 221
    new-instance v0, Lcom/twitter/library/media/util/transcode/TranscoderException;

    const-string/jumbo v1, "cannot create temp audio file"

    invoke-direct {v0, v8, v1, v9}, Lcom/twitter/library/media/util/transcode/TranscoderException;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 224
    :cond_1
    new-instance v3, Lcom/twitter/library/media/util/transcode/f;

    invoke-direct {v3, p0, v2}, Lcom/twitter/library/media/util/transcode/f;-><init>(Lcom/twitter/library/media/util/transcode/d;Ljava/io/File;)V

    .line 225
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "transcodeThread-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/twitter/library/media/util/transcode/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 226
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 229
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/twitter/library/media/util/transcode/d;->a(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v4}, Ljava/lang/Thread;->join()V

    .line 233
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 234
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-object v0, v1

    .line 245
    :goto_0
    return-object v0

    .line 238
    :cond_3
    sget-object v3, Lcom/twitter/media/model/MediaType;->d:Lcom/twitter/media/model/MediaType;

    iget-object v3, v3, Lcom/twitter/media/model/MediaType;->extension:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/twitter/platform/p;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 239
    if-nez v0, :cond_4

    .line 240
    new-instance v0, Lcom/twitter/library/media/util/transcode/TranscoderException;

    const-string/jumbo v1, "cannot create output video file"

    invoke-direct {v0, v8, v1, v9}, Lcom/twitter/library/media/util/transcode/TranscoderException;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 243
    :cond_4
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 244
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 243
    invoke-static {v3, v4, v5}, Lcom/twitter/library/media/util/transcode/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 250
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    :try_start_1
    new-instance v3, Lcom/twitter/library/media/util/transcode/TranscoderException;

    const/4 v4, 0x0

    const-string/jumbo v5, "cannot combine video and audio"

    invoke-direct {v3, v4, v5, v0}, Lcom/twitter/library/media/util/transcode/TranscoderException;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 250
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/library/media/util/transcode/d;->b:Z

    .line 467
    return-void
.end method
