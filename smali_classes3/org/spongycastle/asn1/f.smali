.class public Lorg/spongycastle/asn1/f;
.super Lorg/spongycastle/asn1/q;
.source "Twttr"


# static fields
.field private static b:[Lorg/spongycastle/asn1/f;


# instance fields
.field a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    const/16 v0, 0xc

    new-array v0, v0, [Lorg/spongycastle/asn1/f;

    sput-object v0, Lorg/spongycastle/asn1/f;->b:[Lorg/spongycastle/asn1/f;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lorg/spongycastle/asn1/q;-><init>()V

    .line 102
    iput-object p1, p0, Lorg/spongycastle/asn1/f;->a:[B

    .line 103
    return-void
.end method

.method static a([B)Lorg/spongycastle/asn1/f;
    .locals 4

    .prologue
    .line 149
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 151
    new-instance v0, Lorg/spongycastle/asn1/f;

    invoke-static {p0}, Lorg/spongycastle/util/a;->b([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/f;-><init>([B)V

    .line 172
    :cond_0
    :goto_0
    return-object v0

    .line 154
    :cond_1
    array-length v0, p0

    if-nez v0, :cond_2

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ENUMERATED has zero length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_2
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v1, v0, 0xff

    .line 160
    sget-object v0, Lorg/spongycastle/asn1/f;->b:[Lorg/spongycastle/asn1/f;

    array-length v0, v0

    if-lt v1, v0, :cond_3

    .line 162
    new-instance v0, Lorg/spongycastle/asn1/f;

    invoke-static {p0}, Lorg/spongycastle/util/a;->b([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/f;-><init>([B)V

    goto :goto_0

    .line 165
    :cond_3
    sget-object v0, Lorg/spongycastle/asn1/f;->b:[Lorg/spongycastle/asn1/f;

    aget-object v0, v0, v1

    .line 167
    if-nez v0, :cond_0

    .line 169
    sget-object v2, Lorg/spongycastle/asn1/f;->b:[Lorg/spongycastle/asn1/f;

    new-instance v0, Lorg/spongycastle/asn1/f;

    invoke-static {p0}, Lorg/spongycastle/util/a;->b([B)[B

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/f;-><init>([B)V

    aput-object v0, v2, v1

    goto :goto_0
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
    .line 124
    const/16 v0, 0xa

    iget-object v1, p0, Lorg/spongycastle/asn1/f;->a:[B

    invoke-virtual {p1, v0, v1}, Lorg/spongycastle/asn1/o;->a(I[B)V

    .line 125
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method a(Lorg/spongycastle/asn1/q;)Z
    .locals 2

    .prologue
    .line 130
    instance-of v0, p1, Lorg/spongycastle/asn1/f;

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 137
    :goto_0
    return v0

    .line 135
    :cond_0
    check-cast p1, Lorg/spongycastle/asn1/f;

    .line 137
    iget-object v0, p0, Lorg/spongycastle/asn1/f;->a:[B

    iget-object v1, p1, Lorg/spongycastle/asn1/f;->a:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/a;->a([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method b()I
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lorg/spongycastle/asn1/f;->a:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/spongycastle/asn1/bu;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/asn1/f;->a:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/spongycastle/asn1/f;->a:[B

    invoke-static {v0}, Lorg/spongycastle/util/a;->a([B)I

    move-result v0

    return v0
.end method
