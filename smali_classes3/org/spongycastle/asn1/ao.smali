.class public Lorg/spongycastle/asn1/ao;
.super Lorg/spongycastle/asn1/q;
.source "Twttr"


# static fields
.field private static final c:[C


# instance fields
.field protected a:[B

.field protected b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/asn1/ao;->c:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-direct {p0}, Lorg/spongycastle/asn1/q;-><init>()V

    .line 177
    invoke-interface {p1}, Lorg/spongycastle/asn1/d;->c()Lorg/spongycastle/asn1/q;

    move-result-object v0

    const-string/jumbo v1, "DER"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/q;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ao;->a:[B

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/asn1/ao;->b:I

    .line 179
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Lorg/spongycastle/asn1/q;-><init>()V

    .line 156
    iput-object p1, p0, Lorg/spongycastle/asn1/ao;->a:[B

    .line 157
    iput p2, p0, Lorg/spongycastle/asn1/ao;->b:I

    .line 158
    return-void
.end method

.method static a(ILjava/io/InputStream;)Lorg/spongycastle/asn1/ao;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    .line 302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "truncated BIT STRING detected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 306
    add-int/lit8 v1, p0, -0x1

    new-array v1, v1, [B

    .line 308
    array-length v2, v1

    if-eqz v2, :cond_1

    .line 310
    invoke-static {p1, v1}, Lorg/spongycastle/util/io/a;->a(Ljava/io/InputStream;[B)I

    move-result v2

    array-length v3, v1

    if-eq v2, v3, :cond_1

    .line 312
    new-instance v0, Ljava/io/EOFException;

    const-string/jumbo v1, "EOF encountered in middle of BIT STRING"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_1
    new-instance v2, Lorg/spongycastle/asn1/ao;

    invoke-direct {v2, v1, v0}, Lorg/spongycastle/asn1/ao;-><init>([BI)V

    return-object v2
.end method

.method public static a(Ljava/lang/Object;)Lorg/spongycastle/asn1/ao;
    .locals 3

    .prologue
    .line 105
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/ao;

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/ao;

    return-object p0

    .line 110
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "illegal object in getInstance: "

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


# virtual methods
.method a(Lorg/spongycastle/asn1/o;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 221
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ao;->d()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 223
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ao;->e()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 224
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ao;->d()[B

    move-result-object v1

    const/4 v2, 0x1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lorg/spongycastle/asn1/o;->a(I[B)V

    .line 227
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method protected a(Lorg/spongycastle/asn1/q;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 237
    instance-of v1, p1, Lorg/spongycastle/asn1/ao;

    if-nez v1, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v0

    .line 242
    :cond_1
    check-cast p1, Lorg/spongycastle/asn1/ao;

    .line 244
    iget v1, p0, Lorg/spongycastle/asn1/ao;->b:I

    iget v2, p1, Lorg/spongycastle/asn1/ao;->b:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/spongycastle/asn1/ao;->a:[B

    iget-object v2, p1, Lorg/spongycastle/asn1/ao;->a:[B

    invoke-static {v1, v2}, Lorg/spongycastle/util/a;->a([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method b()I
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lorg/spongycastle/asn1/ao;->a:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/spongycastle/asn1/bu;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/asn1/ao;->a:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public d()[B
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/spongycastle/asn1/ao;->a:[B

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lorg/spongycastle/asn1/ao;->b:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 5

    .prologue
    .line 250
    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v0, "#"

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 251
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 252
    new-instance v2, Lorg/spongycastle/asn1/o;

    invoke-direct {v2, v0}, Lorg/spongycastle/asn1/o;-><init>(Ljava/io/OutputStream;)V

    .line 256
    :try_start_0
    invoke-virtual {v2, p0}, Lorg/spongycastle/asn1/o;->a(Lorg/spongycastle/asn1/d;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 265
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-eq v0, v3, :cond_0

    .line 267
    sget-object v3, Lorg/spongycastle/asn1/ao;->c:[C

    aget-byte v4, v2, v0

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 268
    sget-object v3, Lorg/spongycastle/asn1/ao;->c:[C

    aget-byte v4, v2, v0

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 260
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "internal error encoding BitString"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 231
    iget v0, p0, Lorg/spongycastle/asn1/ao;->b:I

    iget-object v1, p0, Lorg/spongycastle/asn1/ao;->a:[B

    invoke-static {v1}, Lorg/spongycastle/util/a;->a([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ao;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
