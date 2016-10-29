.class public Lorg/spongycastle/asn1/y;
.super Lorg/spongycastle/asn1/q;
.source "Twttr"


# instance fields
.field private a:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lorg/spongycastle/asn1/q;-><init>()V

    .line 154
    iput-object p1, p0, Lorg/spongycastle/asn1/y;->a:[B

    .line 155
    return-void
.end method


# virtual methods
.method a(Lorg/spongycastle/asn1/o;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/o;->b(I)V

    .line 284
    iget-object v0, p0, Lorg/spongycastle/asn1/y;->a:[B

    array-length v1, v0

    .line 286
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/o;->a(I)V

    .line 288
    const/4 v0, 0x0

    :goto_0
    if-eq v0, v1, :cond_0

    .line 290
    iget-object v2, p0, Lorg/spongycastle/asn1/y;->a:[B

    aget-byte v2, v2, v0

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/o;->b(I)V

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    :cond_0
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method a(Lorg/spongycastle/asn1/q;)Z
    .locals 2

    .prologue
    .line 297
    instance-of v0, p1, Lorg/spongycastle/asn1/y;

    if-nez v0, :cond_0

    .line 299
    const/4 v0, 0x0

    .line 302
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/y;->a:[B

    check-cast p1, Lorg/spongycastle/asn1/y;

    iget-object v1, p1, Lorg/spongycastle/asn1/y;->a:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/a;->a([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method b()I
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lorg/spongycastle/asn1/y;->a:[B

    array-length v0, v0

    .line 275
    invoke-static {v0}, Lorg/spongycastle/asn1/bu;->a(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lorg/spongycastle/asn1/y;->a:[B

    invoke-static {v0}, Lorg/spongycastle/util/a;->a([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lorg/spongycastle/asn1/y;->a:[B

    invoke-static {v0}, Lorg/spongycastle/util/d;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
