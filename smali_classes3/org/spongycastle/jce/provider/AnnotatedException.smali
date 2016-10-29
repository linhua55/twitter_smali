.class public Lorg/spongycastle/jce/provider/AnnotatedException;
.super Ljava/lang/Exception;
.source "Twttr"


# instance fields
.field private _underlyingException:Ljava/lang/Throwable;


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/spongycastle/jce/provider/AnnotatedException;->_underlyingException:Ljava/lang/Throwable;

    return-object v0
.end method
