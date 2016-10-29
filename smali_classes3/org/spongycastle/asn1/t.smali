.class public abstract Lorg/spongycastle/asn1/t;
.super Lorg/spongycastle/asn1/q;
.source "Twttr"


# instance fields
.field private a:Ljava/util/Vector;

.field private b:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 222
    invoke-direct {p0}, Lorg/spongycastle/asn1/q;-><init>()V

    .line 98
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/t;->a:Ljava/util/Vector;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/asn1/t;->b:Z

    .line 223
    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/asn1/d;)V
    .locals 1

    .prologue
    .line 231
    invoke-direct {p0}, Lorg/spongycastle/asn1/q;-><init>()V

    .line 98
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/t;->a:Ljava/util/Vector;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/asn1/t;->b:Z

    .line 232
    iget-object v0, p0, Lorg/spongycastle/asn1/t;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 233
    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/asn1/e;Z)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 243
    invoke-direct {p0}, Lorg/spongycastle/asn1/q;-><init>()V

    .line 98
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/asn1/t;->a:Ljava/util/Vector;

    .line 99
    iput-boolean v0, p0, Lorg/spongycastle/asn1/t;->b:Z

    .line 244
    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/e;->a()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 246
    iget-object v1, p0, Lorg/spongycastle/asn1/t;->a:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/e;->a(I)Lorg/spongycastle/asn1/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    :cond_0
    if-eqz p2, :cond_1

    .line 251
    invoke-virtual {p0}, Lorg/spongycastle/asn1/t;->g()V

    .line 253
    :cond_1
    return-void
.end method

.method protected constructor <init>([Lorg/spongycastle/asn1/d;Z)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 261
    invoke-direct {p0}, Lorg/spongycastle/asn1/q;-><init>()V

    .line 98
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/asn1/t;->a:Ljava/util/Vector;

    .line 99
    iput-boolean v0, p0, Lorg/spongycastle/asn1/t;->b:Z

    .line 262
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 264
    iget-object v1, p0, Lorg/spongycastle/asn1/t;->a:Ljava/util/Vector;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :cond_0
    if-eqz p2, :cond_1

    .line 269
    invoke-virtual {p0}, Lorg/spongycastle/asn1/t;->g()V

    .line 271
    :cond_1
    return-void
.end method

.method private a(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/d;
    .locals 1

    .prologue
    .line 455
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/d;

    .line 458
    if-nez v0, :cond_0

    .line 460
    sget-object v0, Lorg/spongycastle/asn1/au;->a:Lorg/spongycastle/asn1/au;

    .line 463
    :cond_0
    return-object v0
.end method

.method public static a(Lorg/spongycastle/asn1/w;Z)Lorg/spongycastle/asn1/t;
    .locals 3

    .prologue
    .line 164
    if-eqz p1, :cond_1

    .line 166
    invoke-virtual {p0}, Lorg/spongycastle/asn1/w;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "object implicit - explicit expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/w;->j()Lorg/spongycastle/asn1/q;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/t;

    .line 212
    :goto_0
    return-object v0

    .line 180
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/asn1/w;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    instance-of v0, p0, Lorg/spongycastle/asn1/aj;

    if-eqz v0, :cond_2

    .line 184
    new-instance v0, Lorg/spongycastle/asn1/ah;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/w;->j()Lorg/spongycastle/asn1/q;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ah;-><init>(Lorg/spongycastle/asn1/d;)V

    goto :goto_0

    .line 188
    :cond_2
    new-instance v0, Lorg/spongycastle/asn1/bl;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/w;->j()Lorg/spongycastle/asn1/q;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/bl;-><init>(Lorg/spongycastle/asn1/d;)V

    goto :goto_0

    .line 193
    :cond_3
    invoke-virtual {p0}, Lorg/spongycastle/asn1/w;->j()Lorg/spongycastle/asn1/q;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/asn1/t;

    if-eqz v0, :cond_4

    .line 195
    invoke-virtual {p0}, Lorg/spongycastle/asn1/w;->j()Lorg/spongycastle/asn1/q;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/t;

    goto :goto_0

    .line 202
    :cond_4
    invoke-virtual {p0}, Lorg/spongycastle/asn1/w;->j()Lorg/spongycastle/asn1/q;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/asn1/r;

    if-eqz v0, :cond_6

    .line 204
    invoke-virtual {p0}, Lorg/spongycastle/asn1/w;->j()Lorg/spongycastle/asn1/q;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/r;

    .line 206
    instance-of v1, p0, Lorg/spongycastle/asn1/aj;

    if-eqz v1, :cond_5

    .line 208
    new-instance v1, Lorg/spongycastle/asn1/ah;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/r;->d()[Lorg/spongycastle/asn1/d;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/ah;-><init>([Lorg/spongycastle/asn1/d;)V

    move-object v0, v1

    goto :goto_0

    .line 212
    :cond_5
    new-instance v1, Lorg/spongycastle/asn1/bl;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/r;->d()[Lorg/spongycastle/asn1/d;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/bl;-><init>([Lorg/spongycastle/asn1/d;)V

    move-object v0, v1

    goto :goto_0

    .line 218
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a([B[B)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 473
    array-length v2, p1

    array-length v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v2, v1

    .line 474
    :goto_0
    if-eq v2, v3, :cond_3

    .line 476
    aget-byte v4, p1, v2

    aget-byte v5, p2, v2

    if-eq v4, v5, :cond_2

    .line 478
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    if-ge v3, v2, :cond_1

    .line 481
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 478
    goto :goto_1

    .line 474
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 481
    :cond_3
    array-length v2, p1

    if-eq v3, v2, :cond_0

    move v0, v1

    goto :goto_1
.end method

.method private a(Lorg/spongycastle/asn1/d;)[B
    .locals 2

    .prologue
    .line 487
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 488
    new-instance v1, Lorg/spongycastle/asn1/o;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/o;-><init>(Ljava/io/OutputStream;)V

    .line 492
    :try_start_0
    invoke-virtual {v1, p1}, Lorg/spongycastle/asn1/o;->a(Lorg/spongycastle/asn1/d;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 494
    :catch_0
    move-exception v0

    .line 496
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "cannot encode object added to SET"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method abstract a(Lorg/spongycastle/asn1/o;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method a()Z
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x1

    return v0
.end method

.method a(Lorg/spongycastle/asn1/q;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 419
    instance-of v1, p1, Lorg/spongycastle/asn1/t;

    if-nez v1, :cond_1

    .line 450
    :cond_0
    :goto_0
    return v0

    .line 424
    :cond_1
    check-cast p1, Lorg/spongycastle/asn1/t;

    .line 426
    invoke-virtual {p0}, Lorg/spongycastle/asn1/t;->e()I

    move-result v1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/t;->e()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 431
    invoke-virtual {p0}, Lorg/spongycastle/asn1/t;->d()Ljava/util/Enumeration;

    move-result-object v1

    .line 432
    invoke-virtual {p1}, Lorg/spongycastle/asn1/t;->d()Ljava/util/Enumeration;

    move-result-object v2

    .line 434
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 436
    invoke-direct {p0, v1}, Lorg/spongycastle/asn1/t;->a(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/d;

    move-result-object v3

    .line 437
    invoke-direct {p0, v2}, Lorg/spongycastle/asn1/t;->a(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/d;

    move-result-object v4

    .line 439
    invoke-interface {v3}, Lorg/spongycastle/asn1/d;->c()Lorg/spongycastle/asn1/q;

    move-result-object v3

    .line 440
    invoke-interface {v4}, Lorg/spongycastle/asn1/d;->c()Lorg/spongycastle/asn1/q;

    move-result-object v4

    .line 442
    if-eq v3, v4, :cond_2

    invoke-virtual {v3, v4}, Lorg/spongycastle/asn1/q;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 450
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public d()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lorg/spongycastle/asn1/t;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lorg/spongycastle/asn1/t;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method protected g()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 504
    iget-boolean v0, p0, Lorg/spongycastle/asn1/t;->b:Z

    if-nez v0, :cond_2

    .line 506
    iput-boolean v5, p0, Lorg/spongycastle/asn1/t;->b:Z

    .line 507
    iget-object v0, p0, Lorg/spongycastle/asn1/t;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v5, :cond_2

    .line 510
    iget-object v0, p0, Lorg/spongycastle/asn1/t;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    move v7, v2

    move v4, v5

    .line 512
    :goto_0
    if-eqz v4, :cond_2

    .line 516
    iget-object v0, p0, Lorg/spongycastle/asn1/t;->a:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/d;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/t;->a(Lorg/spongycastle/asn1/d;)[B

    move-result-object v1

    move v2, v6

    move v3, v6

    move v4, v6

    .line 520
    :goto_1
    if-eq v3, v7, :cond_1

    .line 522
    iget-object v0, p0, Lorg/spongycastle/asn1/t;->a:Ljava/util/Vector;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v0, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/d;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/t;->a(Lorg/spongycastle/asn1/d;)[B

    move-result-object v0

    .line 524
    invoke-direct {p0, v1, v0}, Lorg/spongycastle/asn1/t;->a([B[B)Z

    move-result v8

    if-eqz v8, :cond_0

    move v1, v2

    move v2, v4

    .line 539
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v4, v2

    move v2, v1

    move-object v1, v0

    .line 540
    goto :goto_1

    .line 530
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/t;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 532
    iget-object v2, p0, Lorg/spongycastle/asn1/t;->a:Ljava/util/Vector;

    iget-object v4, p0, Lorg/spongycastle/asn1/t;->a:Ljava/util/Vector;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v4, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 533
    iget-object v2, p0, Lorg/spongycastle/asn1/t;->a:Ljava/util/Vector;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v0, v4}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move-object v0, v1

    move v2, v5

    move v1, v3

    .line 536
    goto :goto_2

    :cond_1
    move v7, v2

    .line 543
    goto :goto_0

    .line 546
    :cond_2
    return-void
.end method

.method h()Lorg/spongycastle/asn1/q;
    .locals 3

    .prologue
    .line 376
    iget-boolean v0, p0, Lorg/spongycastle/asn1/t;->b:Z

    if-eqz v0, :cond_0

    .line 378
    new-instance v0, Lorg/spongycastle/asn1/bc;

    invoke-direct {v0}, Lorg/spongycastle/asn1/bc;-><init>()V

    .line 380
    iget-object v1, p0, Lorg/spongycastle/asn1/t;->a:Ljava/util/Vector;

    iput-object v1, v0, Lorg/spongycastle/asn1/t;->a:Ljava/util/Vector;

    .line 399
    :goto_0
    return-object v0

    .line 386
    :cond_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 388
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lorg/spongycastle/asn1/t;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 390
    iget-object v2, p0, Lorg/spongycastle/asn1/t;->a:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 393
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/bc;

    invoke-direct {v0}, Lorg/spongycastle/asn1/bc;-><init>()V

    .line 395
    iput-object v1, v0, Lorg/spongycastle/asn1/t;->a:Ljava/util/Vector;

    .line 397
    invoke-virtual {v0}, Lorg/spongycastle/asn1/t;->g()V

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 356
    invoke-virtual {p0}, Lorg/spongycastle/asn1/t;->d()Ljava/util/Enumeration;

    move-result-object v1

    .line 357
    invoke-virtual {p0}, Lorg/spongycastle/asn1/t;->e()I

    move-result v0

    .line 359
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    invoke-direct {p0, v1}, Lorg/spongycastle/asn1/t;->a(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/d;

    move-result-object v2

    .line 362
    mul-int/lit8 v0, v0, 0x11

    .line 364
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 365
    goto :goto_0

    .line 367
    :cond_0
    return v0
.end method

.method i()Lorg/spongycastle/asn1/q;
    .locals 2

    .prologue
    .line 409
    new-instance v0, Lorg/spongycastle/asn1/bl;

    invoke-direct {v0}, Lorg/spongycastle/asn1/bl;-><init>()V

    .line 411
    iget-object v1, p0, Lorg/spongycastle/asn1/t;->a:Ljava/util/Vector;

    iput-object v1, v0, Lorg/spongycastle/asn1/t;->a:Ljava/util/Vector;

    .line 413
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lorg/spongycastle/asn1/t;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
