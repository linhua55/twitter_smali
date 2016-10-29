.class public Lorg/spongycastle/asn1/am;
.super Lorg/spongycastle/asn1/q;
.source "Twttr"


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:[B


# direct methods
.method public constructor <init>(ILorg/spongycastle/asn1/e;)V
    .locals 4

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/spongycastle/asn1/q;-><init>()V

    .line 71
    iput p1, p0, Lorg/spongycastle/asn1/am;->b:I

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/asn1/am;->a:Z

    .line 73
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 75
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Lorg/spongycastle/asn1/e;->a()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 79
    :try_start_0
    invoke-virtual {p2, v1}, Lorg/spongycastle/asn1/e;->a(I)Lorg/spongycastle/asn1/d;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/k;

    const-string/jumbo v3, "DER"

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/k;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 83
    new-instance v1, Lorg/spongycastle/asn1/ASN1ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "malformed object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 86
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/am;->c:[B

    .line 87
    return-void
.end method

.method constructor <init>(ZI[B)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/spongycastle/asn1/q;-><init>()V

    .line 23
    iput-boolean p1, p0, Lorg/spongycastle/asn1/am;->a:Z

    .line 24
    iput p2, p0, Lorg/spongycastle/asn1/am;->b:I

    .line 25
    iput-object p3, p0, Lorg/spongycastle/asn1/am;->c:[B

    .line 26
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
    .line 199
    const/16 v0, 0x40

    .line 200
    iget-boolean v1, p0, Lorg/spongycastle/asn1/am;->a:Z

    if-eqz v1, :cond_0

    .line 202
    const/16 v0, 0x60

    .line 205
    :cond_0
    iget v1, p0, Lorg/spongycastle/asn1/am;->b:I

    iget-object v2, p0, Lorg/spongycastle/asn1/am;->c:[B

    invoke-virtual {p1, v0, v1, v2}, Lorg/spongycastle/asn1/o;->a(II[B)V

    .line 206
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lorg/spongycastle/asn1/am;->a:Z

    return v0
.end method

.method a(Lorg/spongycastle/asn1/q;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 211
    instance-of v1, p1, Lorg/spongycastle/asn1/am;

    if-nez v1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v0

    .line 216
    :cond_1
    check-cast p1, Lorg/spongycastle/asn1/am;

    .line 218
    iget-boolean v1, p0, Lorg/spongycastle/asn1/am;->a:Z

    iget-boolean v2, p1, Lorg/spongycastle/asn1/am;->a:Z

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/spongycastle/asn1/am;->b:I

    iget v2, p1, Lorg/spongycastle/asn1/am;->b:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/spongycastle/asn1/am;->c:[B

    iget-object v2, p1, Lorg/spongycastle/asn1/am;->c:[B

    invoke-static {v1, v2}, Lorg/spongycastle/util/a;->a([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

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
    .line 191
    iget v0, p0, Lorg/spongycastle/asn1/am;->b:I

    invoke-static {v0}, Lorg/spongycastle/asn1/bu;->b(I)I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/asn1/am;->c:[B

    array-length v1, v1

    invoke-static {v1}, Lorg/spongycastle/asn1/bu;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/asn1/am;->c:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 225
    iget-boolean v0, p0, Lorg/spongycastle/asn1/am;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lorg/spongycastle/asn1/am;->b:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/asn1/am;->c:[B

    invoke-static {v1}, Lorg/spongycastle/util/a;->a([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
