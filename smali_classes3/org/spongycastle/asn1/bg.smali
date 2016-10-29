.class public Lorg/spongycastle/asn1/bg;
.super Lorg/spongycastle/asn1/q;
.source "Twttr"


# instance fields
.field private a:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lorg/spongycastle/asn1/q;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/spongycastle/asn1/bg;->a:[B

    .line 82
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
    const/16 v0, 0xc

    iget-object v1, p0, Lorg/spongycastle/asn1/bg;->a:[B

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
    .line 109
    instance-of v0, p1, Lorg/spongycastle/asn1/bg;

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0

    .line 114
    :cond_0
    check-cast p1, Lorg/spongycastle/asn1/bg;

    .line 116
    iget-object v0, p0, Lorg/spongycastle/asn1/bg;->a:[B

    iget-object v1, p1, Lorg/spongycastle/asn1/bg;->a:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/a;->a([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method b()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lorg/spongycastle/asn1/bg;->a:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/spongycastle/asn1/bu;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/asn1/bg;->a:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/asn1/bg;->a:[B

    invoke-static {v0}, Lorg/spongycastle/util/d;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/spongycastle/asn1/bg;->a:[B

    invoke-static {v0}, Lorg/spongycastle/util/a;->a([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lorg/spongycastle/asn1/bg;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
