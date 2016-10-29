.class public abstract Lorg/spongycastle/asn1/r;
.super Lorg/spongycastle/asn1/q;
.source "Twttr"


# instance fields
.field protected a:Ljava/util/Vector;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Lorg/spongycastle/asn1/q;-><init>()V

    .line 57
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/r;->a:Ljava/util/Vector;

    .line 166
    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/asn1/e;)V
    .locals 3

    .prologue
    .line 184
    invoke-direct {p0}, Lorg/spongycastle/asn1/q;-><init>()V

    .line 57
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/r;->a:Ljava/util/Vector;

    .line 185
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/e;->a()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 187
    iget-object v1, p0, Lorg/spongycastle/asn1/r;->a:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/e;->a(I)Lorg/spongycastle/asn1/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_0
    return-void
.end method

.method private a(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/d;
    .locals 1

    .prologue
    .line 339
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/d;

    .line 341
    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lorg/spongycastle/asn1/r;
    .locals 4

    .prologue
    .line 69
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/r;

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/r;

    move-object v0, p0

    .line 94
    :goto_0
    return-object v0

    .line 73
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/s;

    if-eqz v0, :cond_2

    .line 75
    check-cast p0, Lorg/spongycastle/asn1/s;

    invoke-interface {p0}, Lorg/spongycastle/asn1/s;->c()Lorg/spongycastle/asn1/q;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/r;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/r;

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    .line 81
    :try_start_0
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Lorg/spongycastle/asn1/r;->b([B)Lorg/spongycastle/asn1/q;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/r;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/r;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 85
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to construct sequence from byte[]: "

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

    .line 88
    :cond_3
    instance-of v0, p0, Lorg/spongycastle/asn1/d;

    if-eqz v0, :cond_4

    move-object v0, p0

    .line 90
    check-cast v0, Lorg/spongycastle/asn1/d;

    invoke-interface {v0}, Lorg/spongycastle/asn1/d;->c()Lorg/spongycastle/asn1/q;

    move-result-object v0

    .line 92
    instance-of v1, v0, Lorg/spongycastle/asn1/r;

    if-eqz v1, :cond_4

    .line 94
    check-cast v0, Lorg/spongycastle/asn1/r;

    goto :goto_0

    .line 98
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown object in getInstance: "

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
.method public a(I)Lorg/spongycastle/asn1/d;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lorg/spongycastle/asn1/r;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/d;

    return-object v0
.end method

.method abstract a(Lorg/spongycastle/asn1/o;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method a()Z
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x1

    return v0
.end method

.method a(Lorg/spongycastle/asn1/q;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 303
    instance-of v1, p1, Lorg/spongycastle/asn1/r;

    if-nez v1, :cond_1

    .line 334
    :cond_0
    :goto_0
    return v0

    .line 308
    :cond_1
    check-cast p1, Lorg/spongycastle/asn1/r;

    .line 310
    invoke-virtual {p0}, Lorg/spongycastle/asn1/r;->g()I

    move-result v1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/r;->g()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 315
    invoke-virtual {p0}, Lorg/spongycastle/asn1/r;->e()Ljava/util/Enumeration;

    move-result-object v1

    .line 316
    invoke-virtual {p1}, Lorg/spongycastle/asn1/r;->e()Ljava/util/Enumeration;

    move-result-object v2

    .line 318
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 320
    invoke-direct {p0, v1}, Lorg/spongycastle/asn1/r;->a(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/d;

    move-result-object v3

    .line 321
    invoke-direct {p0, v2}, Lorg/spongycastle/asn1/r;->a(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/d;

    move-result-object v4

    .line 323
    invoke-interface {v3}, Lorg/spongycastle/asn1/d;->c()Lorg/spongycastle/asn1/q;

    move-result-object v3

    .line 324
    invoke-interface {v4}, Lorg/spongycastle/asn1/d;->c()Lorg/spongycastle/asn1/q;

    move-result-object v4

    .line 326
    if-eq v3, v4, :cond_2

    invoke-virtual {v3, v4}, Lorg/spongycastle/asn1/q;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 334
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public d()[Lorg/spongycastle/asn1/d;
    .locals 3

    .prologue
    .line 205
    invoke-virtual {p0}, Lorg/spongycastle/asn1/r;->g()I

    move-result v0

    new-array v1, v0, [Lorg/spongycastle/asn1/d;

    .line 207
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/r;->g()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 209
    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/r;->a(I)Lorg/spongycastle/asn1/d;

    move-result-object v2

    aput-object v2, v1, v0

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    return-object v1
.end method

.method public e()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lorg/spongycastle/asn1/r;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lorg/spongycastle/asn1/r;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method h()Lorg/spongycastle/asn1/q;
    .locals 2

    .prologue
    .line 350
    new-instance v0, Lorg/spongycastle/asn1/ba;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ba;-><init>()V

    .line 352
    iget-object v1, p0, Lorg/spongycastle/asn1/r;->a:Ljava/util/Vector;

    iput-object v1, v0, Lorg/spongycastle/asn1/r;->a:Ljava/util/Vector;

    .line 354
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 286
    invoke-virtual {p0}, Lorg/spongycastle/asn1/r;->e()Ljava/util/Enumeration;

    move-result-object v1

    .line 287
    invoke-virtual {p0}, Lorg/spongycastle/asn1/r;->g()I

    move-result v0

    .line 289
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    invoke-direct {p0, v1}, Lorg/spongycastle/asn1/r;->a(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/d;

    move-result-object v2

    .line 292
    mul-int/lit8 v0, v0, 0x11

    .line 294
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 295
    goto :goto_0

    .line 297
    :cond_0
    return v0
.end method

.method i()Lorg/spongycastle/asn1/q;
    .locals 2

    .prologue
    .line 363
    new-instance v0, Lorg/spongycastle/asn1/bk;

    invoke-direct {v0}, Lorg/spongycastle/asn1/bk;-><init>()V

    .line 365
    iget-object v1, p0, Lorg/spongycastle/asn1/r;->a:Ljava/util/Vector;

    iput-object v1, v0, Lorg/spongycastle/asn1/r;->a:Ljava/util/Vector;

    .line 367
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lorg/spongycastle/asn1/r;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
