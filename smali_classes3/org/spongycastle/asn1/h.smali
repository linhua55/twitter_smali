.class public Lorg/spongycastle/asn1/h;
.super Ljava/io/FilterInputStream;
.source "Twttr"


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:[[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 29
    invoke-static {p1}, Lorg/spongycastle/asn1/bu;->a(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/h;-><init>(Ljava/io/InputStream;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/asn1/h;-><init>(Ljava/io/InputStream;IZ)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 99
    iput p2, p0, Lorg/spongycastle/asn1/h;->a:I

    .line 100
    iput-boolean p3, p0, Lorg/spongycastle/asn1/h;->b:Z

    .line 101
    const/16 v0, 0xb

    new-array v0, v0, [[B

    iput-object v0, p0, Lorg/spongycastle/asn1/h;->c:[[B

    .line 102
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/asn1/h;-><init>(Ljava/io/InputStream;I)V

    .line 42
    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1, p2}, Lorg/spongycastle/asn1/h;-><init>(Ljava/io/InputStream;IZ)V

    .line 56
    return-void
.end method

.method static a(Ljava/io/InputStream;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    and-int/lit8 v0, p1, 0x1f

    .line 295
    const/16 v1, 0x1f

    if-ne v0, v1, :cond_3

    .line 297
    const/4 v1, 0x0

    .line 299
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 303
    and-int/lit8 v2, v0, 0x7f

    if-nez v2, :cond_0

    .line 305
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "corrupted stream - invalid high tag number found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_0
    :goto_0
    if-ltz v0, :cond_1

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_1

    .line 310
    and-int/lit8 v0, v0, 0x7f

    or-int/2addr v0, v1

    .line 311
    shl-int/lit8 v1, v0, 0x7

    .line 312
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    .line 315
    :cond_1
    if-gez v0, :cond_2

    .line 317
    new-instance v0, Ljava/io/EOFException;

    const-string/jumbo v1, "EOF found inside tag value."

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_2
    and-int/lit8 v0, v0, 0x7f

    or-int/2addr v0, v1

    .line 323
    :cond_3
    return v0
.end method

.method static a(ILorg/spongycastle/asn1/bn;[[B)Lorg/spongycastle/asn1/q;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    packed-switch p0, :pswitch_data_0

    .line 469
    :pswitch_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " encountered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :pswitch_1
    invoke-virtual {p1}, Lorg/spongycastle/asn1/bn;->a()I

    move-result v0

    invoke-static {v0, p1}, Lorg/spongycastle/asn1/ao;->a(ILjava/io/InputStream;)Lorg/spongycastle/asn1/ao;

    move-result-object v0

    .line 467
    :goto_0
    return-object v0

    .line 435
    :pswitch_2
    new-instance v0, Lorg/spongycastle/asn1/an;

    invoke-static {p1}, Lorg/spongycastle/asn1/h;->b(Lorg/spongycastle/asn1/bn;)[C

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/an;-><init>([C)V

    goto :goto_0

    .line 437
    :pswitch_3
    invoke-static {p1, p2}, Lorg/spongycastle/asn1/h;->a(Lorg/spongycastle/asn1/bn;[[B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/b;->a([B)Lorg/spongycastle/asn1/b;

    move-result-object v0

    goto :goto_0

    .line 439
    :pswitch_4
    invoke-static {p1, p2}, Lorg/spongycastle/asn1/h;->a(Lorg/spongycastle/asn1/bn;[[B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/f;->a([B)Lorg/spongycastle/asn1/f;

    move-result-object v0

    goto :goto_0

    .line 441
    :pswitch_5
    new-instance v0, Lorg/spongycastle/asn1/g;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/bn;->b()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/g;-><init>([B)V

    goto :goto_0

    .line 443
    :pswitch_6
    new-instance v0, Lorg/spongycastle/asn1/as;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/bn;->b()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/as;-><init>([B)V

    goto :goto_0

    .line 445
    :pswitch_7
    new-instance v0, Lorg/spongycastle/asn1/at;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/bn;->b()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/at;-><init>([B)V

    goto :goto_0

    .line 447
    :pswitch_8
    new-instance v0, Lorg/spongycastle/asn1/i;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/bn;->b()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/i;-><init>([BZ)V

    goto :goto_0

    .line 449
    :pswitch_9
    sget-object v0, Lorg/spongycastle/asn1/au;->a:Lorg/spongycastle/asn1/au;

    goto :goto_0

    .line 451
    :pswitch_a
    new-instance v0, Lorg/spongycastle/asn1/av;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/bn;->b()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/av;-><init>([B)V

    goto :goto_0

    .line 453
    :pswitch_b
    invoke-static {p1, p2}, Lorg/spongycastle/asn1/h;->a(Lorg/spongycastle/asn1/bn;[[B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/l;->a([B)Lorg/spongycastle/asn1/l;

    move-result-object v0

    goto :goto_0

    .line 455
    :pswitch_c
    new-instance v0, Lorg/spongycastle/asn1/aw;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/bn;->b()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/aw;-><init>([B)V

    goto :goto_0

    .line 457
    :pswitch_d
    new-instance v0, Lorg/spongycastle/asn1/az;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/bn;->b()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/az;-><init>([B)V

    goto :goto_0

    .line 459
    :pswitch_e
    new-instance v0, Lorg/spongycastle/asn1/be;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/bn;->b()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/be;-><init>([B)V

    goto :goto_0

    .line 461
    :pswitch_f
    new-instance v0, Lorg/spongycastle/asn1/bh;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/bn;->b()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/bh;-><init>([B)V

    goto/16 :goto_0

    .line 463
    :pswitch_10
    new-instance v0, Lorg/spongycastle/asn1/y;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/bn;->b()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/y;-><init>([B)V

    goto/16 :goto_0

    .line 465
    :pswitch_11
    new-instance v0, Lorg/spongycastle/asn1/bg;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/bn;->b()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/bg;-><init>([B)V

    goto/16 :goto_0

    .line 467
    :pswitch_12
    new-instance v0, Lorg/spongycastle/asn1/bi;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/bn;->b()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/bi;-><init>([B)V

    goto/16 :goto_0

    .line 430
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_8
        :pswitch_1
        :pswitch_c
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_7
        :pswitch_10
        :pswitch_5
        :pswitch_0
        :pswitch_12
        :pswitch_6
        :pswitch_f
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Lorg/spongycastle/asn1/bn;[[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 380
    invoke-virtual {p0}, Lorg/spongycastle/asn1/bn;->a()I

    move-result v1

    .line 381
    invoke-virtual {p0}, Lorg/spongycastle/asn1/bn;->a()I

    move-result v0

    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 383
    aget-object v0, p1, v1

    .line 385
    if-nez v0, :cond_0

    .line 387
    new-array v0, v1, [B

    aput-object v0, p1, v1

    .line 390
    :cond_0
    invoke-static {p0, v0}, Lorg/spongycastle/util/io/a;->a(Ljava/io/InputStream;[B)I

    .line 396
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/asn1/bn;->b()[B

    move-result-object v0

    goto :goto_0
.end method

.method static b(Ljava/io/InputStream;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 329
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 330
    if-gez v0, :cond_0

    .line 332
    new-instance v0, Ljava/io/EOFException;

    const-string/jumbo v1, "EOF found when length expected"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_0
    const/16 v2, 0x80

    if-ne v0, v2, :cond_2

    .line 337
    const/4 v0, -0x1

    .line 374
    :cond_1
    return v0

    .line 340
    :cond_2
    const/16 v2, 0x7f

    if-le v0, v2, :cond_1

    .line 342
    and-int/lit8 v3, v0, 0x7f

    .line 345
    const/4 v0, 0x4

    if-le v3, v0, :cond_3

    .line 347
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DER length more than 4 bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v0, v1

    .line 351
    :goto_0
    if-ge v1, v3, :cond_5

    .line 353
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 355
    if-gez v2, :cond_4

    .line 357
    new-instance v0, Ljava/io/EOFException;

    const-string/jumbo v1, "EOF found reading length"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_4
    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v2, v0

    .line 351
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    .line 363
    :cond_5
    if-gez v0, :cond_6

    .line 365
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "corrupted stream - negative length found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_6
    if-lt v0, p1, :cond_1

    .line 370
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "corrupted stream - out of bounds length found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(Lorg/spongycastle/asn1/bn;)[C
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    invoke-virtual {p0}, Lorg/spongycastle/asn1/bn;->a()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    .line 404
    new-array v3, v2, [C

    .line 405
    const/4 v0, 0x0

    .line 406
    :goto_0
    if-ge v0, v2, :cond_0

    .line 408
    invoke-virtual {p0}, Lorg/spongycastle/asn1/bn;->read()I

    move-result v4

    .line 409
    if-gez v4, :cond_1

    .line 421
    :cond_0
    return-object v3

    .line 413
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/asn1/bn;->read()I

    move-result v5

    .line 414
    if-ltz v5, :cond_0

    .line 418
    add-int/lit8 v1, v0, 0x1

    shl-int/lit8 v4, v4, 0x8

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v3, v0

    move v0, v1

    .line 419
    goto :goto_0
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lorg/spongycastle/asn1/h;->a:I

    return v0
.end method

.method a(Lorg/spongycastle/asn1/bn;)Lorg/spongycastle/asn1/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Lorg/spongycastle/asn1/h;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/h;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/h;->c()Lorg/spongycastle/asn1/e;

    move-result-object v0

    return-object v0
.end method

.method protected a(III)Lorg/spongycastle/asn1/q;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 140
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 142
    :goto_0
    new-instance v2, Lorg/spongycastle/asn1/bn;

    invoke-direct {v2, p0, p3}, Lorg/spongycastle/asn1/bn;-><init>(Ljava/io/InputStream;I)V

    .line 144
    and-int/lit8 v3, p1, 0x40

    if-eqz v3, :cond_1

    .line 146
    new-instance v1, Lorg/spongycastle/asn1/am;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/bn;->b()[B

    move-result-object v2

    invoke-direct {v1, v0, p2, v2}, Lorg/spongycastle/asn1/am;-><init>(ZI[B)V

    move-object v0, v1

    .line 190
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 140
    goto :goto_0

    .line 149
    :cond_1
    and-int/lit16 v3, p1, 0x80

    if-eqz v3, :cond_2

    .line 151
    new-instance v1, Lorg/spongycastle/asn1/v;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/v;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v0, p2}, Lorg/spongycastle/asn1/v;->a(ZI)Lorg/spongycastle/asn1/q;

    move-result-object v0

    goto :goto_1

    .line 154
    :cond_2
    if-eqz v0, :cond_5

    .line 157
    sparse-switch p2, :sswitch_data_0

    .line 186
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " encountered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :sswitch_0
    invoke-virtual {p0, v2}, Lorg/spongycastle/asn1/h;->a(Lorg/spongycastle/asn1/bn;)Lorg/spongycastle/asn1/e;

    move-result-object v2

    .line 164
    invoke-virtual {v2}, Lorg/spongycastle/asn1/e;->a()I

    move-result v0

    new-array v3, v0, [Lorg/spongycastle/asn1/m;

    .line 166
    :goto_2
    array-length v0, v3

    if-eq v1, v0, :cond_3

    .line 168
    invoke-virtual {v2, v1}, Lorg/spongycastle/asn1/e;->a(I)Lorg/spongycastle/asn1/d;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/m;

    aput-object v0, v3, v1

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 171
    :cond_3
    new-instance v0, Lorg/spongycastle/asn1/ac;

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/ac;-><init>([Lorg/spongycastle/asn1/m;)V

    goto :goto_1

    .line 173
    :sswitch_1
    iget-boolean v0, p0, Lorg/spongycastle/asn1/h;->b:Z

    if-eqz v0, :cond_4

    .line 175
    new-instance v0, Lorg/spongycastle/asn1/br;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/bn;->b()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/br;-><init>([B)V

    goto :goto_1

    .line 179
    :cond_4
    invoke-virtual {p0, v2}, Lorg/spongycastle/asn1/h;->a(Lorg/spongycastle/asn1/bn;)Lorg/spongycastle/asn1/e;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ar;->a(Lorg/spongycastle/asn1/e;)Lorg/spongycastle/asn1/r;

    move-result-object v0

    goto :goto_1

    .line 182
    :sswitch_2
    invoke-virtual {p0, v2}, Lorg/spongycastle/asn1/h;->a(Lorg/spongycastle/asn1/bn;)Lorg/spongycastle/asn1/e;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ar;->b(Lorg/spongycastle/asn1/e;)Lorg/spongycastle/asn1/t;

    move-result-object v0

    goto :goto_1

    .line 184
    :sswitch_3
    new-instance v0, Lorg/spongycastle/asn1/ap;

    invoke-virtual {p0, v2}, Lorg/spongycastle/asn1/h;->a(Lorg/spongycastle/asn1/bn;)Lorg/spongycastle/asn1/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ap;-><init>(Lorg/spongycastle/asn1/e;)V

    goto :goto_1

    .line 190
    :cond_5
    iget-object v0, p0, Lorg/spongycastle/asn1/h;->c:[[B

    invoke-static {p2, v2, v0}, Lorg/spongycastle/asn1/h;->a(ILorg/spongycastle/asn1/bn;[[B)Lorg/spongycastle/asn1/q;

    move-result-object v0

    goto/16 :goto_1

    .line 157
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_3
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method

.method protected b()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget v0, p0, Lorg/spongycastle/asn1/h;->a:I

    invoke-static {p0, v0}, Lorg/spongycastle/asn1/h;->b(Ljava/io/InputStream;I)I

    move-result v0

    return v0
.end method

.method c()Lorg/spongycastle/asn1/e;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    new-instance v0, Lorg/spongycastle/asn1/e;

    invoke-direct {v0}, Lorg/spongycastle/asn1/e;-><init>()V

    .line 199
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/h;->d()Lorg/spongycastle/asn1/q;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/e;->a(Lorg/spongycastle/asn1/d;)V

    goto :goto_0

    .line 204
    :cond_0
    return-object v0
.end method

.method public d()Lorg/spongycastle/asn1/q;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 216
    invoke-virtual {p0}, Lorg/spongycastle/asn1/h;->read()I

    move-result v2

    .line 217
    if-gtz v2, :cond_1

    .line 219
    if-nez v2, :cond_0

    .line 221
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "unexpected end-of-contents marker"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    const/4 v0, 0x0

    .line 278
    :goto_0
    return-object v0

    .line 230
    :cond_1
    invoke-static {p0, v2}, Lorg/spongycastle/asn1/h;->a(Ljava/io/InputStream;I)I

    move-result v3

    .line 232
    and-int/lit8 v0, v2, 0x20

    if-eqz v0, :cond_2

    move v0, v1

    .line 237
    :goto_1
    invoke-virtual {p0}, Lorg/spongycastle/asn1/h;->b()I

    move-result v4

    .line 239
    if-gez v4, :cond_6

    .line 241
    if-nez v0, :cond_3

    .line 243
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "indefinite length primitive encoding encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 246
    :cond_3
    new-instance v0, Lorg/spongycastle/asn1/bp;

    iget v4, p0, Lorg/spongycastle/asn1/h;->a:I

    invoke-direct {v0, p0, v4}, Lorg/spongycastle/asn1/bp;-><init>(Ljava/io/InputStream;I)V

    .line 247
    new-instance v4, Lorg/spongycastle/asn1/v;

    iget v5, p0, Lorg/spongycastle/asn1/h;->a:I

    invoke-direct {v4, v0, v5}, Lorg/spongycastle/asn1/v;-><init>(Ljava/io/InputStream;I)V

    .line 249
    and-int/lit8 v0, v2, 0x40

    if-eqz v0, :cond_4

    .line 251
    new-instance v0, Lorg/spongycastle/asn1/aa;

    invoke-direct {v0, v3, v4}, Lorg/spongycastle/asn1/aa;-><init>(ILorg/spongycastle/asn1/v;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/aa;->g()Lorg/spongycastle/asn1/q;

    move-result-object v0

    goto :goto_0

    .line 254
    :cond_4
    and-int/lit16 v0, v2, 0x80

    if-eqz v0, :cond_5

    .line 256
    new-instance v0, Lorg/spongycastle/asn1/ak;

    invoke-direct {v0, v1, v3, v4}, Lorg/spongycastle/asn1/ak;-><init>(ZILorg/spongycastle/asn1/v;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ak;->g()Lorg/spongycastle/asn1/q;

    move-result-object v0

    goto :goto_0

    .line 260
    :cond_5
    sparse-switch v3, :sswitch_data_0

    .line 271
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "unknown BER object encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :sswitch_0
    new-instance v0, Lorg/spongycastle/asn1/ae;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/ae;-><init>(Lorg/spongycastle/asn1/v;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ae;->g()Lorg/spongycastle/asn1/q;

    move-result-object v0

    goto :goto_0

    .line 265
    :sswitch_1
    new-instance v0, Lorg/spongycastle/asn1/ag;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/ag;-><init>(Lorg/spongycastle/asn1/v;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ag;->g()Lorg/spongycastle/asn1/q;

    move-result-object v0

    goto :goto_0

    .line 267
    :sswitch_2
    new-instance v0, Lorg/spongycastle/asn1/ai;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/ai;-><init>(Lorg/spongycastle/asn1/v;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ai;->g()Lorg/spongycastle/asn1/q;

    move-result-object v0

    goto :goto_0

    .line 269
    :sswitch_3
    new-instance v0, Lorg/spongycastle/asn1/aq;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/aq;-><init>(Lorg/spongycastle/asn1/v;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/aq;->g()Lorg/spongycastle/asn1/q;

    move-result-object v0

    goto :goto_0

    .line 278
    :cond_6
    :try_start_0
    invoke-virtual {p0, v2, v3, v4}, Lorg/spongycastle/asn1/h;->a(III)Lorg/spongycastle/asn1/q;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 282
    new-instance v1, Lorg/spongycastle/asn1/ASN1Exception;

    const-string/jumbo v2, "corrupted stream detected"

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 260
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_3
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method
