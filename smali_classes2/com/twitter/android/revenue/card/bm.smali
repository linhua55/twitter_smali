.class final Lcom/twitter/android/revenue/card/bm;
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
        "Lcom/twitter/android/revenue/card/UnlockableVideoToVideo$LockedAVDataSource;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/twitter/android/revenue/card/UnlockableVideoToVideo$LockedAVDataSource;
    .locals 1

    .prologue
    .line 231
    new-instance v0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo$LockedAVDataSource;

    invoke-direct {v0, p1}, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo$LockedAVDataSource;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/twitter/android/revenue/card/UnlockableVideoToVideo$LockedAVDataSource;
    .locals 1

    .prologue
    .line 237
    new-array v0, p1, [Lcom/twitter/android/revenue/card/UnlockableVideoToVideo$LockedAVDataSource;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lcom/twitter/android/revenue/card/bm;->a(Landroid/os/Parcel;)Lcom/twitter/android/revenue/card/UnlockableVideoToVideo$LockedAVDataSource;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lcom/twitter/android/revenue/card/bm;->a(I)[Lcom/twitter/android/revenue/card/UnlockableVideoToVideo$LockedAVDataSource;

    move-result-object v0

    return-object v0
.end method
