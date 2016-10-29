.class public Lorg/spongycastle/asn1/g;
.super Lorg/spongycastle/asn1/q;
.source "Twttr"


# instance fields
.field private a:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/spongycastle/asn1/q;-><init>()V

    .line 140
    iput-object p1, p0, Lorg/spongycastle/asn1/g;->a:[B

    .line 141
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
    .line 355
    const/16 v0, 0x18

    iget-object v1, p0, Lorg/spongycastle/asn1/g;->a:[B

    invoke-virtual {p1, v0, v1}, Lorg/spongycastle/asn1/o;->a(I[B)V

    .line 356
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method a(Lorg/spongycastle/asn1/q;)Z
    .locals 2

    .prologue
    .line 361
    instance-of v0, p1, Lorg/spongycastle/asn1/g;

    if-nez v0, :cond_0

    .line 363
    const/4 v0, 0x0

    .line 366
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/g;->a:[B

    check-cast p1, Lorg/spongycastle/asn1/g;

    iget-object v1, p1, Lorg/spongycastle/asn1/g;->a:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/a;->a([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method b()I
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lorg/spongycastle/asn1/g;->a:[B

    array-length v0, v0

    .line 348
    invoke-static {v0}, Lorg/spongycastle/asn1/bu;->a(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lorg/spongycastle/asn1/g;->a:[B

    invoke-static {v0}, Lorg/spongycastle/util/a;->a([B)I

    move-result v0

    return v0
.end method
