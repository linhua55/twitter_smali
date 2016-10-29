.class public Ldin;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lorg/spongycastle/crypto/c;


# instance fields
.field private a:Ljava/security/SecureRandom;

.field private b:Lorg/spongycastle/crypto/c;


# virtual methods
.method public a()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Ldin;->a:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public b()Lorg/spongycastle/crypto/c;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Ldin;->b:Lorg/spongycastle/crypto/c;

    return-object v0
.end method
