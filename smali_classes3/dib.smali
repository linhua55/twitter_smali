.class public Ldib;
.super Lorg/spongycastle/asn1/k;
.source "Twttr"


# instance fields
.field private a:Ljava/math/BigInteger;

.field private b:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/spongycastle/asn1/k;-><init>()V

    .line 47
    iput-object p1, p0, Ldib;->a:Ljava/math/BigInteger;

    .line 48
    iput-object p2, p0, Ldib;->b:Ljava/math/BigInteger;

    .line 49
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/r;)V
    .locals 3

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/spongycastle/asn1/k;-><init>()V

    .line 54
    invoke-virtual {p1}, Lorg/spongycastle/asn1/r;->g()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/r;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/r;->e()Ljava/util/Enumeration;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/i;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/i;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/i;->e()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Ldib;->a:Ljava/math/BigInteger;

    .line 63
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/i;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/i;->e()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Ldib;->b:Ljava/math/BigInteger;

    .line 64
    return-void
.end method

.method public static a(Ljava/lang/Object;)Ldib;
    .locals 2

    .prologue
    .line 30
    instance-of v0, p0, Ldib;

    if-eqz v0, :cond_0

    .line 32
    check-cast p0, Ldib;

    .line 40
    :goto_0
    return-object p0

    .line 35
    :cond_0
    if-eqz p0, :cond_1

    .line 37
    new-instance v0, Ldib;

    invoke-static {p0}, Lorg/spongycastle/asn1/r;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/r;

    move-result-object v1

    invoke-direct {v0, v1}, Ldib;-><init>(Lorg/spongycastle/asn1/r;)V

    move-object p0, v0

    goto :goto_0

    .line 40
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Ldib;->a:Ljava/math/BigInteger;

    return-object v0
.end method

.method public b()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Ldib;->b:Ljava/math/BigInteger;

    return-object v0
.end method

.method public c()Lorg/spongycastle/asn1/q;
    .locals 3

    .prologue
    .line 88
    new-instance v0, Lorg/spongycastle/asn1/e;

    invoke-direct {v0}, Lorg/spongycastle/asn1/e;-><init>()V

    .line 90
    new-instance v1, Lorg/spongycastle/asn1/i;

    invoke-virtual {p0}, Ldib;->a()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/i;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/e;->a(Lorg/spongycastle/asn1/d;)V

    .line 91
    new-instance v1, Lorg/spongycastle/asn1/i;

    invoke-virtual {p0}, Ldib;->b()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/i;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/e;->a(Lorg/spongycastle/asn1/d;)V

    .line 93
    new-instance v1, Lorg/spongycastle/asn1/ba;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/ba;-><init>(Lorg/spongycastle/asn1/e;)V

    return-object v1
.end method
