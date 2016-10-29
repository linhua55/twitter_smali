.class public Lorg/spongycastle/asn1/bl;
.super Lorg/spongycastle/asn1/t;
.source "Twttr"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/spongycastle/asn1/t;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/asn1/bl;->a:I

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/d;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/t;-><init>(Lorg/spongycastle/asn1/d;)V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/asn1/bl;->a:I

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/e;)V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/t;-><init>(Lorg/spongycastle/asn1/e;Z)V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/asn1/bl;->a:I

    .line 82
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/d;)V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/t;-><init>([Lorg/spongycastle/asn1/d;Z)V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/asn1/bl;->a:I

    .line 91
    return-void
.end method

.method private j()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget v0, p0, Lorg/spongycastle/asn1/bl;->a:I

    if-gez v0, :cond_1

    .line 98
    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0}, Lorg/spongycastle/asn1/bl;->d()Ljava/util/Enumeration;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    .line 104
    check-cast v0, Lorg/spongycastle/asn1/d;

    invoke-interface {v0}, Lorg/spongycastle/asn1/d;->c()Lorg/spongycastle/asn1/q;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/q;->i()Lorg/spongycastle/asn1/q;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/q;->b()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 105
    goto :goto_0

    .line 107
    :cond_0
    iput v1, p0, Lorg/spongycastle/asn1/bl;->a:I

    .line 110
    :cond_1
    iget v0, p0, Lorg/spongycastle/asn1/bl;->a:I

    return v0
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
    .line 133
    invoke-virtual {p1}, Lorg/spongycastle/asn1/o;->b()Lorg/spongycastle/asn1/o;

    move-result-object v1

    .line 134
    invoke-direct {p0}, Lorg/spongycastle/asn1/bl;->j()I

    move-result v0

    .line 136
    const/16 v2, 0x31

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/o;->b(I)V

    .line 137
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/o;->a(I)V

    .line 139
    invoke-virtual {p0}, Lorg/spongycastle/asn1/bl;->d()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    .line 143
    check-cast v0, Lorg/spongycastle/asn1/d;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/o;->a(Lorg/spongycastle/asn1/d;)V

    goto :goto_0

    .line 145
    :cond_0
    return-void
.end method

.method b()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0}, Lorg/spongycastle/asn1/bl;->j()I

    move-result v0

    .line 118
    invoke-static {v0}, Lorg/spongycastle/asn1/bu;->a(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method
