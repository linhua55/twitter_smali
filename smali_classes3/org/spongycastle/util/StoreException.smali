.class public Lorg/spongycastle/util/StoreException;
.super Ljava/lang/RuntimeException;
.source "Twttr"


# instance fields
.field private _e:Ljava/lang/Throwable;


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lorg/spongycastle/util/StoreException;->_e:Ljava/lang/Throwable;

    return-object v0
.end method
