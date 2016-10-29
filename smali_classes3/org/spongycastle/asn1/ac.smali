.class public Lorg/spongycastle/asn1/ac;
.super Lorg/spongycastle/asn1/m;
.source "Twttr"


# instance fields
.field private b:[Lorg/spongycastle/asn1/m;


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/m;-><init>([B)V

    .line 51
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/m;)V
    .locals 1

    .prologue
    .line 56
    invoke-static {p1}, Lorg/spongycastle/asn1/ac;->a([Lorg/spongycastle/asn1/m;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/m;-><init>([B)V

    .line 58
    iput-object p1, p0, Lorg/spongycastle/asn1/ac;->b:[Lorg/spongycastle/asn1/m;

    .line 59
    return-void
.end method

.method private static a([Lorg/spongycastle/asn1/m;)[B
    .locals 4

    .prologue
    .line 21
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 23
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p0

    if-eq v1, v0, :cond_0

    .line 27
    :try_start_0
    aget-object v0, p0, v1

    check-cast v0, Lorg/spongycastle/asn1/aw;

    .line 29
    invoke-virtual {v0}, Lorg/spongycastle/asn1/aw;->e()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p0, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " found in input should only contain DEROctetString"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :catch_1
    move-exception v0

    .line 37
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exception converting octets "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lorg/spongycastle/asn1/ac;)[Lorg/spongycastle/asn1/m;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lorg/spongycastle/asn1/ac;->b:[Lorg/spongycastle/asn1/m;

    return-object v0
.end method

.method private k()Ljava/util/Vector;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 94
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    move v0, v1

    .line 95
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/asn1/ac;->a:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 99
    add-int/lit16 v2, v0, 0x3e8

    iget-object v4, p0, Lorg/spongycastle/asn1/ac;->a:[B

    array-length v4, v4

    if-le v2, v4, :cond_0

    .line 101
    iget-object v2, p0, Lorg/spongycastle/asn1/ac;->a:[B

    array-length v2, v2

    .line 108
    :goto_1
    sub-int/2addr v2, v0

    new-array v2, v2, [B

    .line 110
    iget-object v4, p0, Lorg/spongycastle/asn1/ac;->a:[B

    array-length v5, v2

    invoke-static {v4, v0, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    new-instance v4, Lorg/spongycastle/asn1/aw;

    invoke-direct {v4, v2}, Lorg/spongycastle/asn1/aw;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 95
    add-int/lit16 v0, v0, 0x3e8

    goto :goto_0

    .line 105
    :cond_0
    add-int/lit16 v2, v0, 0x3e8

    goto :goto_1

    .line 115
    :cond_1
    return-object v3
.end method


# virtual methods
.method public a(Lorg/spongycastle/asn1/o;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 139
    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/o;->b(I)V

    .line 141
    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/o;->b(I)V

    .line 146
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ac;->j()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/d;

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/o;->a(Lorg/spongycastle/asn1/d;)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/o;->b(I)V

    .line 152
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/o;->b(I)V

    .line 153
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method b()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ac;->j()Ljava/util/Enumeration;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/d;

    invoke-interface {v0}, Lorg/spongycastle/asn1/d;->c()Lorg/spongycastle/asn1/q;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/q;->b()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 132
    :cond_0
    add-int/lit8 v0, v1, 0x2

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public e()[B
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/spongycastle/asn1/ac;->a:[B

    return-object v0
.end method

.method public j()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/spongycastle/asn1/ac;->b:[Lorg/spongycastle/asn1/m;

    if-nez v0, :cond_0

    .line 73
    invoke-direct {p0}, Lorg/spongycastle/asn1/ac;->k()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/ad;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/ad;-><init>(Lorg/spongycastle/asn1/ac;)V

    goto :goto_0
.end method
