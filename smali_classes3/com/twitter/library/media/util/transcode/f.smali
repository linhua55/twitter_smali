.class Lcom/twitter/library/media/util/transcode/f;
.super Lcom/twitter/library/media/util/transcode/j;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/library/media/util/transcode/d;

.field private final c:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/twitter/library/media/util/transcode/d;Ljava/io/File;)V
    .locals 1

    .prologue
    .line 497
    iput-object p1, p0, Lcom/twitter/library/media/util/transcode/f;->a:Lcom/twitter/library/media/util/transcode/d;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/library/media/util/transcode/j;-><init>(Lcom/twitter/library/media/util/transcode/d;Lcom/twitter/library/media/util/transcode/e;)V

    .line 498
    iput-object p2, p0, Lcom/twitter/library/media/util/transcode/f;->c:Ljava/io/File;

    .line 499
    return-void
.end method

.method private a(I)Landroid/media/MediaFormat;
    .locals 4

    .prologue
    .line 723
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 724
    const-string/jumbo v1, "mime"

    const-string/jumbo v2, "audio/mp4a-latm"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const-string/jumbo v1, "aac-profile"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 727
    const-string/jumbo v1, "sample-rate"

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 728
    const-string/jumbo v1, "channel-count"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 729
    const-string/jumbo v1, "bitrate"

    const v2, 0xfa00

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 730
    const-string/jumbo v1, "max-input-size"

    const v2, 0x3ec28f5c    # 0.38f

    int-to-float v3, p1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 731
    return-object v0
.end method

.method private a([BILjava/lang/String;I)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twitter/library/media/util/transcode/TranscoderException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 668
    const-string/jumbo v2, "audio/mp4a-latm"

    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    .line 669
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/twitter/library/media/util/transcode/f;->a(I)Landroid/media/MediaFormat;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 671
    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 673
    new-instance v5, Landroid/media/MediaMuxer;

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-direct {v5, v0, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    .line 674
    new-instance v2, Lcom/twitter/library/media/util/transcode/h;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/library/media/util/transcode/f;->a:Lcom/twitter/library/media/util/transcode/d;

    const-wide/16 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/twitter/library/media/util/transcode/h;-><init>(Lcom/twitter/library/media/util/transcode/d;Landroid/media/MediaCodec;Landroid/media/MediaMuxer;J)V

    .line 675
    new-instance v13, Ljava/lang/Thread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "encodeAudio-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 676
    invoke-static {}, Lcom/twitter/library/media/util/transcode/d;->d()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 677
    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    .line 680
    const/4 v3, 0x0

    .line 681
    :try_start_0
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 682
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/library/media/util/transcode/f;->a:Lcom/twitter/library/media/util/transcode/d;

    invoke-static {v6}, Lcom/twitter/library/media/util/transcode/d;->d(Lcom/twitter/library/media/util/transcode/d;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 684
    const-wide/16 v6, -0x1

    invoke-virtual {v4, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v7

    .line 685
    if-ltz v7, :cond_0

    .line 686
    aget-object v6, v14, v7

    .line 687
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 688
    const/16 v8, 0x800

    sub-int v9, p2, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 689
    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v3, v9}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 691
    int-to-long v10, v3

    const-wide/32 v16, 0xf4240

    mul-long v10, v10, v16

    mul-int/lit8 v6, p4, 0x2

    int-to-long v0, v6

    move-wide/from16 v16, v0

    div-long v10, v10, v16

    .line 692
    add-int v6, v3, v9

    move/from16 v0, p2

    if-lt v6, v0, :cond_2

    .line 693
    const/4 v8, 0x0

    const/4 v12, 0x4

    move-object v6, v4

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 702
    :cond_1
    invoke-virtual {v13}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    :try_start_1
    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 710
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 713
    :goto_2
    :try_start_3
    invoke-virtual {v5}, Landroid/media/MediaMuxer;->stop()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 716
    :goto_3
    :try_start_4
    invoke-virtual {v5}, Landroid/media/MediaMuxer;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 719
    :goto_4
    invoke-virtual {v2}, Lcom/twitter/library/media/util/transcode/h;->b()V

    .line 720
    return-void

    .line 697
    :cond_2
    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v6, v4

    :try_start_5
    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 698
    add-int/2addr v3, v9

    goto :goto_0

    .line 703
    :catch_0
    move-exception v2

    .line 704
    :try_start_6
    new-instance v3, Lcom/twitter/library/media/util/transcode/TranscoderException;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7, v2}, Lcom/twitter/library/media/util/transcode/TranscoderException;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 706
    :catchall_0
    move-exception v2

    .line 707
    :try_start_7
    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 710
    :goto_5
    :try_start_8
    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 713
    :goto_6
    :try_start_9
    invoke-virtual {v5}, Landroid/media/MediaMuxer;->stop()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 716
    :goto_7
    :try_start_a
    invoke-virtual {v5}, Landroid/media/MediaMuxer;->release()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 717
    :goto_8
    throw v2

    .line 708
    :catch_1
    move-exception v3

    goto :goto_1

    .line 711
    :catch_2
    move-exception v3

    goto :goto_2

    .line 714
    :catch_3
    move-exception v3

    goto :goto_3

    .line 717
    :catch_4
    move-exception v3

    goto :goto_4

    .line 708
    :catch_5
    move-exception v3

    goto :goto_5

    .line 711
    :catch_6
    move-exception v3

    goto :goto_6

    .line 714
    :catch_7
    move-exception v3

    goto :goto_7

    .line 717
    :catch_8
    move-exception v3

    goto :goto_8
.end method


# virtual methods
.method a()V
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twitter/library/media/util/transcode/TranscoderException;
        }
    .end annotation

    .prologue
    .line 503
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/library/media/util/transcode/f;->a:Lcom/twitter/library/media/util/transcode/d;

    invoke-static {v4}, Lcom/twitter/library/media/util/transcode/d;->a(Lcom/twitter/library/media/util/transcode/d;)J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    add-long v24, v4, v6

    .line 504
    const/4 v6, 0x0

    .line 505
    const/4 v5, 0x0

    .line 507
    :try_start_0
    new-instance v19, Landroid/media/MediaExtractor;

    invoke-direct/range {v19 .. v19}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 508
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/library/media/util/transcode/f;->a:Lcom/twitter/library/media/util/transcode/d;

    invoke-static {v4}, Lcom/twitter/library/media/util/transcode/d;->b(Lcom/twitter/library/media/util/transcode/d;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 509
    const-string/jumbo v4, "audio/"

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Lcom/twitter/media/util/r;->a(Landroid/media/MediaExtractor;Ljava/lang/String;)I

    move-result v4

    .line 510
    if-gez v4, :cond_2

    .line 511
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/library/media/util/transcode/f;->c:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 650
    if-eqz v19, :cond_0

    .line 652
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaExtractor;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 655
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 657
    :try_start_3
    invoke-virtual {v5}, Landroid/media/MediaCodec;->stop()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 660
    :goto_1
    :try_start_4
    invoke-virtual {v5}, Landroid/media/MediaCodec;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 664
    :cond_1
    :goto_2
    return-void

    .line 514
    :cond_2
    :try_start_5
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 516
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v6

    .line 517
    const-string/jumbo v4, "channel-count"

    invoke-virtual {v6, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v18

    .line 518
    const/4 v4, -0x1

    .line 519
    const-string/jumbo v7, "sample-rate"

    invoke-virtual {v6, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 520
    const-string/jumbo v4, "sample-rate"

    invoke-virtual {v6, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    move/from16 v22, v4

    .line 522
    :goto_3
    if-gez v22, :cond_5

    .line 523
    new-instance v4, Lcom/twitter/library/media/util/transcode/TranscoderException;

    const/4 v6, 0x1

    const-string/jumbo v7, "no sample rate"

    const/4 v8, 0x0

    invoke-direct {v4, v6, v7, v8}, Lcom/twitter/library/media/util/transcode/TranscoderException;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 647
    :catch_0
    move-exception v4

    move-object/from16 v6, v19

    .line 648
    :goto_4
    :try_start_6
    new-instance v7, Lcom/twitter/library/media/util/transcode/TranscoderException;

    const/4 v8, 0x1

    const-string/jumbo v9, "failed to transcode audio"

    invoke-direct {v7, v8, v9, v4}, Lcom/twitter/library/media/util/transcode/TranscoderException;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 650
    :catchall_0
    move-exception v4

    move-object/from16 v19, v6

    :goto_5
    if-eqz v19, :cond_3

    .line 652
    :try_start_7
    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaExtractor;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 655
    :cond_3
    :goto_6
    if-eqz v5, :cond_4

    .line 657
    :try_start_8
    invoke-virtual {v5}, Landroid/media/MediaCodec;->stop()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 660
    :goto_7
    :try_start_9
    invoke-virtual {v5}, Landroid/media/MediaCodec;->release()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 661
    :cond_4
    :goto_8
    throw v4

    .line 526
    :cond_5
    :try_start_a
    const-string/jumbo v4, "mime"

    invoke-virtual {v6, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 527
    invoke-static {v4}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result-object v4

    .line 528
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_b
    invoke-virtual {v4, v6, v5, v7, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 529
    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 530
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 531
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 534
    new-instance v23, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v23 .. v23}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 536
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/library/media/util/transcode/f;->a:Lcom/twitter/library/media/util/transcode/d;

    .line 537
    invoke-static {v5}, Lcom/twitter/library/media/util/transcode/d;->c(Lcom/twitter/library/media/util/transcode/d;)J

    move-result-wide v6

    sub-long v6, v24, v6

    move/from16 v0, v22

    int-to-long v8, v0

    mul-long/2addr v6, v8

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    long-to-int v15, v6

    .line 538
    mul-int/lit8 v5, v15, 0x2

    new-array v0, v5, [B

    move-object/from16 v26, v0

    .line 540
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/library/media/util/transcode/f;->a:Lcom/twitter/library/media/util/transcode/d;

    invoke-static {v5}, Lcom/twitter/library/media/util/transcode/d;->c(Lcom/twitter/library/media/util/transcode/d;)J

    move-result-wide v6

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 541
    const-string/jumbo v5, "TextureTranscoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Audio transcode start at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " desired start is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/library/media/util/transcode/f;->a:Lcom/twitter/library/media/util/transcode/d;

    .line 542
    invoke-static {v7}, Lcom/twitter/library/media/util/transcode/d;->c(Lcom/twitter/library/media/util/transcode/d;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 541
    invoke-static {v5, v6}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const/16 v20, 0x0

    .line 544
    const/4 v11, 0x0

    .line 545
    const/4 v8, 0x0

    .line 547
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 548
    const/4 v13, 0x0

    .line 549
    const/4 v12, 0x0

    .line 550
    :goto_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/library/media/util/transcode/f;->a:Lcom/twitter/library/media/util/transcode/d;

    invoke-static {v5}, Lcom/twitter/library/media/util/transcode/d;->d(Lcom/twitter/library/media/util/transcode/d;)Z

    move-result v5

    if-nez v5, :cond_10

    if-nez v11, :cond_10

    const/16 v5, 0x32

    if-ge v8, v5, :cond_10

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_10

    .line 551
    add-int/lit8 v6, v8, 0x1

    .line 553
    if-nez v20, :cond_17

    .line 554
    const-wide/16 v8, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 555
    if-ltz v5, :cond_8

    .line 556
    const/16 v21, 0x0

    .line 557
    aget-object v6, v17, v5

    .line 558
    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    .line 559
    const-wide/16 v8, 0x0

    .line 560
    if-gez v7, :cond_6

    .line 561
    const/4 v6, 0x1

    .line 562
    const/4 v7, 0x0

    move/from16 v20, v6

    .line 566
    :goto_a
    const/4 v6, 0x0

    if-eqz v20, :cond_7

    const/4 v10, 0x4

    :goto_b
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 569
    if-nez v20, :cond_16

    .line 570
    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaExtractor;->advance()Z

    move/from16 v8, v21

    goto :goto_9

    .line 564
    :cond_6
    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    goto :goto_a

    .line 566
    :cond_7
    const/4 v10, 0x0

    goto :goto_b

    .line 575
    :cond_8
    const-wide/16 v8, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0, v8, v9}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v21

    .line 576
    if-ltz v21, :cond_f

    .line 577
    move-object/from16 v0, v23

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v5, :cond_15

    .line 578
    const/4 v9, 0x0

    .line 581
    :goto_c
    aget-object v5, v16, v21

    .line 583
    if-eqz v12, :cond_9

    array-length v6, v12

    move-object/from16 v0, v23

    iget v7, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ge v6, v7, :cond_14

    .line 584
    :cond_9
    move-object/from16 v0, v23

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v6, v6, [B

    .line 590
    :goto_d
    move-object/from16 v0, v23

    iget v7, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 591
    move-object/from16 v0, v23

    iget v7, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v23

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v7, v8

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 592
    const/4 v7, 0x0

    move-object/from16 v0, v23

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v5, v6, v7, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 593
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 595
    mul-int/lit8 v5, v18, 0x2

    .line 597
    div-int/lit8 v7, v13, 0x2

    int-to-long v0, v7

    move-wide/from16 v28, v0

    move-object/from16 v0, v23

    iget v7, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    div-int/2addr v7, v5

    int-to-long v0, v7

    move-wide/from16 v30, v0

    const-wide/32 v32, 0xf4240

    mul-long v30, v30, v32

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v32, v0

    div-long v30, v30, v32

    add-long v28, v28, v30

    .line 601
    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmp-long v7, v30, v32

    if-eqz v7, :cond_a

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v30, v0

    div-long v28, v28, v30

    const-wide/16 v30, 0x2

    cmp-long v7, v28, v30

    if-nez v7, :cond_a

    .line 602
    mul-int/lit8 v18, v18, 0x2

    .line 603
    mul-int/lit8 v5, v18, 0x2

    .line 604
    const-string/jumbo v7, "TextureTranscoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Updated channel count to "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    move/from16 v12, v18

    move/from16 v18, v5

    .line 607
    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v28, v0

    cmp-long v5, v28, v24

    if-ltz v5, :cond_c

    .line 608
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move v7, v13

    move v10, v15

    .line 634
    :cond_b
    :goto_e
    const/4 v5, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 635
    move-object/from16 v0, v23

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_18

    .line 636
    const/4 v5, 0x1

    :goto_f
    move v11, v5

    move v13, v12

    move-object v5, v6

    move-object/from16 v12, v17

    move v6, v7

    move-object v7, v8

    move v8, v9

    move v9, v10

    move-object/from16 v10, v16

    :goto_10
    move-object v14, v7

    move v15, v9

    move-object/from16 v16, v10

    move-object/from16 v17, v12

    move/from16 v18, v13

    move v13, v6

    move-object v12, v5

    .line 642
    goto/16 :goto_9

    .line 610
    :cond_c
    move-object/from16 v0, v23

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    div-int v5, v5, v18

    .line 611
    if-ge v5, v15, :cond_d

    .line 612
    sub-int v10, v15, v5

    move v15, v5

    move-object v8, v14

    .line 617
    :goto_11
    const/4 v5, 0x1

    if-ne v12, v5, :cond_e

    .line 618
    mul-int/lit8 v5, v15, 0x2

    .line 619
    const/4 v7, 0x0

    move-object/from16 v0, v26

    invoke-static {v6, v7, v0, v13, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 620
    add-int v7, v13, v5

    .line 621
    goto :goto_e

    .line 615
    :cond_d
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move v10, v15

    goto :goto_11

    .line 622
    :cond_e
    const/4 v5, 0x0

    move v7, v13

    :goto_12
    if-ge v5, v15, :cond_b

    .line 623
    mul-int v13, v5, v18

    .line 624
    aget-byte v14, v6, v13

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v27, v13, 0x1

    aget-byte v27, v6, v27

    shl-int/lit8 v27, v27, 0x8

    or-int v14, v14, v27

    .line 625
    add-int/lit8 v27, v13, 0x2

    aget-byte v27, v6, v27

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    add-int/lit8 v13, v13, 0x3

    aget-byte v13, v6, v13

    shl-int/lit8 v13, v13, 0x8

    or-int v13, v13, v27

    .line 627
    add-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    .line 628
    add-int/lit8 v14, v7, 0x1

    int-to-byte v0, v13

    move/from16 v27, v0

    aput-byte v27, v26, v7

    .line 629
    add-int/lit8 v7, v14, 0x1

    shr-int/lit8 v13, v13, 0x8

    int-to-byte v13, v13

    aput-byte v13, v26, v14

    .line 622
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 638
    :cond_f
    const/4 v5, -0x3

    move/from16 v0, v21

    if-ne v0, v5, :cond_13

    .line 639
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 640
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    move v8, v6

    move v9, v15

    move-object v10, v5

    move-object v5, v12

    move v6, v13

    move-object v12, v7

    move/from16 v13, v18

    move-object v7, v14

    goto :goto_10

    .line 644
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/library/media/util/transcode/f;->a:Lcom/twitter/library/media/util/transcode/d;

    invoke-static {v5}, Lcom/twitter/library/media/util/transcode/d;->d(Lcom/twitter/library/media/util/transcode/d;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 645
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/library/media/util/transcode/f;->c:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v22

    invoke-direct {v0, v1, v13, v5, v2}, Lcom/twitter/library/media/util/transcode/f;->a([BILjava/lang/String;I)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 650
    :cond_11
    if-eqz v19, :cond_12

    .line 652
    :try_start_c
    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaExtractor;->release()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    .line 655
    :cond_12
    :goto_13
    if-eqz v4, :cond_1

    .line 657
    :try_start_d
    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 660
    :goto_14
    :try_start_e
    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    goto/16 :goto_2

    .line 661
    :catch_1
    move-exception v4

    goto/16 :goto_2

    .line 653
    :catch_2
    move-exception v4

    goto/16 :goto_0

    .line 658
    :catch_3
    move-exception v4

    goto/16 :goto_1

    .line 661
    :catch_4
    move-exception v4

    goto/16 :goto_2

    .line 653
    :catch_5
    move-exception v5

    goto :goto_13

    .line 658
    :catch_6
    move-exception v5

    goto :goto_14

    .line 653
    :catch_7
    move-exception v6

    goto/16 :goto_6

    .line 658
    :catch_8
    move-exception v6

    goto/16 :goto_7

    .line 661
    :catch_9
    move-exception v5

    goto/16 :goto_8

    .line 650
    :catchall_1
    move-exception v4

    move-object/from16 v19, v6

    goto/16 :goto_5

    :catchall_2
    move-exception v4

    goto/16 :goto_5

    :catchall_3
    move-exception v5

    move-object/from16 v34, v5

    move-object v5, v4

    move-object/from16 v4, v34

    goto/16 :goto_5

    .line 647
    :catch_a
    move-exception v4

    goto/16 :goto_4

    :catch_b
    move-exception v5

    move-object/from16 v6, v19

    move-object/from16 v34, v4

    move-object v4, v5

    move-object/from16 v5, v34

    goto/16 :goto_4

    :cond_13
    move-object v5, v12

    move-object v7, v14

    move v8, v6

    move v9, v15

    move-object/from16 v10, v16

    move v6, v13

    move-object/from16 v12, v17

    move/from16 v13, v18

    goto/16 :goto_10

    :cond_14
    move-object v6, v12

    goto/16 :goto_d

    :cond_15
    move v9, v6

    goto/16 :goto_c

    :cond_16
    move/from16 v8, v21

    goto/16 :goto_9

    :cond_17
    move v8, v6

    goto/16 :goto_9

    :cond_18
    move v5, v11

    goto/16 :goto_f

    :cond_19
    move/from16 v22, v4

    goto/16 :goto_3
.end method
