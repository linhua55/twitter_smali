.class public Lorg/spongycastle/crypto/io/CipherIOException;
.super Ljava/io/IOException;
.source "Twttr"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final cause:Ljava/lang/Throwable;


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lorg/spongycastle/crypto/io/CipherIOException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
