.class public Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$SHA1;
.super Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 264
    sget-object v0, Ldhx;->i:Lorg/spongycastle/asn1/l;

    new-instance v1, Ldii;

    invoke-direct {v1}, Ldii;-><init>()V

    new-instance v2, Ldij;

    new-instance v3, Lorg/spongycastle/crypto/engines/a;

    invoke-direct {v3}, Lorg/spongycastle/crypto/engines/a;-><init>()V

    invoke-direct {v2, v3}, Ldij;-><init>(Lorg/spongycastle/crypto/a;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;-><init>(Lorg/spongycastle/asn1/l;Lorg/spongycastle/crypto/d;Lorg/spongycastle/crypto/a;)V

    .line 265
    return-void
.end method
