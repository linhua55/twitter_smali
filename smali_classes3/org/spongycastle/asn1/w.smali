.class public abstract Lorg/spongycastle/asn1/w;
.super Lorg/spongycastle/asn1/q;
.source "Twttr"

# interfaces
.implements Lorg/spongycastle/asn1/x;


# instance fields
.field a:I

.field b:Z

.field c:Z

.field d:Lorg/spongycastle/asn1/d;


# direct methods
.method public constructor <init>(ZILorg/spongycastle/asn1/d;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 67
    invoke-direct {p0}, Lorg/spongycastle/asn1/q;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/asn1/w;->b:Z

    .line 16
    iput-boolean v1, p0, Lorg/spongycastle/asn1/w;->c:Z

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/w;->d:Lorg/spongycastle/asn1/d;

    .line 68
    instance-of v0, p3, Lorg/spongycastle/asn1/c;

    if-eqz v0, :cond_0

    .line 70
    iput-boolean v1, p0, Lorg/spongycastle/asn1/w;->c:Z

    .line 77
    :goto_0
    iput p2, p0, Lorg/spongycastle/asn1/w;->a:I

    .line 79
    iget-boolean v0, p0, Lorg/spongycastle/asn1/w;->c:Z

    if-eqz v0, :cond_1

    .line 81
    iput-object p3, p0, Lorg/spongycastle/asn1/w;->d:Lorg/spongycastle/asn1/d;

    .line 94
    :goto_1
    return-void

    .line 74
    :cond_0
    iput-boolean p1, p0, Lorg/spongycastle/asn1/w;->c:Z

    goto :goto_0

    .line 85
    :cond_1
    invoke-interface {p3}, Lorg/spongycastle/asn1/d;->c()Lorg/spongycastle/asn1/q;

    move-result-object v0

    .line 87
    instance-of v0, v0, Lorg/spongycastle/asn1/t;

    if-eqz v0, :cond_2

    .line 92
    :cond_2
    iput-object p3, p0, Lorg/spongycastle/asn1/w;->d:Lorg/spongycastle/asn1/d;

    goto :goto_1
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
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 99
    instance-of v1, p1, Lorg/spongycastle/asn1/w;

    if-nez v1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    check-cast p1, Lorg/spongycastle/asn1/w;

    .line 106
    iget v1, p0, Lorg/spongycastle/asn1/w;->a:I

    iget v2, p1, Lorg/spongycastle/asn1/w;->a:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lorg/spongycastle/asn1/w;->b:Z

    iget-boolean v2, p1, Lorg/spongycastle/asn1/w;->b:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lorg/spongycastle/asn1/w;->c:Z

    iget-boolean v2, p1, Lorg/spongycastle/asn1/w;->c:Z

    if-ne v1, v2, :cond_0

    .line 111
    iget-object v1, p0, Lorg/spongycastle/asn1/w;->d:Lorg/spongycastle/asn1/d;

    if-nez v1, :cond_3

    .line 113
    iget-object v1, p1, Lorg/spongycastle/asn1/w;->d:Lorg/spongycastle/asn1/d;

    if-nez v1, :cond_0

    .line 126
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 120
    :cond_3
    iget-object v1, p0, Lorg/spongycastle/asn1/w;->d:Lorg/spongycastle/asn1/d;

    invoke-interface {v1}, Lorg/spongycastle/asn1/d;->c()Lorg/spongycastle/asn1/q;

    move-result-object v1

    iget-object v2, p1, Lorg/spongycastle/asn1/w;->d:Lorg/spongycastle/asn1/d;

    invoke-interface {v2}, Lorg/spongycastle/asn1/d;->c()Lorg/spongycastle/asn1/q;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/q;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lorg/spongycastle/asn1/w;->a:I

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lorg/spongycastle/asn1/w;->c:Z

    return v0
.end method

.method public g()Lorg/spongycastle/asn1/q;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lorg/spongycastle/asn1/w;->c()Lorg/spongycastle/asn1/q;

    move-result-object v0

    return-object v0
.end method

.method h()Lorg/spongycastle/asn1/q;
    .locals 4

    .prologue
    .line 221
    new-instance v0, Lorg/spongycastle/asn1/bf;

    iget-boolean v1, p0, Lorg/spongycastle/asn1/w;->c:Z

    iget v2, p0, Lorg/spongycastle/asn1/w;->a:I

    iget-object v3, p0, Lorg/spongycastle/asn1/w;->d:Lorg/spongycastle/asn1/d;

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/asn1/bf;-><init>(ZILorg/spongycastle/asn1/d;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 131
    iget v0, p0, Lorg/spongycastle/asn1/w;->a:I

    .line 138
    iget-object v1, p0, Lorg/spongycastle/asn1/w;->d:Lorg/spongycastle/asn1/d;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lorg/spongycastle/asn1/w;->d:Lorg/spongycastle/asn1/d;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 143
    :cond_0
    return v0
.end method

.method i()Lorg/spongycastle/asn1/q;
    .locals 4

    .prologue
    .line 226
    new-instance v0, Lorg/spongycastle/asn1/bm;

    iget-boolean v1, p0, Lorg/spongycastle/asn1/w;->c:Z

    iget v2, p0, Lorg/spongycastle/asn1/w;->a:I

    iget-object v3, p0, Lorg/spongycastle/asn1/w;->d:Lorg/spongycastle/asn1/d;

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/asn1/bm;-><init>(ZILorg/spongycastle/asn1/d;)V

    return-object v0
.end method

.method public j()Lorg/spongycastle/asn1/q;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/spongycastle/asn1/w;->d:Lorg/spongycastle/asn1/d;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lorg/spongycastle/asn1/w;->d:Lorg/spongycastle/asn1/d;

    invoke-interface {v0}, Lorg/spongycastle/asn1/d;->c()Lorg/spongycastle/asn1/q;

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/asn1/w;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/asn1/w;->d:Lorg/spongycastle/asn1/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
