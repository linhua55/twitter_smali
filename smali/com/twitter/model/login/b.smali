.class final Lcom/twitter/model/login/b;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/twitter/model/login/OneFactorEligibleFactor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/twitter/model/login/OneFactorEligibleFactor;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/twitter/model/login/OneFactorEligibleFactor;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/twitter/model/login/OneFactorEligibleFactor;-><init>(Landroid/os/Parcel;Lcom/twitter/model/login/b;)V

    return-object v0
.end method

.method public a(I)[Lcom/twitter/model/login/OneFactorEligibleFactor;
    .locals 1

    .prologue
    .line 32
    new-array v0, p1, [Lcom/twitter/model/login/OneFactorEligibleFactor;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/twitter/model/login/b;->a(Landroid/os/Parcel;)Lcom/twitter/model/login/OneFactorEligibleFactor;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/twitter/model/login/b;->a(I)[Lcom/twitter/model/login/OneFactorEligibleFactor;

    move-result-object v0

    return-object v0
.end method
