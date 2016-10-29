.class public Lorg/spongycastle/util/encoders/DecoderException;
.super Ljava/lang/IllegalStateException;
.source "Twttr"


# instance fields
.field private cause:Ljava/lang/Throwable;


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lorg/spongycastle/util/encoders/DecoderException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
