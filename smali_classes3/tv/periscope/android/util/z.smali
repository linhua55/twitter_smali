.class final Ltv/periscope/android/util/z;
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
        "Ltv/periscope/android/util/Size;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Ltv/periscope/android/util/Size;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ltv/periscope/android/util/Size;

    invoke-direct {v0, p1}, Ltv/periscope/android/util/Size;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Ltv/periscope/android/util/Size;
    .locals 1

    .prologue
    .line 28
    new-array v0, p1, [Ltv/periscope/android/util/Size;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Ltv/periscope/android/util/z;->a(Landroid/os/Parcel;)Ltv/periscope/android/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Ltv/periscope/android/util/z;->a(I)[Ltv/periscope/android/util/Size;

    move-result-object v0

    return-object v0
.end method
