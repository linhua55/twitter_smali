.class final Lcom/twitter/library/model/av/a;
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
        "Lcom/twitter/library/model/av/LiveVideoPlaylist;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/twitter/library/model/av/LiveVideoPlaylist;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/twitter/library/model/av/LiveVideoPlaylist;

    invoke-direct {v0, p1}, Lcom/twitter/library/model/av/LiveVideoPlaylist;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/twitter/library/model/av/LiveVideoPlaylist;
    .locals 1

    .prologue
    .line 26
    new-array v0, p1, [Lcom/twitter/library/model/av/LiveVideoPlaylist;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/twitter/library/model/av/a;->a(Landroid/os/Parcel;)Lcom/twitter/library/model/av/LiveVideoPlaylist;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/twitter/library/model/av/a;->a(I)[Lcom/twitter/library/model/av/LiveVideoPlaylist;

    move-result-object v0

    return-object v0
.end method
