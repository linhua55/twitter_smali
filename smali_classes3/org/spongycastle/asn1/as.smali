.class public Lorg/spongycastle/asn1/as;
.super Lorg/spongycastle/asn1/q;
.source "Twttr"


# instance fields
.field private a:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/spongycastle/asn1/q;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/spongycastle/asn1/as;->a:[B

    .line 57
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
    .line 92
    const/16 v0, 0x1b

    iget-object v1, p0, Lorg/spongycastle/asn1/as;->a:[B

    invoke-virtual {p1, v0, v1}, Lorg/spongycastle/asn1/o;->a(I[B)V

    .line 93
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method a(Lorg/spongycastle/asn1/q;)Z
    .locals 2

    .prologue
    .line 102
    instance-of v0, p1, Lorg/spongycastle/asn1/as;

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0

    .line 106
    :cond_0
    check-cast p1, Lorg/spongycastle/asn1/as;

    .line 108
    iget-object v0, p0, Lorg/spongycastle/asn1/as;->a:[B

    iget-object v1, p1, Lorg/spongycastle/asn1/as;->a:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/a;->a([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method b()I
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lorg/spongycastle/asn1/as;->a:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/spongycastle/asn1/bu;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/asn1/as;->a:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/spongycastle/asn1/as;->a:[B

    invoke-static {v0}, Lorg/spongycastle/util/d;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/spongycastle/asn1/as;->a:[B

    invoke-static {v0}, Lorg/spongycastle/util/a;->a([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/spongycastle/asn1/as;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
