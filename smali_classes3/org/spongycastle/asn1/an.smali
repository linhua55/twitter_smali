.class public Lorg/spongycastle/asn1/an;
.super Lorg/spongycastle/asn1/q;
.source "Twttr"


# instance fields
.field private a:[C


# direct methods
.method constructor <init>([C)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lorg/spongycastle/asn1/q;-><init>()V

    .line 91
    iput-object p1, p0, Lorg/spongycastle/asn1/an;->a:[C

    .line 92
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
    .line 146
    const/16 v0, 0x1e

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/o;->b(I)V

    .line 147
    iget-object v0, p0, Lorg/spongycastle/asn1/an;->a:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/o;->a(I)V

    .line 149
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/spongycastle/asn1/an;->a:[C

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 151
    iget-object v1, p0, Lorg/spongycastle/asn1/an;->a:[C

    aget-char v1, v1, v0

    .line 153
    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/o;->b(I)V

    .line 154
    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/o;->b(I)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method protected a(Lorg/spongycastle/asn1/q;)Z
    .locals 2

    .prologue
    .line 122
    instance-of v0, p1, Lorg/spongycastle/asn1/an;

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 129
    :goto_0
    return v0

    .line 127
    :cond_0
    check-cast p1, Lorg/spongycastle/asn1/an;

    .line 129
    iget-object v0, p0, Lorg/spongycastle/asn1/an;->a:[C

    iget-object v1, p1, Lorg/spongycastle/asn1/an;->a:[C

    invoke-static {v0, v1}, Lorg/spongycastle/util/a;->a([C[C)Z

    move-result v0

    goto :goto_0
.end method

.method b()I
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lorg/spongycastle/asn1/an;->a:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lorg/spongycastle/asn1/bu;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/asn1/an;->a:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/spongycastle/asn1/an;->a:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/spongycastle/asn1/an;->a:[C

    invoke-static {v0}, Lorg/spongycastle/util/a;->a([C)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/spongycastle/asn1/an;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
