.class public Lorg/spongycastle/asn1/bh;
.super Lorg/spongycastle/asn1/q;
.source "Twttr"


# static fields
.field private static final a:[C


# instance fields
.field private b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/asn1/bh;->a:[C

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

.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/spongycastle/asn1/q;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/spongycastle/asn1/bh;->b:[B

    .line 81
    return-void
.end method


# virtual methods
.method a(Lorg/spongycastle/asn1/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    const/16 v0, 0x1c

    invoke-virtual {p0}, Lorg/spongycastle/asn1/bh;->e()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/spongycastle/asn1/o;->a(I[B)V

    .line 134
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method a(Lorg/spongycastle/asn1/q;)Z
    .locals 2

    .prologue
    .line 139
    instance-of v0, p1, Lorg/spongycastle/asn1/bh;

    if-nez v0, :cond_0

    .line 141
    const/4 v0, 0x0

    .line 144
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/bh;->b:[B

    check-cast p1, Lorg/spongycastle/asn1/bh;

    iget-object v1, p1, Lorg/spongycastle/asn1/bh;->b:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/a;->a([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method b()I
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lorg/spongycastle/asn1/bh;->b:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/spongycastle/asn1/bu;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/asn1/bh;->b:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 5

    .prologue
    .line 85
    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v0, "#"

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 86
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 87
    new-instance v2, Lorg/spongycastle/asn1/o;

    invoke-direct {v2, v0}, Lorg/spongycastle/asn1/o;-><init>(Ljava/io/OutputStream;)V

    .line 91
    :try_start_0
    invoke-virtual {v2, p0}, Lorg/spongycastle/asn1/o;->a(Lorg/spongycastle/asn1/d;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 100
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-eq v0, v3, :cond_0

    .line 102
    sget-object v3, Lorg/spongycastle/asn1/bh;->a:[C

    aget-byte v4, v2, v0

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 103
    sget-object v3, Lorg/spongycastle/asn1/bh;->a:[C

    aget-byte v4, v2, v0

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 95
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "internal error encoding BitString"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()[B
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/spongycastle/asn1/bh;->b:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/spongycastle/asn1/bh;->b:[B

    invoke-static {v0}, Lorg/spongycastle/util/a;->a([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/spongycastle/asn1/bh;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
