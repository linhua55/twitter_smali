.class final Lcom/twitter/model/av/n;
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
        "Lcom/twitter/model/av/MediaEntityPlaylist;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/twitter/model/av/MediaEntityPlaylist;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/twitter/model/av/MediaEntityPlaylist;

    invoke-direct {v0, p1}, Lcom/twitter/model/av/MediaEntityPlaylist;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/twitter/model/av/MediaEntityPlaylist;
    .locals 1

    .prologue
    .line 24
    new-array v0, p1, [Lcom/twitter/model/av/MediaEntityPlaylist;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/twitter/model/av/n;->a(Landroid/os/Parcel;)Lcom/twitter/model/av/MediaEntityPlaylist;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/twitter/model/av/n;->a(I)[Lcom/twitter/model/av/MediaEntityPlaylist;

    move-result-object v0

    return-object v0
.end method
