.class public Lorg/spongycastle/asn1/af;
.super Lorg/spongycastle/asn1/r;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/spongycastle/asn1/r;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/e;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/r;-><init>(Lorg/spongycastle/asn1/e;)V

    .line 32
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

    .line 61
    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/o;->b(I)V

    .line 62
    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/o;->b(I)V

    .line 64
    invoke-virtual {p0}, Lorg/spongycastle/asn1/af;->e()Ljava/util/Enumeration;

    move-result-object v1

    .line 65
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/d;

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/o;->a(Lorg/spongycastle/asn1/d;)V

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/o;->b(I)V

    .line 71
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/o;->b(I)V

    .line 72
    return-void
.end method

.method b()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0}, Lorg/spongycastle/asn1/af;->e()Ljava/util/Enumeration;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
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

    .line 52
    :cond_0
    add-int/lit8 v0, v1, 0x2

    add-int/lit8 v0, v0, 0x2

    return v0
.end method
