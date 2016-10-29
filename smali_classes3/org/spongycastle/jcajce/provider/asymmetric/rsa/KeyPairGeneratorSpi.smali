.class public Lorg/spongycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;
.source "Twttr"


# static fields
.field static final a:Ljava/math/BigInteger;


# instance fields
.field b:Ldio;

.field c:Ldil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-wide/32 v0, 0x10001

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->a:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 33
    const-string/jumbo v0, "RSA"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v0, Ldil;

    invoke-direct {v0}, Ldil;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->c:Ldil;

    .line 36
    new-instance v0, Ldio;

    sget-object v1, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->a:Ljava/math/BigInteger;

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    const/16 v3, 0x800

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Ldio;-><init>(Ljava/math/BigInteger;Ljava/security/SecureRandom;II)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->b:Ldio;

    .line 38
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->c:Ldil;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->b:Ldio;

    invoke-virtual {v0, v1}, Ldil;->a(Lorg/spongycastle/crypto/f;)V

    .line 39
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->c:Ldil;

    invoke-virtual {v0}, Ldil;->a()Lorg/spongycastle/crypto/b;

    move-result-object v1

    .line 72
    invoke-virtual {v1}, Lorg/spongycastle/crypto/b;->a()Ldim;

    move-result-object v0

    check-cast v0, Ldip;

    .line 73
    invoke-virtual {v1}, Lorg/spongycastle/crypto/b;->b()Ldim;

    move-result-object v1

    check-cast v1, Ldiq;

    .line 75
    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;

    invoke-direct {v3, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;-><init>(Ldip;)V

    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;-><init>(Ldiq;)V

    invoke-direct {v2, v3, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Ldio;

    sget-object v1, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->a:Ljava/math/BigInteger;

    const/16 v2, 0xc

    invoke-direct {v0, v1, p2, p1, v2}, Ldio;-><init>(Ljava/math/BigInteger;Ljava/security/SecureRandom;II)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->b:Ldio;

    .line 48
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->c:Ldil;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->b:Ldio;

    invoke-virtual {v0, v1}, Ldil;->a(Lorg/spongycastle/crypto/f;)V

    .line 49
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 56
    instance-of v0, p1, Ljava/security/spec/RSAKeyGenParameterSpec;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "parameter object not a RSAKeyGenParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    check-cast p1, Ljava/security/spec/RSAKeyGenParameterSpec;

    .line 62
    new-instance v0, Ldio;

    invoke-virtual {p1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v2

    const/16 v3, 0xc

    invoke-direct {v0, v1, p2, v2, v3}, Ldio;-><init>(Ljava/math/BigInteger;Ljava/security/SecureRandom;II)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->b:Ldio;

    .line 66
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->c:Ldil;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->b:Ldio;

    invoke-virtual {v0, v1}, Ldil;->a(Lorg/spongycastle/crypto/f;)V

    .line 67
    return-void
.end method
