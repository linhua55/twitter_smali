.class final Lcom/twitter/model/av/w;
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
        "Lcom/twitter/model/av/VideoCta;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/twitter/model/av/VideoCta;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/twitter/model/av/VideoCta;

    invoke-direct {v0, p1}, Lcom/twitter/model/av/VideoCta;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/twitter/model/av/VideoCta;
    .locals 1

    .prologue
    .line 38
    new-array v0, p1, [Lcom/twitter/model/av/VideoCta;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/twitter/model/av/w;->a(Landroid/os/Parcel;)Lcom/twitter/model/av/VideoCta;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/twitter/model/av/w;->a(I)[Lcom/twitter/model/av/VideoCta;

    move-result-object v0

    return-object v0
.end method
