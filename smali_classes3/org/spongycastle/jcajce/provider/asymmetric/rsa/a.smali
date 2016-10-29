.class public Lorg/spongycastle/jcajce/provider/asymmetric/rsa/a;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:[Lorg/spongycastle/asn1/l;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/spongycastle/asn1/l;

    const/4 v1, 0x0

    sget-object v2, Ldhy;->b:Lorg/spongycastle/asn1/l;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ldig;->l:Lorg/spongycastle/asn1/l;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ldhy;->h:Lorg/spongycastle/asn1/l;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ldhy;->k:Lorg/spongycastle/asn1/l;

    aput-object v2, v0, v1

    sput-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/a;->a:[Lorg/spongycastle/asn1/l;

    return-void
.end method

.method static a(Ljava/security/interfaces/RSAPrivateKey;)Ldip;
    .locals 9

    .prologue
    .line 51
    instance-of v0, p0, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v0, :cond_0

    .line 53
    check-cast p0, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 55
    new-instance v0, Ldiq;

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Ldiq;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 63
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ldip;

    const/4 v1, 0x1

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ldip;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0
.end method

.method static a(Ljava/security/interfaces/RSAPublicKey;)Ldip;
    .locals 4

    .prologue
    .line 44
    new-instance v0, Ldip;

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ldip;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public static a(Lorg/spongycastle/asn1/l;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 30
    move v0, v1

    :goto_0
    sget-object v2, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/a;->a:[Lorg/spongycastle/asn1/l;

    array-length v2, v2

    if-eq v0, v2, :cond_0

    .line 32
    sget-object v2, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/a;->a:[Lorg/spongycastle/asn1/l;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lorg/spongycastle/asn1/l;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    const/4 v1, 0x1

    .line 38
    :cond_0
    return v1

    .line 30
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
