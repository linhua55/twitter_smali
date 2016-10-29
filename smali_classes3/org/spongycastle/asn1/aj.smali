.class public Lorg/spongycastle/asn1/aj;
.super Lorg/spongycastle/asn1/w;
.source "Twttr"


# direct methods
.method public constructor <init>(ZILorg/spongycastle/asn1/d;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/asn1/w;-><init>(ZILorg/spongycastle/asn1/d;)V

    .line 36
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
    const/4 v2, 0x0

    .line 99
    const/16 v0, 0xa0

    iget v1, p0, Lorg/spongycastle/asn1/aj;->a:I

    invoke-virtual {p1, v0, v1}, Lorg/spongycastle/asn1/o;->a(II)V

    .line 100
    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/o;->b(I)V

    .line 102
    iget-boolean v0, p0, Lorg/spongycastle/asn1/aj;->b:Z

    if-nez v0, :cond_5

    .line 104
    iget-boolean v0, p0, Lorg/spongycastle/asn1/aj;->c:Z

    if-nez v0, :cond_4

    .line 107
    iget-object v0, p0, Lorg/spongycastle/asn1/aj;->d:Lorg/spongycastle/asn1/d;

    instance-of v0, v0, Lorg/spongycastle/asn1/m;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lorg/spongycastle/asn1/aj;->d:Lorg/spongycastle/asn1/d;

    instance-of v0, v0, Lorg/spongycastle/asn1/ac;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/spongycastle/asn1/aj;->d:Lorg/spongycastle/asn1/d;

    check-cast v0, Lorg/spongycastle/asn1/ac;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ac;->j()Ljava/util/Enumeration;

    move-result-object v0

    move-object v1, v0

    .line 133
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 135
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/d;

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/o;->a(Lorg/spongycastle/asn1/d;)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/aj;->d:Lorg/spongycastle/asn1/d;

    check-cast v0, Lorg/spongycastle/asn1/m;

    .line 116
    new-instance v1, Lorg/spongycastle/asn1/ac;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/m;->e()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/ac;-><init>([B)V

    .line 117
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ac;->j()Ljava/util/Enumeration;

    move-result-object v0

    move-object v1, v0

    .line 118
    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/aj;->d:Lorg/spongycastle/asn1/d;

    instance-of v0, v0, Lorg/spongycastle/asn1/r;

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lorg/spongycastle/asn1/aj;->d:Lorg/spongycastle/asn1/d;

    check-cast v0, Lorg/spongycastle/asn1/r;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/r;->e()Ljava/util/Enumeration;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 124
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/asn1/aj;->d:Lorg/spongycastle/asn1/d;

    instance-of v0, v0, Lorg/spongycastle/asn1/t;

    if-eqz v0, :cond_3

    .line 126
    iget-object v0, p0, Lorg/spongycastle/asn1/aj;->d:Lorg/spongycastle/asn1/d;

    check-cast v0, Lorg/spongycastle/asn1/t;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/t;->d()Ljava/util/Enumeration;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 130
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not implemented: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/asn1/aj;->d:Lorg/spongycastle/asn1/d;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/asn1/aj;->d:Lorg/spongycastle/asn1/d;

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/o;->a(Lorg/spongycastle/asn1/d;)V

    .line 144
    :cond_5
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/o;->b(I)V

    .line 145
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/o;->b(I)V

    .line 146
    return-void
.end method

.method a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 50
    iget-boolean v1, p0, Lorg/spongycastle/asn1/aj;->b:Z

    if-nez v1, :cond_0

    .line 52
    iget-boolean v1, p0, Lorg/spongycastle/asn1/aj;->c:Z

    if-eqz v1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 58
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/aj;->d:Lorg/spongycastle/asn1/d;

    invoke-interface {v0}, Lorg/spongycastle/asn1/d;->c()Lorg/spongycastle/asn1/q;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/q;->h()Lorg/spongycastle/asn1/q;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lorg/spongycastle/asn1/q;->a()Z

    move-result v0

    goto :goto_0
.end method

.method b()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-boolean v0, p0, Lorg/spongycastle/asn1/aj;->b:Z

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lorg/spongycastle/asn1/aj;->d:Lorg/spongycastle/asn1/d;

    invoke-interface {v0}, Lorg/spongycastle/asn1/d;->c()Lorg/spongycastle/asn1/q;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lorg/spongycastle/asn1/q;->b()I

    move-result v0

    .line 77
    iget-boolean v1, p0, Lorg/spongycastle/asn1/aj;->c:Z

    if-eqz v1, :cond_0

    .line 79
    iget v1, p0, Lorg/spongycastle/asn1/aj;->a:I

    invoke-static {v1}, Lorg/spongycastle/asn1/bu;->b(I)I

    move-result v1

    invoke-static {v0}, Lorg/spongycastle/asn1/bu;->a(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 91
    :goto_0
    return v0

    .line 84
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 86
    iget v1, p0, Lorg/spongycastle/asn1/aj;->a:I

    invoke-static {v1}, Lorg/spongycastle/asn1/bu;->b(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 91
    :cond_1
    iget v0, p0, Lorg/spongycastle/asn1/aj;->a:I

    invoke-static {v0}, Lorg/spongycastle/asn1/bu;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
