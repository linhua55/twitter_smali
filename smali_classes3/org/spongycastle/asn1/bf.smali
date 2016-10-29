.class public Lorg/spongycastle/asn1/bf;
.super Lorg/spongycastle/asn1/w;
.source "Twttr"


# static fields
.field private static final e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/spongycastle/asn1/bf;->e:[B

    return-void
.end method

.method public constructor <init>(ZILorg/spongycastle/asn1/d;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/asn1/w;-><init>(ZILorg/spongycastle/asn1/d;)V

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
    const/16 v0, 0xa0

    .line 84
    iget-boolean v1, p0, Lorg/spongycastle/asn1/bf;->b:Z

    if-nez v1, :cond_2

    .line 86
    iget-object v1, p0, Lorg/spongycastle/asn1/bf;->d:Lorg/spongycastle/asn1/d;

    invoke-interface {v1}, Lorg/spongycastle/asn1/d;->c()Lorg/spongycastle/asn1/q;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/q;->h()Lorg/spongycastle/asn1/q;

    move-result-object v1

    .line 88
    iget-boolean v2, p0, Lorg/spongycastle/asn1/bf;->c:Z

    if-eqz v2, :cond_0

    .line 90
    iget v2, p0, Lorg/spongycastle/asn1/bf;->a:I

    invoke-virtual {p1, v0, v2}, Lorg/spongycastle/asn1/o;->a(II)V

    .line 91
    invoke-virtual {v1}, Lorg/spongycastle/asn1/q;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/o;->a(I)V

    .line 92
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/o;->a(Lorg/spongycastle/asn1/d;)V

    .line 117
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {v1}, Lorg/spongycastle/asn1/q;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    :goto_1
    iget v2, p0, Lorg/spongycastle/asn1/bf;->a:I

    invoke-virtual {p1, v0, v2}, Lorg/spongycastle/asn1/o;->a(II)V

    .line 110
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/o;->a(Lorg/spongycastle/asn1/q;)V

    goto :goto_0

    .line 106
    :cond_1
    const/16 v0, 0x80

    goto :goto_1

    .line 115
    :cond_2
    iget v1, p0, Lorg/spongycastle/asn1/bf;->a:I

    sget-object v2, Lorg/spongycastle/asn1/bf;->e:[B

    invoke-virtual {p1, v0, v1, v2}, Lorg/spongycastle/asn1/o;->a(II[B)V

    goto :goto_0
.end method

.method a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 35
    iget-boolean v1, p0, Lorg/spongycastle/asn1/bf;->b:Z

    if-nez v1, :cond_0

    .line 37
    iget-boolean v1, p0, Lorg/spongycastle/asn1/bf;->c:Z

    if-eqz v1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/bf;->d:Lorg/spongycastle/asn1/d;

    invoke-interface {v0}, Lorg/spongycastle/asn1/d;->c()Lorg/spongycastle/asn1/q;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/q;->h()Lorg/spongycastle/asn1/q;

    move-result-object v0

    .line 45
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
    .line 57
    iget-boolean v0, p0, Lorg/spongycastle/asn1/bf;->b:Z

    if-nez v0, :cond_1

    .line 59
    iget-object v0, p0, Lorg/spongycastle/asn1/bf;->d:Lorg/spongycastle/asn1/d;

    invoke-interface {v0}, Lorg/spongycastle/asn1/d;->c()Lorg/spongycastle/asn1/q;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/q;->h()Lorg/spongycastle/asn1/q;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lorg/spongycastle/asn1/q;->b()I

    move-result v0

    .line 62
    iget-boolean v1, p0, Lorg/spongycastle/asn1/bf;->c:Z

    if-eqz v1, :cond_0

    .line 64
    iget v1, p0, Lorg/spongycastle/asn1/bf;->a:I

    invoke-static {v1}, Lorg/spongycastle/asn1/bu;->b(I)I

    move-result v1

    invoke-static {v0}, Lorg/spongycastle/asn1/bu;->a(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 76
    :goto_0
    return v0

    .line 69
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 71
    iget v1, p0, Lorg/spongycastle/asn1/bf;->a:I

    invoke-static {v1}, Lorg/spongycastle/asn1/bu;->b(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 76
    :cond_1
    iget v0, p0, Lorg/spongycastle/asn1/bf;->a:I

    invoke-static {v0}, Lorg/spongycastle/asn1/bu;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
