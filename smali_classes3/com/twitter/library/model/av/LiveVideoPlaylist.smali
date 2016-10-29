.class public Lcom/twitter/library/model/av/LiveVideoPlaylist;
.super Lcom/twitter/model/av/AVMediaPlaylist;
.source "Twttr"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/twitter/library/model/av/LiveVideoPlaylist;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Lcom/twitter/model/av/AVMedia;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/twitter/library/model/av/a;

    invoke-direct {v0}, Lcom/twitter/library/model/av/a;-><init>()V

    sput-object v0, Lcom/twitter/library/model/av/LiveVideoPlaylist;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/twitter/model/av/AVMediaPlaylist;-><init>(Landroid/os/Parcel;)V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/model/av/LiveVideoPlaylist;->d:Ljava/lang/String;

    .line 38
    const-class v0, Lcom/twitter/library/av/model/LiveVideoMedia;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/av/AVMedia;

    iput-object v0, p0, Lcom/twitter/library/model/av/LiveVideoPlaylist;->e:Lcom/twitter/model/av/AVMedia;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p2, p3}, Lcom/twitter/model/av/AVMediaPlaylist;-><init>(ILjava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/twitter/library/model/av/LiveVideoPlaylist;->d:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/library/model/av/LiveVideoPlaylist;->e:Lcom/twitter/model/av/AVMedia;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/twitter/model/av/AVMedia;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/twitter/model/av/AVMediaPlaylist;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/twitter/library/model/av/LiveVideoPlaylist;->d:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/twitter/library/model/av/LiveVideoPlaylist;->e:Lcom/twitter/model/av/AVMedia;

    .line 44
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/twitter/library/model/av/LiveVideoPlaylist;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/model/av/LiveVideoPlaylist;->e:Lcom/twitter/model/av/AVMedia;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/twitter/library/model/av/LiveVideoPlaylist;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/twitter/model/av/AVMedia;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/twitter/library/model/av/LiveVideoPlaylist;->e:Lcom/twitter/model/av/AVMedia;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    if-ne p0, p1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 81
    :cond_3
    invoke-super {p0, p1}, Lcom/twitter/model/av/AVMediaPlaylist;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 83
    :cond_4
    check-cast p1, Lcom/twitter/library/model/av/LiveVideoPlaylist;

    .line 85
    iget-object v2, p1, Lcom/twitter/library/model/av/LiveVideoPlaylist;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/library/model/av/LiveVideoPlaylist;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 86
    :cond_5
    iget-object v2, p1, Lcom/twitter/library/model/av/LiveVideoPlaylist;->e:Lcom/twitter/model/av/AVMedia;

    iget-object v3, p0, Lcom/twitter/library/model/av/LiveVideoPlaylist;->e:Lcom/twitter/model/av/AVMedia;

    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 92
    invoke-super {p0}, Lcom/twitter/model/av/AVMediaPlaylist;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/library/model/av/LiveVideoPlaylist;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/twitter/library/model/av/LiveVideoPlaylist;->e:Lcom/twitter/model/av/AVMedia;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/twitter/util/object/ObjectUtils;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/twitter/model/av/AVMediaPlaylist;->a(Landroid/os/Parcel;I)V

    .line 73
    iget-object v0, p0, Lcom/twitter/library/model/av/LiveVideoPlaylist;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/twitter/library/model/av/LiveVideoPlaylist;->e:Lcom/twitter/model/av/AVMedia;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 75
    return-void
.end method
