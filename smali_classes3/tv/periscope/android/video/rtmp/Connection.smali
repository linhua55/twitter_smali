.class public Ltv/periscope/android/video/rtmp/Connection;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ltv/periscope/android/video/rtmp/l;


# instance fields
.field private A:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

.field private a:Ltv/periscope/android/video/rtmp/e;

.field private b:Ltv/periscope/android/video/rtmp/j;

.field private c:Ltv/periscope/android/video/rtmp/p;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:[B

.field private k:J

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltv/periscope/android/video/rtmp/i;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:J

.field private s:J

.field private t:J

.field private u:Z

.field private v:Ltv/periscope/android/video/rtmp/h;

.field private w:Ljava/lang/String;

.field private x:Z

.field private y:J

.field private z:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v1, p0, Ltv/periscope/android/video/rtmp/Connection;->m:I

    .line 46
    iput v1, p0, Ltv/periscope/android/video/rtmp/Connection;->n:I

    .line 47
    iput v1, p0, Ltv/periscope/android/video/rtmp/Connection;->o:I

    .line 51
    iput-wide v2, p0, Ltv/periscope/android/video/rtmp/Connection;->r:J

    .line 52
    iput-wide v2, p0, Ltv/periscope/android/video/rtmp/Connection;->s:J

    .line 53
    iput-wide v2, p0, Ltv/periscope/android/video/rtmp/Connection;->t:J

    .line 54
    iput-boolean v1, p0, Ltv/periscope/android/video/rtmp/Connection;->u:Z

    .line 56
    new-instance v0, Ltv/periscope/android/video/rtmp/h;

    invoke-direct {v0}, Ltv/periscope/android/video/rtmp/h;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->v:Ltv/periscope/android/video/rtmp/h;

    .line 58
    const-string/jumbo v0, ""

    iput-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->w:Ljava/lang/String;

    .line 60
    iput-boolean v1, p0, Ltv/periscope/android/video/rtmp/Connection;->x:Z

    .line 62
    iput-wide v2, p0, Ltv/periscope/android/video/rtmp/Connection;->y:J

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->z:Ljava/lang/Runnable;

    return-void
.end method

.method private a(I)Ltv/periscope/android/video/rtmp/i;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 385
    iget v0, p0, Ltv/periscope/android/video/rtmp/Connection;->m:I

    if-le p1, v0, :cond_0

    .line 387
    const/4 v0, 0x0

    .line 411
    :goto_0
    return-object v0

    .line 390
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->v:Ltv/periscope/android/video/rtmp/h;

    invoke-virtual {v0, p1}, Ltv/periscope/android/video/rtmp/h;->b(I)Ltv/periscope/android/video/rtmp/i;

    move-result-object v3

    move v2, p1

    .line 391
    :cond_1
    :goto_1
    if-eqz v3, :cond_3

    if-lez v2, :cond_3

    .line 393
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->l:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/video/rtmp/i;

    .line 394
    iget v1, v0, Ltv/periscope/android/video/rtmp/i;->b:I

    iget v4, p0, Ltv/periscope/android/video/rtmp/Connection;->n:I

    sub-int/2addr v1, v4

    .line 395
    if-le v1, v2, :cond_2

    move v1, v2

    .line 399
    :cond_2
    iget-object v4, v0, Ltv/periscope/android/video/rtmp/i;->a:[B

    iget v5, p0, Ltv/periscope/android/video/rtmp/Connection;->n:I

    invoke-virtual {v3, v4, v5, v1}, Ltv/periscope/android/video/rtmp/i;->a([BII)V

    .line 400
    iget v4, p0, Ltv/periscope/android/video/rtmp/Connection;->n:I

    add-int/2addr v4, v1

    iput v4, p0, Ltv/periscope/android/video/rtmp/Connection;->n:I

    .line 401
    iget v4, p0, Ltv/periscope/android/video/rtmp/Connection;->m:I

    sub-int/2addr v4, v1

    iput v4, p0, Ltv/periscope/android/video/rtmp/Connection;->m:I

    .line 402
    sub-int/2addr v2, v1

    .line 404
    iget v1, p0, Ltv/periscope/android/video/rtmp/Connection;->n:I

    iget v4, v0, Ltv/periscope/android/video/rtmp/i;->b:I

    if-lt v1, v4, :cond_1

    .line 406
    iget-object v1, p0, Ltv/periscope/android/video/rtmp/Connection;->l:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 407
    iget-object v1, p0, Ltv/periscope/android/video/rtmp/Connection;->b:Ltv/periscope/android/video/rtmp/j;

    invoke-virtual {v1, v0}, Ltv/periscope/android/video/rtmp/j;->a(Ltv/periscope/android/video/rtmp/i;)V

    .line 408
    iput v6, p0, Ltv/periscope/android/video/rtmp/Connection;->n:I

    goto :goto_1

    :cond_3
    move-object v0, v3

    .line 411
    goto :goto_0
.end method

.method private a(II)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 659
    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 660
    aput-byte v4, v0, v4

    .line 661
    const/4 v1, 0x1

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    .line 662
    int-to-long v2, p2

    invoke-static {v2, v3, v0, v5}, Ltv/periscope/android/video/rtmp/Connection;->a(J[BI)V

    .line 663
    int-to-long v2, p1

    const/4 v1, 0x6

    invoke-static {v2, v3, v0, v1}, Ltv/periscope/android/video/rtmp/Connection;->a(J[BI)V

    .line 664
    new-instance v1, Ltv/periscope/android/video/rtmp/n;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v5, v4}, Ltv/periscope/android/video/rtmp/n;-><init>(III)V

    .line 665
    invoke-virtual {v1, v0}, Ltv/periscope/android/video/rtmp/n;->a([B)V

    .line 666
    invoke-virtual {p0, v1}, Ltv/periscope/android/video/rtmp/Connection;->b(Ltv/periscope/android/video/rtmp/n;)V

    .line 667
    return-void
.end method

.method public static a(J[BI)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x100

    .line 224
    const/16 v0, 0x18

    shr-long v0, p0, v0

    rem-long/2addr v0, v4

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 225
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x10

    shr-long v2, p0, v1

    rem-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 226
    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x8

    shr-long v2, p0, v1

    rem-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 227
    add-int/lit8 v0, p3, 0x3

    rem-long v2, p0, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 228
    return-void
.end method

.method private b(Ltv/periscope/android/video/rtmp/i;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 232
    iget-object v2, p1, Ltv/periscope/android/video/rtmp/i;->a:[B

    aget-byte v2, v2, v1

    const/16 v3, 0x48

    if-ne v2, v3, :cond_0

    iget v2, p0, Ltv/periscope/android/video/rtmp/Connection;->f:I

    const/16 v3, 0x50

    if-ne v2, v3, :cond_0

    .line 237
    const-string/jumbo v1, "RTMP"

    const-string/jumbo v2, "Proxy error? try SSL"

    invoke-static {v1, v2}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iput-boolean v0, p0, Ltv/periscope/android/video/rtmp/Connection;->u:Z

    .line 239
    iget-object v1, p0, Ltv/periscope/android/video/rtmp/Connection;->a:Ltv/periscope/android/video/rtmp/e;

    invoke-interface {v1}, Ltv/periscope/android/video/rtmp/e;->b()V

    .line 240
    sget-object v1, Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;->h:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    iput-object v1, p0, Ltv/periscope/android/video/rtmp/Connection;->A:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    .line 241
    iget-object v1, p0, Ltv/periscope/android/video/rtmp/Connection;->b:Ltv/periscope/android/video/rtmp/j;

    invoke-virtual {v1}, Ltv/periscope/android/video/rtmp/j;->a()V

    .line 244
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private c(Ltv/periscope/android/video/rtmp/i;)V
    .locals 4

    .prologue
    .line 348
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->c:Ltv/periscope/android/video/rtmp/p;

    iget-object v1, p1, Ltv/periscope/android/video/rtmp/i;->a:[B

    const/4 v2, 0x0

    iget v3, p1, Ltv/periscope/android/video/rtmp/i;->b:I

    invoke-virtual {v0, v1, v2, v3}, Ltv/periscope/android/video/rtmp/p;->a([BII)Ltv/periscope/android/video/rtmp/n;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_0

    .line 351
    invoke-direct {p0, v0}, Ltv/periscope/android/video/rtmp/Connection;->c(Ltv/periscope/android/video/rtmp/n;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    invoke-virtual {p0, v0}, Ltv/periscope/android/video/rtmp/Connection;->a(Ltv/periscope/android/video/rtmp/n;)V

    .line 356
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->c:Ltv/periscope/android/video/rtmp/p;

    invoke-virtual {v0}, Ltv/periscope/android/video/rtmp/p;->a()I

    move-result v0

    iput v0, p0, Ltv/periscope/android/video/rtmp/Connection;->o:I

    .line 357
    return-void
.end method

.method private c(Ltv/periscope/android/video/rtmp/n;)Z
    .locals 11

    .prologue
    const/4 v6, 0x5

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v1, 0x0

    .line 563
    .line 564
    invoke-virtual {p1}, Ltv/periscope/android/video/rtmp/n;->b()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Ltv/periscope/android/video/rtmp/n;->b()I

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    .line 566
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->A:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    sget-object v2, Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;->g:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Ltv/periscope/android/video/rtmp/n;->b()I

    move-result v0

    const/16 v2, 0x12

    if-eq v0, v2, :cond_1

    .line 568
    :cond_0
    const-string/jumbo v0, "RTMP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Receive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :cond_1
    invoke-virtual {p1}, Ltv/periscope/android/video/rtmp/n;->a()I

    move-result v0

    if-ne v0, v8, :cond_5

    .line 573
    invoke-virtual {p1}, Ltv/periscope/android/video/rtmp/n;->b()I

    move-result v0

    if-ne v0, v6, :cond_2

    .line 575
    invoke-virtual {p1}, Ltv/periscope/android/video/rtmp/n;->e()Ltv/periscope/android/video/rtmp/i;

    move-result-object v0

    iget-object v0, v0, Ltv/periscope/android/video/rtmp/i;->a:[B

    invoke-static {v0, v1}, Ltv/periscope/android/video/rtmp/a;->b([BI)J

    move-result-wide v2

    iput-wide v2, p0, Ltv/periscope/android/video/rtmp/Connection;->s:J

    .line 576
    iget-wide v2, p0, Ltv/periscope/android/video/rtmp/Connection;->t:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_9

    .line 579
    new-array v0, v10, [B

    .line 580
    iget-wide v2, p0, Ltv/periscope/android/video/rtmp/Connection;->t:J

    invoke-static {v2, v3, v0, v1}, Ltv/periscope/android/video/rtmp/Connection;->a(J[BI)V

    .line 581
    new-instance v2, Ltv/periscope/android/video/rtmp/n;

    invoke-direct {v2, v6, v8, v1}, Ltv/periscope/android/video/rtmp/n;-><init>(III)V

    .line 582
    invoke-virtual {v2, v0}, Ltv/periscope/android/video/rtmp/n;->a([B)V

    .line 583
    invoke-virtual {p0, v2}, Ltv/periscope/android/video/rtmp/Connection;->b(Ltv/periscope/android/video/rtmp/n;)V

    .line 586
    new-array v2, v6, [B

    .line 587
    iget-wide v4, p0, Ltv/periscope/android/video/rtmp/Connection;->t:J

    invoke-static {v4, v5, v0, v1}, Ltv/periscope/android/video/rtmp/Connection;->a(J[BI)V

    .line 588
    aput-byte v8, v2, v10

    .line 589
    new-instance v0, Ltv/periscope/android/video/rtmp/n;

    const/4 v3, 0x6

    invoke-direct {v0, v3, v8, v1}, Ltv/periscope/android/video/rtmp/n;-><init>(III)V

    .line 590
    invoke-virtual {v0, v2}, Ltv/periscope/android/video/rtmp/n;->a([B)V

    .line 591
    invoke-virtual {p0, v0}, Ltv/periscope/android/video/rtmp/Connection;->b(Ltv/periscope/android/video/rtmp/n;)V

    move v0, v1

    .line 654
    :goto_0
    return v0

    .line 594
    :cond_2
    invoke-virtual {p1}, Ltv/periscope/android/video/rtmp/n;->b()I

    move-result v0

    if-ne v0, v9, :cond_3

    .line 596
    invoke-virtual {p1}, Ltv/periscope/android/video/rtmp/n;->e()Ltv/periscope/android/video/rtmp/i;

    move-result-object v0

    iget-object v0, v0, Ltv/periscope/android/video/rtmp/i;->a:[B

    invoke-static {v0, v1}, Ltv/periscope/android/video/rtmp/a;->b([BI)J

    move-result-wide v2

    long-to-int v0, v2

    .line 597
    iget-object v2, p0, Ltv/periscope/android/video/rtmp/Connection;->c:Ltv/periscope/android/video/rtmp/p;

    invoke-virtual {v2, v0}, Ltv/periscope/android/video/rtmp/p;->a(I)V

    move v0, v1

    .line 598
    goto :goto_0

    .line 599
    :cond_3
    invoke-virtual {p1}, Ltv/periscope/android/video/rtmp/n;->b()I

    move-result v0

    if-ne v0, v10, :cond_9

    .line 601
    invoke-virtual {p1}, Ltv/periscope/android/video/rtmp/n;->e()Ltv/periscope/android/video/rtmp/i;

    move-result-object v0

    iget-object v0, v0, Ltv/periscope/android/video/rtmp/i;->a:[B

    invoke-virtual {p1}, Ltv/periscope/android/video/rtmp/n;->e()Ltv/periscope/android/video/rtmp/i;

    move-result-object v2

    iget v2, v2, Ltv/periscope/android/video/rtmp/i;->b:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 602
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte v3, v0, v9

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 603
    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    .line 605
    const/4 v2, 0x7

    aput-byte v2, v0, v9

    .line 606
    new-instance v2, Ltv/periscope/android/video/rtmp/n;

    invoke-direct {v2, v10, v8, v1}, Ltv/periscope/android/video/rtmp/n;-><init>(III)V

    .line 607
    invoke-virtual {v2, v0}, Ltv/periscope/android/video/rtmp/n;->a([B)V

    .line 608
    invoke-virtual {p0, v2}, Ltv/periscope/android/video/rtmp/Connection;->b(Ltv/periscope/android/video/rtmp/n;)V

    :cond_4
    move v0, v1

    .line 610
    goto :goto_0

    .line 612
    :cond_5
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->A:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    sget-object v2, Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;->g:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    if-ne v0, v2, :cond_6

    .line 614
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->a:Ltv/periscope/android/video/rtmp/e;

    invoke-interface {v0, p1}, Ltv/periscope/android/video/rtmp/e;->a(Ltv/periscope/android/video/rtmp/n;)Z

    move-result v0

    goto :goto_0

    .line 616
    :cond_6
    invoke-virtual {p1}, Ltv/periscope/android/video/rtmp/n;->b()I

    move-result v0

    const/16 v2, 0x14

    if-ne v0, v2, :cond_9

    .line 618
    invoke-virtual {p1}, Ltv/periscope/android/video/rtmp/n;->h()[Ljava/lang/Object;

    move-result-object v2

    .line 619
    aget-object v0, v2, v9

    instance-of v0, v0, Ljava/lang/Double;

    if-eqz v0, :cond_9

    .line 621
    aget-object v0, v2, v9

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 622
    iget v0, p0, Ltv/periscope/android/video/rtmp/Connection;->p:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-nez v0, :cond_9

    .line 624
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->A:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    sget-object v3, Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;->a:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    if-ne v0, v3, :cond_8

    .line 626
    array-length v0, v2

    if-le v0, v8, :cond_7

    aget-object v0, v2, v8

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 628
    aget-object v0, v2, v8

    check-cast v0, Ljava/util/Map;

    .line 629
    const-string/jumbo v2, "fmsVer"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->w:Ljava/lang/String;

    .line 632
    :cond_7
    const/16 v0, 0x12c

    invoke-direct {p0, v0, v1}, Ltv/periscope/android/video/rtmp/Connection;->a(II)V

    .line 635
    iput v1, p0, Ltv/periscope/android/video/rtmp/Connection;->q:I

    .line 636
    new-array v0, v9, [Ljava/lang/Object;

    .line 637
    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 638
    const-string/jumbo v2, "createStream"

    invoke-virtual {p0, v2, v0}, Ltv/periscope/android/video/rtmp/Connection;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 639
    sget-object v0, Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;->e:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    iput-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->A:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    move v0, v1

    .line 640
    goto/16 :goto_0

    .line 641
    :cond_8
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->A:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    sget-object v3, Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;->e:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    if-ne v0, v3, :cond_9

    .line 643
    array-length v0, v2

    if-ne v0, v10, :cond_9

    const/4 v0, 0x3

    aget-object v0, v2, v0

    instance-of v0, v0, Ljava/lang/Double;

    if-eqz v0, :cond_9

    .line 645
    const/4 v0, 0x3

    aget-object v0, v2, v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    iput v0, p0, Ltv/periscope/android/video/rtmp/Connection;->q:I

    .line 646
    const-string/jumbo v0, "RTMP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Media Stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ltv/periscope/android/video/rtmp/Connection;->q:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    sget-object v0, Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;->g:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    iput-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->A:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    .line 648
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->a:Ltv/periscope/android/video/rtmp/e;

    iget v2, p0, Ltv/periscope/android/video/rtmp/Connection;->q:I

    invoke-interface {v0, v2}, Ltv/periscope/android/video/rtmp/e;->a(I)V

    :cond_9
    move v0, v1

    goto/16 :goto_0
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 133
    .line 134
    iput-boolean v1, p0, Ltv/periscope/android/video/rtmp/Connection;->x:Z

    .line 135
    const-string/jumbo v2, "rtmps"

    iget-object v3, p0, Ltv/periscope/android/video/rtmp/Connection;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    :goto_0
    new-instance v1, Ltv/periscope/android/video/rtmp/j;

    invoke-direct {v1}, Ltv/periscope/android/video/rtmp/j;-><init>()V

    iput-object v1, p0, Ltv/periscope/android/video/rtmp/Connection;->b:Ltv/periscope/android/video/rtmp/j;

    .line 149
    new-instance v1, Ltv/periscope/android/video/rtmp/p;

    iget-object v2, p0, Ltv/periscope/android/video/rtmp/Connection;->b:Ltv/periscope/android/video/rtmp/j;

    invoke-direct {v1, v2}, Ltv/periscope/android/video/rtmp/p;-><init>(Ltv/periscope/android/video/rtmp/j;)V

    iput-object v1, p0, Ltv/periscope/android/video/rtmp/Connection;->c:Ltv/periscope/android/video/rtmp/p;

    .line 150
    iget-object v1, p0, Ltv/periscope/android/video/rtmp/Connection;->b:Ltv/periscope/android/video/rtmp/j;

    iget-object v2, p0, Ltv/periscope/android/video/rtmp/Connection;->e:Ljava/lang/String;

    iget v3, p0, Ltv/periscope/android/video/rtmp/Connection;->f:I

    invoke-virtual {v1, v2, v3, v0, p0}, Ltv/periscope/android/video/rtmp/j;->a(Ljava/lang/String;IZLtv/periscope/android/video/rtmp/l;)V

    .line 151
    return-void

    .line 139
    :cond_0
    const-string/jumbo v2, "psps"

    iget-object v3, p0, Ltv/periscope/android/video/rtmp/Connection;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    iput-boolean v0, p0, Ltv/periscope/android/video/rtmp/Connection;->x:Z

    goto :goto_0

    .line 144
    :cond_1
    const-string/jumbo v2, "psp"

    iget-object v3, p0, Ltv/periscope/android/video/rtmp/Connection;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 146
    iput-boolean v0, p0, Ltv/periscope/android/video/rtmp/Connection;->x:Z

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private i()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 361
    iput v4, p0, Ltv/periscope/android/video/rtmp/Connection;->p:I

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltv/periscope/android/video/rtmp/Connection;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/video/rtmp/Connection;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltv/periscope/android/video/rtmp/Connection;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/video/rtmp/Connection;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ltv/periscope/android/video/rtmp/Connection;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 366
    iput v5, p0, Ltv/periscope/android/video/rtmp/Connection;->o:I

    .line 367
    sget-object v2, Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;->a:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    iput-object v2, p0, Ltv/periscope/android/video/rtmp/Connection;->A:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    .line 369
    iput v4, p0, Ltv/periscope/android/video/rtmp/Connection;->q:I

    .line 371
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 372
    const-string/jumbo v3, "app"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string/jumbo v0, "tcUrl"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string/jumbo v0, "fpad"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string/jumbo v0, "audioCodecs"

    const/16 v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string/jumbo v0, "videoCodecs"

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    new-array v0, v5, [Ljava/lang/Object;

    .line 378
    aput-object v2, v0, v4

    .line 380
    const-string/jumbo v1, "connect"

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/video/rtmp/Connection;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    return-void
.end method

.method private j()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 416
    iget-boolean v0, p0, Ltv/periscope/android/video/rtmp/Connection;->x:Z

    if-eqz v0, :cond_0

    .line 418
    const-string/jumbo v0, "RTMP"

    const-string/jumbo v1, "Using PSP"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    new-array v0, v6, [B

    .line 420
    aput-byte v6, v0, v3

    .line 421
    aput-byte v4, v0, v4

    .line 422
    aput-byte v3, v0, v5

    .line 423
    aput-byte v3, v0, v2

    .line 424
    iget-object v1, p0, Ltv/periscope/android/video/rtmp/Connection;->b:Ltv/periscope/android/video/rtmp/j;

    array-length v2, v0

    invoke-virtual {v1, v0, v3, v2}, Ltv/periscope/android/video/rtmp/j;->a([BII)V

    .line 426
    iput v5, p0, Ltv/periscope/android/video/rtmp/Connection;->p:I

    .line 427
    iput v4, p0, Ltv/periscope/android/video/rtmp/Connection;->o:I

    .line 428
    iput v4, p0, Ltv/periscope/android/video/rtmp/Connection;->q:I

    .line 429
    sget-object v0, Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;->f:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    iput-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->A:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    .line 430
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->a:Ltv/periscope/android/video/rtmp/e;

    iget v1, p0, Ltv/periscope/android/video/rtmp/Connection;->q:I

    invoke-interface {v0, v1}, Ltv/periscope/android/video/rtmp/e;->a(I)V

    .line 447
    :goto_0
    return-void

    .line 434
    :cond_0
    new-array v0, v4, [B

    .line 435
    aput-byte v2, v0, v3

    .line 436
    iget-object v1, p0, Ltv/periscope/android/video/rtmp/Connection;->b:Ltv/periscope/android/video/rtmp/j;

    invoke-virtual {v1, v0, v3, v4}, Ltv/periscope/android/video/rtmp/j;->a([BII)V

    .line 438
    const/16 v0, 0x600

    new-array v0, v0, [B

    iput-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->j:[B

    .line 439
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 440
    iget-object v1, p0, Ltv/periscope/android/video/rtmp/Connection;->j:[B

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 441
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->j:[B

    const/16 v1, 0x8

    invoke-static {v0, v3, v1, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 442
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/periscope/android/video/rtmp/Connection;->k:J

    .line 443
    sget-object v0, Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;->b:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    iput-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->A:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    .line 444
    iput v4, p0, Ltv/periscope/android/video/rtmp/Connection;->o:I

    .line 445
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->b:Ltv/periscope/android/video/rtmp/j;

    iget-object v1, p0, Ltv/periscope/android/video/rtmp/Connection;->j:[B

    iget-object v2, p0, Ltv/periscope/android/video/rtmp/Connection;->j:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ltv/periscope/android/video/rtmp/j;->a([BII)V

    goto :goto_0
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 208
    iput-wide p1, p0, Ltv/periscope/android/video/rtmp/Connection;->t:J

    .line 209
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltv/periscope/android/video/rtmp/e;)V
    .locals 0

    .prologue
    .line 118
    iput-object p7, p0, Ltv/periscope/android/video/rtmp/Connection;->a:Ltv/periscope/android/video/rtmp/e;

    .line 120
    iput-object p1, p0, Ltv/periscope/android/video/rtmp/Connection;->d:Ljava/lang/String;

    .line 122
    iput-object p2, p0, Ltv/periscope/android/video/rtmp/Connection;->e:Ljava/lang/String;

    .line 123
    iput p3, p0, Ltv/periscope/android/video/rtmp/Connection;->f:I

    .line 124
    iput-object p4, p0, Ltv/periscope/android/video/rtmp/Connection;->g:Ljava/lang/String;

    .line 125
    iput-object p5, p0, Ltv/periscope/android/video/rtmp/Connection;->h:Ljava/lang/String;

    .line 126
    iput-object p6, p0, Ltv/periscope/android/video/rtmp/Connection;->i:Ljava/lang/String;

    .line 128
    invoke-direct {p0}, Ltv/periscope/android/video/rtmp/Connection;->h()V

    .line 129
    return-void
.end method

.method public a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 451
    new-instance v0, Ltv/periscope/android/video/rtmp/n;

    const/16 v1, 0x14

    const/4 v2, 0x3

    iget v3, p0, Ltv/periscope/android/video/rtmp/Connection;->q:I

    invoke-direct {v0, v1, v2, v3}, Ltv/periscope/android/video/rtmp/n;-><init>(III)V

    .line 453
    array-length v1, p2

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 454
    aput-object p1, v1, v4

    .line 455
    const/4 v2, 0x1

    iget v3, p0, Ltv/periscope/android/video/rtmp/Connection;->p:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ltv/periscope/android/video/rtmp/Connection;->p:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 456
    const/4 v2, 0x2

    array-length v3, p2

    invoke-static {p2, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 457
    invoke-virtual {v0, v1}, Ltv/periscope/android/video/rtmp/n;->a([Ljava/lang/Object;)V

    .line 458
    invoke-virtual {p0, v0}, Ltv/periscope/android/video/rtmp/Connection;->b(Ltv/periscope/android/video/rtmp/n;)V

    .line 459
    return-void
.end method

.method public a(Ltv/periscope/android/video/rtmp/i;)V
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p1}, Ltv/periscope/android/video/rtmp/i;->a()Ltv/periscope/android/video/rtmp/h;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/video/rtmp/Connection;->v:Ltv/periscope/android/video/rtmp/h;

    if-ne v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->v:Ltv/periscope/android/video/rtmp/h;

    invoke-virtual {v0, p1}, Ltv/periscope/android/video/rtmp/h;->a(Ltv/periscope/android/video/rtmp/i;)V

    .line 109
    :cond_0
    return-void
.end method

.method public a(Ltv/periscope/android/video/rtmp/j;)V
    .locals 1

    .prologue
    .line 155
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->l:Ljava/util/List;

    .line 156
    invoke-direct {p0}, Ltv/periscope/android/video/rtmp/Connection;->j()V

    .line 157
    return-void
.end method

.method public a(Ltv/periscope/android/video/rtmp/j;Ltv/periscope/android/video/rtmp/i;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 249
    monitor-enter p0

    .line 251
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltv/periscope/android/video/rtmp/Connection;->y:J

    .line 252
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->l:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    iget v0, p0, Ltv/periscope/android/video/rtmp/Connection;->m:I

    iget v1, p2, Ltv/periscope/android/video/rtmp/i;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Ltv/periscope/android/video/rtmp/Connection;->m:I

    .line 257
    iget-wide v0, p0, Ltv/periscope/android/video/rtmp/Connection;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 259
    iget v0, p0, Ltv/periscope/android/video/rtmp/Connection;->m:I

    int-to-long v0, v0

    iget-wide v2, p0, Ltv/periscope/android/video/rtmp/Connection;->r:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Ltv/periscope/android/video/rtmp/Connection;->s:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 261
    iget v0, p0, Ltv/periscope/android/video/rtmp/Connection;->m:I

    int-to-long v0, v0

    iput-wide v0, p0, Ltv/periscope/android/video/rtmp/Connection;->r:J

    .line 262
    new-array v0, v6, [B

    .line 263
    iget-wide v2, p0, Ltv/periscope/android/video/rtmp/Connection;->r:J

    invoke-static {v2, v3, v0, v4}, Ltv/periscope/android/video/rtmp/Connection;->a(J[BI)V

    .line 264
    new-instance v1, Ltv/periscope/android/video/rtmp/n;

    const/4 v2, 0x2

    invoke-direct {v1, v5, v2, v4}, Ltv/periscope/android/video/rtmp/n;-><init>(III)V

    .line 265
    invoke-virtual {v1, v0}, Ltv/periscope/android/video/rtmp/n;->a([B)V

    .line 266
    invoke-virtual {p0, v1}, Ltv/periscope/android/video/rtmp/Connection;->b(Ltv/periscope/android/video/rtmp/n;)V

    .line 272
    :cond_0
    :goto_0
    iget v0, p0, Ltv/periscope/android/video/rtmp/Connection;->o:I

    invoke-direct {p0, v0}, Ltv/periscope/android/video/rtmp/Connection;->a(I)Ltv/periscope/android/video/rtmp/i;

    move-result-object v1

    .line 273
    if-nez v1, :cond_1

    .line 344
    :goto_1
    return-void

    .line 252
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 280
    :cond_1
    :try_start_2
    sget-object v0, Ltv/periscope/android/video/rtmp/d;->a:[I

    iget-object v2, p0, Ltv/periscope/android/video/rtmp/Connection;->A:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    invoke-virtual {v2}, Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 336
    invoke-direct {p0, v1}, Ltv/periscope/android/video/rtmp/Connection;->c(Ltv/periscope/android/video/rtmp/i;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 341
    :goto_2
    invoke-virtual {p0, v1}, Ltv/periscope/android/video/rtmp/Connection;->a(Ltv/periscope/android/video/rtmp/i;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v1}, Ltv/periscope/android/video/rtmp/Connection;->a(Ltv/periscope/android/video/rtmp/i;)V

    goto :goto_1

    .line 287
    :pswitch_1
    :try_start_3
    iget-object v0, v1, Ltv/periscope/android/video/rtmp/i;->a:[B

    const/4 v2, 0x0

    aget-byte v0, v0, v2

    if-eq v0, v5, :cond_2

    .line 288
    const-string/jumbo v0, "RTMP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Ltv/periscope/android/video/rtmp/i;->a:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-direct {p0, v1}, Ltv/periscope/android/video/rtmp/Connection;->b(Ltv/periscope/android/video/rtmp/i;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-eqz v0, :cond_2

    .line 341
    invoke-virtual {p0, v1}, Ltv/periscope/android/video/rtmp/Connection;->a(Ltv/periscope/android/video/rtmp/i;)V

    goto :goto_1

    .line 294
    :cond_2
    :try_start_4
    sget-object v0, Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;->c:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    iput-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->A:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    .line 295
    const/16 v0, 0x600

    iput v0, p0, Ltv/periscope/android/video/rtmp/Connection;->o:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 341
    :catchall_1
    move-exception v0

    invoke-virtual {p0, v1}, Ltv/periscope/android/video/rtmp/Connection;->a(Ltv/periscope/android/video/rtmp/i;)V

    throw v0

    .line 300
    :pswitch_2
    :try_start_5
    iget-object v0, v1, Ltv/periscope/android/video/rtmp/i;->a:[B

    const/4 v2, 0x0

    iget v3, v1, Ltv/periscope/android/video/rtmp/i;->b:I

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 301
    invoke-virtual {p0}, Ltv/periscope/android/video/rtmp/Connection;->f()J

    move-result-wide v2

    const/4 v4, 0x4

    invoke-static {v2, v3, v0, v4}, Ltv/periscope/android/video/rtmp/Connection;->a(J[BI)V

    .line 302
    iget-object v2, p0, Ltv/periscope/android/video/rtmp/Connection;->b:Ltv/periscope/android/video/rtmp/j;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Ltv/periscope/android/video/rtmp/j;->a([BII)V

    .line 303
    sget-object v0, Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;->d:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    iput-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->A:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    .line 304
    const/16 v0, 0x600

    iput v0, p0, Ltv/periscope/android/video/rtmp/Connection;->o:I

    goto :goto_2

    .line 310
    :pswitch_3
    iget-object v0, v1, Ltv/periscope/android/video/rtmp/i;->a:[B

    const/16 v2, 0x8

    iget v3, v1, Ltv/periscope/android/video/rtmp/i;->b:I

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 311
    iget-object v2, p0, Ltv/periscope/android/video/rtmp/Connection;->j:[B

    const/16 v3, 0x8

    iget v4, v1, Ltv/periscope/android/video/rtmp/i;->b:I

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 312
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 313
    const-string/jumbo v0, "RTMP"

    const-string/jumbo v2, "C2 ok"

    invoke-static {v0, v2}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :goto_3
    invoke-direct {p0}, Ltv/periscope/android/video/rtmp/Connection;->i()V

    goto/16 :goto_2

    .line 317
    :cond_3
    const-string/jumbo v0, "RTMP"

    const-string/jumbo v2, "C2 mismatch"

    invoke-static {v0, v2}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 327
    :pswitch_4
    invoke-direct {p0, v1}, Ltv/periscope/android/video/rtmp/Connection;->b(Ltv/periscope/android/video/rtmp/i;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v0

    if-eqz v0, :cond_4

    .line 341
    invoke-virtual {p0, v1}, Ltv/periscope/android/video/rtmp/Connection;->a(Ltv/periscope/android/video/rtmp/i;)V

    goto/16 :goto_1

    .line 331
    :cond_4
    :try_start_6
    sget-object v0, Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;->g:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    iput-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->A:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    .line 332
    invoke-direct {p0, v1}, Ltv/periscope/android/video/rtmp/Connection;->c(Ltv/periscope/android/video/rtmp/i;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_2

    .line 280
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(Ltv/periscope/android/video/rtmp/n;)V
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p1}, Ltv/periscope/android/video/rtmp/n;->e()Ltv/periscope/android/video/rtmp/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p1}, Ltv/periscope/android/video/rtmp/n;->e()Ltv/periscope/android/video/rtmp/i;

    move-result-object v0

    invoke-virtual {v0}, Ltv/periscope/android/video/rtmp/i;->a()Ltv/periscope/android/video/rtmp/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->c:Ltv/periscope/android/video/rtmp/p;

    invoke-virtual {v0, p1}, Ltv/periscope/android/video/rtmp/p;->a(Ltv/periscope/android/video/rtmp/n;)V

    .line 101
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Ltv/periscope/android/video/rtmp/Connection;->x:Z

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 170
    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->z:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 174
    const-string/jumbo v0, "RTMP"

    const-string/jumbo v1, "Send queue drain complete"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 176
    iget-object v1, p0, Ltv/periscope/android/video/rtmp/Connection;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->z:Ljava/lang/Runnable;

    .line 179
    :cond_0
    monitor-exit p0

    .line 180
    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ltv/periscope/android/video/rtmp/j;)V
    .locals 2

    .prologue
    .line 161
    const-string/jumbo v0, "RTMP"

    const-string/jumbo v1, "Close stream"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->A:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    sget-object v1, Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;->h:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    if-eq v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->a:Ltv/periscope/android/video/rtmp/e;

    invoke-interface {v0}, Ltv/periscope/android/video/rtmp/e;->b()V

    .line 166
    :cond_0
    return-void
.end method

.method public b(Ltv/periscope/android/video/rtmp/n;)V
    .locals 8

    .prologue
    const/16 v3, 0x9

    .line 473
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->A:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    sget-object v1, Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;->h:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    if-ne v0, v1, :cond_0

    .line 510
    :goto_0
    return-void

    .line 477
    :cond_0
    invoke-virtual {p1}, Ltv/periscope/android/video/rtmp/n;->b()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ltv/periscope/android/video/rtmp/n;->b()I

    move-result v0

    if-eq v0, v3, :cond_1

    invoke-virtual {p1}, Ltv/periscope/android/video/rtmp/n;->b()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    .line 479
    const-string/jumbo v0, "RTMP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Send: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :cond_1
    invoke-virtual {p1}, Ltv/periscope/android/video/rtmp/n;->b()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 484
    iget-boolean v0, p0, Ltv/periscope/android/video/rtmp/Connection;->x:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->A:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    sget-object v1, Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;->g:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    if-ne v0, v1, :cond_3

    iget-wide v0, p0, Ltv/periscope/android/video/rtmp/Connection;->y:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 486
    const/4 v0, 0x0

    .line 487
    monitor-enter p0

    .line 489
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 490
    iget-wide v4, p0, Ltv/periscope/android/video/rtmp/Connection;->y:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1388

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    .line 492
    const/4 v0, 0x1

    .line 493
    iput-wide v2, p0, Ltv/periscope/android/video/rtmp/Connection;->y:J

    .line 495
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    if-eqz v0, :cond_3

    .line 498
    const-string/jumbo v0, "RTMP"

    const-string/jumbo v1, "Receive timeout in video send"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string/jumbo v0, "Receive timeout in video send"

    invoke-static {v0}, Lh;->a(Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->a:Ltv/periscope/android/video/rtmp/e;

    invoke-interface {v0}, Ltv/periscope/android/video/rtmp/e;->b()V

    .line 505
    :cond_3
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->c:Ltv/periscope/android/video/rtmp/p;

    if-eqz v0, :cond_4

    .line 506
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->c:Ltv/periscope/android/video/rtmp/p;

    invoke-virtual {v0, p1}, Ltv/periscope/android/video/rtmp/p;->b(Ltv/periscope/android/video/rtmp/n;)Z

    goto :goto_0

    .line 495
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 508
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Attempt to send message while mStreamSet is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lh;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 196
    const-string/jumbo v0, ""

    .line 198
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Ltv/periscope/android/video/rtmp/Connection;->u:Z

    return v0
.end method

.method f()J
    .locals 4

    .prologue
    .line 218
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 219
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Ltv/periscope/android/video/rtmp/Connection;->k:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public declared-synchronized g()V
    .locals 3

    .prologue
    .line 550
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->A:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    sget-object v1, Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;->g:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    if-ne v0, v1, :cond_0

    .line 551
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 552
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 553
    const/4 v1, 0x1

    iget v2, p0, Ltv/periscope/android/video/rtmp/Connection;->q:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 554
    const-string/jumbo v1, "deleteStream"

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/video/rtmp/Connection;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 556
    :cond_0
    sget-object v0, Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;->h:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    iput-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->A:Ltv/periscope/android/video/rtmp/Connection$RTMPConnectState;

    .line 557
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->b:Ltv/periscope/android/video/rtmp/j;

    invoke-virtual {v0}, Ltv/periscope/android/video/rtmp/j;->a()V

    .line 558
    iget-object v0, p0, Ltv/periscope/android/video/rtmp/Connection;->a:Ltv/periscope/android/video/rtmp/e;

    invoke-interface {v0}, Ltv/periscope/android/video/rtmp/e;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    monitor-exit p0

    return-void

    .line 550
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
