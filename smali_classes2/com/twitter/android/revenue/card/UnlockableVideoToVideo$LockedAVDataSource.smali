.class Lcom/twitter/android/revenue/card/UnlockableVideoToVideo$LockedAVDataSource;
.super Lcom/twitter/library/av/playback/TweetAVDataSource;
.source "Twttr"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/twitter/android/revenue/card/UnlockableVideoToVideo$LockedAVDataSource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 226
    new-instance v0, Lcom/twitter/android/revenue/card/bm;

    invoke-direct {v0}, Lcom/twitter/android/revenue/card/bm;-><init>()V

    sput-object v0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo$LockedAVDataSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/twitter/library/av/playback/TweetAVDataSource;-><init>(Landroid/os/Parcel;)V

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo$LockedAVDataSource;->d:Ljava/lang/String;

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo$LockedAVDataSource;->c:Ljava/lang/String;

    .line 257
    return-void
.end method

.method constructor <init>(Lcom/twitter/model/core/Tweet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0, p1, p2}, Lcom/twitter/library/av/playback/TweetAVDataSource;-><init>(Lcom/twitter/model/core/Tweet;Ljava/lang/String;)V

    .line 249
    iput-object p3, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo$LockedAVDataSource;->d:Ljava/lang/String;

    .line 250
    iput-object p4, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo$LockedAVDataSource;->c:Ljava/lang/String;

    .line 251
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo$LockedAVDataSource;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/twitter/library/av/playback/TweetAVDataSource;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo$LockedAVDataSource;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public b()Lcom/twitter/model/card/property/ImageSpec;
    .locals 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo$LockedAVDataSource;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo$LockedAVDataSource;->b:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_0

    .line 270
    iget-object v1, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo$LockedAVDataSource;->d:Ljava/lang/String;

    const-class v2, Lcom/twitter/model/card/property/ImageSpec;

    invoke-virtual {v0, v1, v2}, Lclw;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/card/property/ImageSpec;

    .line 273
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/twitter/library/av/playback/TweetAVDataSource;->b()Lcom/twitter/model/card/property/ImageSpec;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 278
    invoke-super {p0, p1, p2}, Lcom/twitter/library/av/playback/TweetAVDataSource;->writeToParcel(Landroid/os/Parcel;I)V

    .line 279
    iget-object v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo$LockedAVDataSource;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/twitter/android/revenue/card/UnlockableVideoToVideo$LockedAVDataSource;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    return-void
.end method
