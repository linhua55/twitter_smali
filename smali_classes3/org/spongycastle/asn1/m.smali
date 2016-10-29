.class public abstract Lorg/spongycastle/asn1/m;
.super Lorg/spongycastle/asn1/q;
.source "Twttr"

# interfaces
.implements Lorg/spongycastle/asn1/n;


# instance fields
.field a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .prologue
    .line 173
    invoke-direct {p0}, Lorg/spongycastle/asn1/q;-><init>()V

    .line 174
    if-nez p1, :cond_0

    .line 176
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "string cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/asn1/m;->a:[B

    .line 179
    return-void
.end method

.method public static a(Ljava/lang/Object;)Lorg/spongycastle/asn1/m;
    .locals 4

    .prologue
    .line 140
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/m;

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/m;

    move-object v0, p0

    .line 161
    :goto_0
    return-object v0

    .line 144
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    .line 148
    :try_start_0
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Lorg/spongycastle/asn1/q;->b([B)Lorg/spongycastle/asn1/q;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/m;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/m;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 152
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to construct OCTET STRING from byte[]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :cond_2
    instance-of v0, p0, Lorg/spongycastle/asn1/d;

    if-eqz v0, :cond_3

    move-object v0, p0

    .line 157
    check-cast v0, Lorg/spongycastle/asn1/d;

    invoke-interface {v0}, Lorg/spongycastle/asn1/d;->c()Lorg/spongycastle/asn1/q;

    move-result-object v0

    .line 159
    instance-of v1, v0, Lorg/spongycastle/asn1/m;

    if-eqz v1, :cond_3

    .line 161
    check-cast v0, Lorg/spongycastle/asn1/m;

    goto :goto_0

    .line 165
    :cond_3
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
.method abstract a(Lorg/spongycastle/asn1/o;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method a(Lorg/spongycastle/asn1/q;)Z
    .locals 2

    .prologue
    .line 219
    instance-of v0, p1, Lorg/spongycastle/asn1/m;

    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x0

    .line 226
    :goto_0
    return v0

    .line 224
    :cond_0
    check-cast p1, Lorg/spongycastle/asn1/m;

    .line 226
    iget-object v0, p0, Lorg/spongycastle/asn1/m;->a:[B

    iget-object v1, p1, Lorg/spongycastle/asn1/m;->a:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/a;->a([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public d()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 188
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/spongycastle/asn1/m;->a:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public e()[B
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/spongycastle/asn1/m;->a:[B

    return-object v0
.end method

.method public g()Lorg/spongycastle/asn1/q;
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0}, Lorg/spongycastle/asn1/m;->c()Lorg/spongycastle/asn1/q;

    move-result-object v0

    return-object v0
.end method

.method h()Lorg/spongycastle/asn1/q;
    .locals 2

    .prologue
    .line 236
    new-instance v0, Lorg/spongycastle/asn1/aw;

    iget-object v1, p0, Lorg/spongycastle/asn1/m;->a:[B

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/aw;-><init>([B)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lorg/spongycastle/asn1/m;->e()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/a;->a([B)I

    move-result v0

    return v0
.end method

.method i()Lorg/spongycastle/asn1/q;
    .locals 2

    .prologue
    .line 241
    new-instance v0, Lorg/spongycastle/asn1/aw;

    iget-object v1, p0, Lorg/spongycastle/asn1/m;->a:[B

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/aw;-><init>([B)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/spongycastle/asn1/m;->a:[B

    invoke-static {v2}, Lorg/spongycastle/util/encoders/b;->a([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
