.class public Lcow;
.super Lcom/bluelinelabs/logansquare/typeconverters/BooleanBasedTypeConverter;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bluelinelabs/logansquare/typeconverters/BooleanBasedTypeConverter",
        "<",
        "Lcov;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/bluelinelabs/logansquare/typeconverters/BooleanBasedTypeConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)Lcov;
    .locals 1

    .prologue
    .line 14
    invoke-static {p1}, Lcov;->a(Z)Lcov;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcov;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p1, Lcov;->a:Z

    return v0
.end method

.method public synthetic convertToBoolean(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 9
    check-cast p1, Lcov;

    invoke-virtual {p0, p1}, Lcow;->a(Lcov;)Z

    move-result v0

    return v0
.end method

.method public synthetic getFromBoolean(Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcow;->a(Z)Lcov;

    move-result-object v0

    return-object v0
.end method
