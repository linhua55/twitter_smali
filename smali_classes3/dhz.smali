.class public Ldhz;
.super Lorg/spongycastle/asn1/k;
.source "Twttr"


# instance fields
.field private a:Lorg/spongycastle/asn1/m;

.field private b:Ldid;

.field private c:Lorg/spongycastle/asn1/t;


# direct methods
.method public constructor <init>(Ldid;Lorg/spongycastle/asn1/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ldhz;-><init>(Ldid;Lorg/spongycastle/asn1/d;Lorg/spongycastle/asn1/t;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ldid;Lorg/spongycastle/asn1/d;Lorg/spongycastle/asn1/t;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/spongycastle/asn1/k;-><init>()V

    .line 65
    new-instance v0, Lorg/spongycastle/asn1/aw;

    invoke-interface {p2}, Lorg/spongycastle/asn1/d;->c()Lorg/spongycastle/asn1/q;

    move-result-object v1

    const-string/jumbo v2, "DER"

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/q;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/aw;-><init>([B)V

    iput-object v0, p0, Ldhz;->a:Lorg/spongycastle/asn1/m;

    .line 66
    iput-object p1, p0, Ldhz;->b:Ldid;

    .line 67
    iput-object p3, p0, Ldhz;->c:Lorg/spongycastle/asn1/t;

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/r;)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/spongycastle/asn1/k;-><init>()V

    .line 77
    invoke-virtual {p1}, Lorg/spongycastle/asn1/r;->e()Ljava/util/Enumeration;

    move-result-object v1

    .line 79
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/i;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/i;->d()Ljava/math/BigInteger;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "wrong version for private key info"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ldid;->a(Ljava/lang/Object;)Ldid;

    move-result-object v0

    iput-object v0, p0, Ldhz;->b:Ldid;

    .line 86
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/m;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/m;

    move-result-object v0

    iput-object v0, p0, Ldhz;->a:Lorg/spongycastle/asn1/m;

    .line 88
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/w;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/asn1/t;->a(Lorg/spongycastle/asn1/w;Z)Lorg/spongycastle/asn1/t;

    move-result-object v0

    iput-object v0, p0, Ldhz;->c:Lorg/spongycastle/asn1/t;

    .line 92
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/Object;)Ldhz;
    .locals 2

    .prologue
    .line 39
    instance-of v0, p0, Ldhz;

    if-eqz v0, :cond_0

    .line 41
    check-cast p0, Ldhz;

    .line 48
    :goto_0
    return-object p0

    .line 43
    :cond_0
    if-eqz p0, :cond_1

    .line 45
    new-instance v0, Ldhz;

    invoke-static {p0}, Lorg/spongycastle/asn1/r;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/r;

    move-result-object v1

    invoke-direct {v0, v1}, Ldhz;-><init>(Lorg/spongycastle/asn1/r;)V

    move-object p0, v0

    goto :goto_0

    .line 48
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ldid;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Ldhz;->b:Ldid;

    return-object v0
.end method

.method public b()Lorg/spongycastle/asn1/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Ldhz;->a:Lorg/spongycastle/asn1/m;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/m;->e()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/q;->b([B)Lorg/spongycastle/asn1/q;

    move-result-object v0

    return-object v0
.end method

.method public c()Lorg/spongycastle/asn1/q;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 151
    new-instance v0, Lorg/spongycastle/asn1/e;

    invoke-direct {v0}, Lorg/spongycastle/asn1/e;-><init>()V

    .line 153
    new-instance v1, Lorg/spongycastle/asn1/i;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/i;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/e;->a(Lorg/spongycastle/asn1/d;)V

    .line 154
    iget-object v1, p0, Ldhz;->b:Ldid;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/e;->a(Lorg/spongycastle/asn1/d;)V

    .line 155
    iget-object v1, p0, Ldhz;->a:Lorg/spongycastle/asn1/m;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/e;->a(Lorg/spongycastle/asn1/d;)V

    .line 157
    iget-object v1, p0, Ldhz;->c:Lorg/spongycastle/asn1/t;

    if-eqz v1, :cond_0

    .line 159
    new-instance v1, Lorg/spongycastle/asn1/bf;

    iget-object v2, p0, Ldhz;->c:Lorg/spongycastle/asn1/t;

    invoke-direct {v1, v4, v4, v2}, Lorg/spongycastle/asn1/bf;-><init>(ZILorg/spongycastle/asn1/d;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/e;->a(Lorg/spongycastle/asn1/d;)V

    .line 162
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/ba;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/ba;-><init>(Lorg/spongycastle/asn1/e;)V

    return-object v1
.end method
