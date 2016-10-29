.class final Lokhttp3/j;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Lokhttp3/ah;

.field private final e:Ljava/lang/String;

.field private final f:Lokhttp3/Protocol;

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:Lokhttp3/ah;

.field private final j:Lokhttp3/ag;

.field private final k:J

.field private final l:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ldgx;->b()Ldgx;

    move-result-object v1

    invoke-virtual {v1}, Ldgx;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-Sent-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/j;->a:Ljava/lang/String;

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ldgx;->b()Ldgx;

    move-result-object v1

    invoke-virtual {v1}, Ldgx;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/j;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lokhttp3/ax;)V
    .locals 2

    .prologue
    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    invoke-virtual {p1}, Lokhttp3/ax;->a()Lokhttp3/at;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/at;->a()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/j;->c:Ljava/lang/String;

    .line 595
    invoke-static {p1}, Ldgg;->c(Lokhttp3/ax;)Lokhttp3/ah;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/j;->d:Lokhttp3/ah;

    .line 596
    invoke-virtual {p1}, Lokhttp3/ax;->a()Lokhttp3/at;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/at;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/j;->e:Ljava/lang/String;

    .line 597
    invoke-virtual {p1}, Lokhttp3/ax;->b()Lokhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/j;->f:Lokhttp3/Protocol;

    .line 598
    invoke-virtual {p1}, Lokhttp3/ax;->c()I

    move-result v0

    iput v0, p0, Lokhttp3/j;->g:I

    .line 599
    invoke-virtual {p1}, Lokhttp3/ax;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/j;->h:Ljava/lang/String;

    .line 600
    invoke-virtual {p1}, Lokhttp3/ax;->f()Lokhttp3/ah;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/j;->i:Lokhttp3/ah;

    .line 601
    invoke-virtual {p1}, Lokhttp3/ax;->e()Lokhttp3/ag;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/j;->j:Lokhttp3/ag;

    .line 602
    invoke-virtual {p1}, Lokhttp3/ax;->k()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/j;->k:J

    .line 603
    invoke-virtual {p1}, Lokhttp3/ax;->l()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/j;->l:J

    .line 604
    return-void
.end method

.method public constructor <init>(Lokio/ab;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    :try_start_0
    invoke-static {p1}, Lokio/q;->a(Lokio/ab;)Lokio/j;

    move-result-object v6

    .line 542
    invoke-interface {v6}, Lokio/j;->s()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lokhttp3/j;->c:Ljava/lang/String;

    .line 543
    invoke-interface {v6}, Lokio/j;->s()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lokhttp3/j;->e:Ljava/lang/String;

    .line 544
    new-instance v5, Lokhttp3/aj;

    invoke-direct {v5}, Lokhttp3/aj;-><init>()V

    .line 545
    invoke-static {v6}, Lokhttp3/d;->a(Lokio/j;)I

    move-result v7

    move v4, v1

    .line 546
    :goto_0
    if-ge v4, v7, :cond_0

    .line 547
    invoke-interface {v6}, Lokio/j;->s()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lokhttp3/aj;->a(Ljava/lang/String;)Lokhttp3/aj;

    .line 546
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 549
    :cond_0
    invoke-virtual {v5}, Lokhttp3/aj;->a()Lokhttp3/ah;

    move-result-object v4

    iput-object v4, p0, Lokhttp3/j;->d:Lokhttp3/ah;

    .line 551
    invoke-interface {v6}, Lokio/j;->s()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldgn;->a(Ljava/lang/String;)Ldgn;

    move-result-object v4

    .line 552
    iget-object v5, v4, Ldgn;->a:Lokhttp3/Protocol;

    iput-object v5, p0, Lokhttp3/j;->f:Lokhttp3/Protocol;

    .line 553
    iget v5, v4, Ldgn;->b:I

    iput v5, p0, Lokhttp3/j;->g:I

    .line 554
    iget-object v4, v4, Ldgn;->c:Ljava/lang/String;

    iput-object v4, p0, Lokhttp3/j;->h:Ljava/lang/String;

    .line 555
    new-instance v7, Lokhttp3/aj;

    invoke-direct {v7}, Lokhttp3/aj;-><init>()V

    .line 556
    invoke-static {v6}, Lokhttp3/d;->a(Lokio/j;)I

    move-result v4

    .line 557
    :goto_1
    if-ge v1, v4, :cond_1

    .line 558
    invoke-interface {v6}, Lokio/j;->s()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lokhttp3/aj;->a(Ljava/lang/String;)Lokhttp3/aj;

    .line 557
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 560
    :cond_1
    sget-object v1, Lokhttp3/j;->a:Ljava/lang/String;

    invoke-virtual {v7, v1}, Lokhttp3/aj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 561
    sget-object v4, Lokhttp3/j;->b:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lokhttp3/aj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 562
    sget-object v4, Lokhttp3/j;->a:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lokhttp3/aj;->b(Ljava/lang/String;)Lokhttp3/aj;

    .line 563
    sget-object v4, Lokhttp3/j;->b:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lokhttp3/aj;->b(Ljava/lang/String;)Lokhttp3/aj;

    .line 564
    if-eqz v1, :cond_3

    .line 565
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    :goto_2
    iput-wide v4, p0, Lokhttp3/j;->k:J

    .line 567
    if-eqz v8, :cond_2

    .line 568
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :cond_2
    iput-wide v2, p0, Lokhttp3/j;->l:J

    .line 570
    invoke-virtual {v7}, Lokhttp3/aj;->a()Lokhttp3/ah;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/j;->i:Lokhttp3/ah;

    .line 572
    invoke-direct {p0}, Lokhttp3/j;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 573
    invoke-interface {v6}, Lokio/j;->s()Ljava/lang/String;

    move-result-object v1

    .line 574
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 575
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "expected \"\" but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lokio/ab;->close()V

    throw v0

    :cond_3
    move-wide v4, v2

    .line 565
    goto :goto_2

    .line 577
    :cond_4
    :try_start_1
    invoke-interface {v6}, Lokio/j;->s()Ljava/lang/String;

    move-result-object v1

    .line 578
    invoke-static {v1}, Lokhttp3/t;->a(Ljava/lang/String;)Lokhttp3/t;

    move-result-object v1

    .line 579
    invoke-direct {p0, v6}, Lokhttp3/j;->a(Lokio/j;)Ljava/util/List;

    move-result-object v2

    .line 580
    invoke-direct {p0, v6}, Lokhttp3/j;->a(Lokio/j;)Ljava/util/List;

    move-result-object v3

    .line 581
    invoke-interface {v6}, Lokio/j;->f()Z

    move-result v4

    if-nez v4, :cond_5

    .line 582
    invoke-interface {v6}, Lokio/j;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/TlsVersion;->a(Ljava/lang/String;)Lokhttp3/TlsVersion;

    move-result-object v0

    .line 584
    :cond_5
    invoke-static {v0, v1, v2, v3}, Lokhttp3/ag;->a(Lokhttp3/TlsVersion;Lokhttp3/t;Ljava/util/List;Ljava/util/List;)Lokhttp3/ag;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/j;->j:Lokhttp3/ag;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 589
    :goto_3
    invoke-interface {p1}, Lokio/ab;->close()V

    .line 591
    return-void

    .line 586
    :cond_6
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lokhttp3/j;->j:Lokhttp3/ag;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private a(Lokio/j;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/j;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 661
    invoke-static {p1}, Lokhttp3/d;->a(Lokio/j;)I

    move-result v2

    .line 662
    const/4 v0, -0x1

    if-ne v2, v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 673
    :cond_0
    return-object v0

    .line 665
    :cond_1
    :try_start_0
    const-string/jumbo v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 666
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 667
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 668
    invoke-interface {p1}, Lokio/j;->s()Ljava/lang/String;

    move-result-object v4

    .line 669
    new-instance v5, Lokio/f;

    invoke-direct {v5}, Lokio/f;-><init>()V

    .line 670
    invoke-static {v4}, Lokio/ByteString;->b(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v4

    invoke-virtual {v5, v4}, Lokio/f;->a(Lokio/ByteString;)Lokio/f;

    .line 671
    invoke-virtual {v5}, Lokio/f;->g()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 674
    :catch_0
    move-exception v0

    .line 675
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Lokio/i;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/i;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 682
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lokio/i;->l(J)Lokio/i;

    move-result-object v0

    const/16 v1, 0xa

    .line 683
    invoke-interface {v0, v1}, Lokio/i;->i(I)Lokio/i;

    .line 684
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 685
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    .line 686
    invoke-static {v0}, Lokio/ByteString;->a([B)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->b()Ljava/lang/String;

    move-result-object v0

    .line 687
    invoke-interface {p1, v0}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    move-result-object v0

    const/16 v3, 0xa

    .line 688
    invoke-interface {v0, v3}, Lokio/i;->i(I)Lokio/i;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 690
    :catch_0
    move-exception v0

    .line 691
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 693
    :cond_0
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 657
    iget-object v0, p0, Lokhttp3/j;->c:Ljava/lang/String;

    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ldfp;)Lokhttp3/ax;
    .locals 5

    .prologue
    .line 702
    iget-object v0, p0, Lokhttp3/j;->i:Lokhttp3/ah;

    const-string/jumbo v1, "Content-Type"

    invoke-virtual {v0, v1}, Lokhttp3/ah;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 703
    iget-object v1, p0, Lokhttp3/j;->i:Lokhttp3/ah;

    const-string/jumbo v2, "Content-Length"

    invoke-virtual {v1, v2}, Lokhttp3/ah;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 704
    new-instance v2, Lokhttp3/av;

    invoke-direct {v2}, Lokhttp3/av;-><init>()V

    iget-object v3, p0, Lokhttp3/j;->c:Ljava/lang/String;

    .line 705
    invoke-virtual {v2, v3}, Lokhttp3/av;->a(Ljava/lang/String;)Lokhttp3/av;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/j;->e:Ljava/lang/String;

    const/4 v4, 0x0

    .line 706
    invoke-virtual {v2, v3, v4}, Lokhttp3/av;->a(Ljava/lang/String;Lokhttp3/aw;)Lokhttp3/av;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/j;->d:Lokhttp3/ah;

    .line 707
    invoke-virtual {v2, v3}, Lokhttp3/av;->a(Lokhttp3/ah;)Lokhttp3/av;

    move-result-object v2

    .line 708
    invoke-virtual {v2}, Lokhttp3/av;->a()Lokhttp3/at;

    move-result-object v2

    .line 709
    new-instance v3, Lokhttp3/az;

    invoke-direct {v3}, Lokhttp3/az;-><init>()V

    .line 710
    invoke-virtual {v3, v2}, Lokhttp3/az;->a(Lokhttp3/at;)Lokhttp3/az;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/j;->f:Lokhttp3/Protocol;

    .line 711
    invoke-virtual {v2, v3}, Lokhttp3/az;->a(Lokhttp3/Protocol;)Lokhttp3/az;

    move-result-object v2

    iget v3, p0, Lokhttp3/j;->g:I

    .line 712
    invoke-virtual {v2, v3}, Lokhttp3/az;->a(I)Lokhttp3/az;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/j;->h:Ljava/lang/String;

    .line 713
    invoke-virtual {v2, v3}, Lokhttp3/az;->a(Ljava/lang/String;)Lokhttp3/az;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/j;->i:Lokhttp3/ah;

    .line 714
    invoke-virtual {v2, v3}, Lokhttp3/az;->a(Lokhttp3/ah;)Lokhttp3/az;

    move-result-object v2

    new-instance v3, Lokhttp3/h;

    invoke-direct {v3, p1, v0, v1}, Lokhttp3/h;-><init>(Ldfp;Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    invoke-virtual {v2, v3}, Lokhttp3/az;->a(Lokhttp3/ba;)Lokhttp3/az;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/j;->j:Lokhttp3/ag;

    .line 716
    invoke-virtual {v0, v1}, Lokhttp3/az;->a(Lokhttp3/ag;)Lokhttp3/az;

    move-result-object v0

    iget-wide v2, p0, Lokhttp3/j;->k:J

    .line 717
    invoke-virtual {v0, v2, v3}, Lokhttp3/az;->a(J)Lokhttp3/az;

    move-result-object v0

    iget-wide v2, p0, Lokhttp3/j;->l:J

    .line 718
    invoke-virtual {v0, v2, v3}, Lokhttp3/az;->b(J)Lokhttp3/az;

    move-result-object v0

    .line 719
    invoke-virtual {v0}, Lokhttp3/az;->a()Lokhttp3/ax;

    move-result-object v0

    .line 709
    return-object v0
.end method

.method public a(Ldfm;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/16 v6, 0xa

    .line 607
    invoke-virtual {p1, v0}, Ldfm;->a(I)Lokio/aa;

    move-result-object v1

    invoke-static {v1}, Lokio/q;->a(Lokio/aa;)Lokio/i;

    move-result-object v2

    .line 609
    iget-object v1, p0, Lokhttp3/j;->c:Ljava/lang/String;

    invoke-interface {v2, v1}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    move-result-object v1

    .line 610
    invoke-interface {v1, v6}, Lokio/i;->i(I)Lokio/i;

    .line 611
    iget-object v1, p0, Lokhttp3/j;->e:Ljava/lang/String;

    invoke-interface {v2, v1}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    move-result-object v1

    .line 612
    invoke-interface {v1, v6}, Lokio/i;->i(I)Lokio/i;

    .line 613
    iget-object v1, p0, Lokhttp3/j;->d:Lokhttp3/ah;

    invoke-virtual {v1}, Lokhttp3/ah;->a()I

    move-result v1

    int-to-long v4, v1

    invoke-interface {v2, v4, v5}, Lokio/i;->l(J)Lokio/i;

    move-result-object v1

    .line 614
    invoke-interface {v1, v6}, Lokio/i;->i(I)Lokio/i;

    .line 615
    iget-object v1, p0, Lokhttp3/j;->d:Lokhttp3/ah;

    invoke-virtual {v1}, Lokhttp3/ah;->a()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 616
    iget-object v4, p0, Lokhttp3/j;->d:Lokhttp3/ah;

    invoke-virtual {v4, v1}, Lokhttp3/ah;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    move-result-object v4

    const-string/jumbo v5, ": "

    .line 617
    invoke-interface {v4, v5}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/j;->d:Lokhttp3/ah;

    .line 618
    invoke-virtual {v5, v1}, Lokhttp3/ah;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    move-result-object v4

    .line 619
    invoke-interface {v4, v6}, Lokio/i;->i(I)Lokio/i;

    .line 615
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 622
    :cond_0
    new-instance v1, Ldgn;

    iget-object v3, p0, Lokhttp3/j;->f:Lokhttp3/Protocol;

    iget v4, p0, Lokhttp3/j;->g:I

    iget-object v5, p0, Lokhttp3/j;->h:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5}, Ldgn;-><init>(Lokhttp3/Protocol;ILjava/lang/String;)V

    invoke-virtual {v1}, Ldgn;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    move-result-object v1

    .line 623
    invoke-interface {v1, v6}, Lokio/i;->i(I)Lokio/i;

    .line 624
    iget-object v1, p0, Lokhttp3/j;->i:Lokhttp3/ah;

    invoke-virtual {v1}, Lokhttp3/ah;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    int-to-long v4, v1

    invoke-interface {v2, v4, v5}, Lokio/i;->l(J)Lokio/i;

    move-result-object v1

    .line 625
    invoke-interface {v1, v6}, Lokio/i;->i(I)Lokio/i;

    .line 626
    iget-object v1, p0, Lokhttp3/j;->i:Lokhttp3/ah;

    invoke-virtual {v1}, Lokhttp3/ah;->a()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_1

    .line 627
    iget-object v3, p0, Lokhttp3/j;->i:Lokhttp3/ah;

    invoke-virtual {v3, v0}, Lokhttp3/ah;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    move-result-object v3

    const-string/jumbo v4, ": "

    .line 628
    invoke-interface {v3, v4}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/j;->i:Lokhttp3/ah;

    .line 629
    invoke-virtual {v4, v0}, Lokhttp3/ah;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    move-result-object v3

    .line 630
    invoke-interface {v3, v6}, Lokio/i;->i(I)Lokio/i;

    .line 626
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 632
    :cond_1
    sget-object v0, Lokhttp3/j;->a:Ljava/lang/String;

    invoke-interface {v2, v0}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    move-result-object v0

    const-string/jumbo v1, ": "

    .line 633
    invoke-interface {v0, v1}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    move-result-object v0

    iget-wide v4, p0, Lokhttp3/j;->k:J

    .line 634
    invoke-interface {v0, v4, v5}, Lokio/i;->l(J)Lokio/i;

    move-result-object v0

    .line 635
    invoke-interface {v0, v6}, Lokio/i;->i(I)Lokio/i;

    .line 636
    sget-object v0, Lokhttp3/j;->b:Ljava/lang/String;

    invoke-interface {v2, v0}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    move-result-object v0

    const-string/jumbo v1, ": "

    .line 637
    invoke-interface {v0, v1}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    move-result-object v0

    iget-wide v4, p0, Lokhttp3/j;->l:J

    .line 638
    invoke-interface {v0, v4, v5}, Lokio/i;->l(J)Lokio/i;

    move-result-object v0

    .line 639
    invoke-interface {v0, v6}, Lokio/i;->i(I)Lokio/i;

    .line 641
    invoke-direct {p0}, Lokhttp3/j;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 642
    invoke-interface {v2, v6}, Lokio/i;->i(I)Lokio/i;

    .line 643
    iget-object v0, p0, Lokhttp3/j;->j:Lokhttp3/ag;

    invoke-virtual {v0}, Lokhttp3/ag;->b()Lokhttp3/t;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/t;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    move-result-object v0

    .line 644
    invoke-interface {v0, v6}, Lokio/i;->i(I)Lokio/i;

    .line 645
    iget-object v0, p0, Lokhttp3/j;->j:Lokhttp3/ag;

    invoke-virtual {v0}, Lokhttp3/ag;->c()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lokhttp3/j;->a(Lokio/i;Ljava/util/List;)V

    .line 646
    iget-object v0, p0, Lokhttp3/j;->j:Lokhttp3/ag;

    invoke-virtual {v0}, Lokhttp3/ag;->d()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lokhttp3/j;->a(Lokio/i;Ljava/util/List;)V

    .line 648
    iget-object v0, p0, Lokhttp3/j;->j:Lokhttp3/ag;

    invoke-virtual {v0}, Lokhttp3/ag;->a()Lokhttp3/TlsVersion;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 649
    iget-object v0, p0, Lokhttp3/j;->j:Lokhttp3/ag;

    invoke-virtual {v0}, Lokhttp3/ag;->a()Lokhttp3/TlsVersion;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/TlsVersion;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    move-result-object v0

    .line 650
    invoke-interface {v0, v6}, Lokio/i;->i(I)Lokio/i;

    .line 653
    :cond_2
    invoke-interface {v2}, Lokio/i;->close()V

    .line 654
    return-void
.end method

.method public a(Lokhttp3/at;Lokhttp3/ax;)Z
    .locals 2

    .prologue
    .line 696
    iget-object v0, p0, Lokhttp3/j;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/at;->a()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/j;->e:Ljava/lang/String;

    .line 697
    invoke-virtual {p1}, Lokhttp3/at;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/j;->d:Lokhttp3/ah;

    .line 698
    invoke-static {p2, v0, p1}, Ldgg;->a(Lokhttp3/ax;Lokhttp3/ah;Lokhttp3/at;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 696
    :goto_0
    return v0

    .line 698
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
