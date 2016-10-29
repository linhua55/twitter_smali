.class public Lcom/twitter/model/av/MediaEntityPlaylist;
.super Lcom/twitter/model/av/AVMediaPlaylist;
.source "Twttr"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/twitter/model/av/MediaEntityPlaylist;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Lcom/twitter/model/av/Video;

.field private final f:Lcom/twitter/model/av/Video;

.field private final g:Lcom/twitter/model/av/DynamicAdInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/twitter/model/av/n;

    invoke-direct {v0}, Lcom/twitter/model/av/n;-><init>()V

    sput-object v0, Lcom/twitter/model/av/MediaEntityPlaylist;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/twitter/model/av/AVMediaPlaylist;-><init>(Landroid/os/Parcel;)V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/av/MediaEntityPlaylist;->d:Ljava/lang/String;

    .line 40
    const-class v0, Lcom/twitter/model/av/Video;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/av/Video;

    iput-object v0, p0, Lcom/twitter/model/av/MediaEntityPlaylist;->e:Lcom/twitter/model/av/Video;

    .line 41
    const-class v0, Lcom/twitter/model/av/Video;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/av/Video;

    iput-object v0, p0, Lcom/twitter/model/av/MediaEntityPlaylist;->f:Lcom/twitter/model/av/Video;

    .line 42
    const-class v0, Lcom/twitter/model/av/DynamicAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/av/DynamicAdInfo;

    iput-object v0, p0, Lcom/twitter/model/av/MediaEntityPlaylist;->g:Lcom/twitter/model/av/DynamicAdInfo;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/twitter/model/av/Video;Lcom/twitter/model/av/Video;Lcom/twitter/model/av/DynamicAdInfo;)V
    .locals 7

    .prologue
    .line 49
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/twitter/model/av/MediaEntityPlaylist;-><init>(Ljava/lang/String;Lcom/twitter/model/av/Video;Lcom/twitter/model/av/Video;Lcom/twitter/model/av/DynamicAdInfo;ILjava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/twitter/model/av/Video;Lcom/twitter/model/av/Video;Lcom/twitter/model/av/DynamicAdInfo;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p5, p6}, Lcom/twitter/model/av/AVMediaPlaylist;-><init>(ILjava/lang/String;)V

    .line 59
    iput-object p1, p0, Lcom/twitter/model/av/MediaEntityPlaylist;->d:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/twitter/model/av/MediaEntityPlaylist;->e:Lcom/twitter/model/av/Video;

    .line 61
    iput-object p3, p0, Lcom/twitter/model/av/MediaEntityPlaylist;->f:Lcom/twitter/model/av/Video;

    .line 62
    iput-object p4, p0, Lcom/twitter/model/av/MediaEntityPlaylist;->g:Lcom/twitter/model/av/DynamicAdInfo;

    .line 63
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/av/DynamicAdInfo;Lcom/twitter/util/collection/ab;)Lcom/twitter/model/av/AVMediaPlaylist;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/av/DynamicAdInfo;",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/twitter/model/av/AVMediaPlaylist;"
        }
    .end annotation

    .prologue
    .line 98
    if-nez p1, :cond_0

    .line 106
    :goto_0
    return-object p0

    .line 102
    :cond_0
    iget-object v0, p1, Lcom/twitter/model/av/DynamicAdInfo;->a:Lcom/twitter/model/av/DynamicAd;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/twitter/model/av/DynamicAdInfo;->a:Lcom/twitter/model/av/DynamicAd;

    const-string/jumbo v0, ""

    .line 103
    invoke-virtual {p2, v0}, Lcom/twitter/util/collection/ab;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/twitter/model/av/DynamicAd;->a(Ljava/lang/String;)Lcom/twitter/model/av/Video;

    move-result-object v0

    .line 106
    :goto_1
    new-instance v1, Lcom/twitter/model/av/MediaEntityPlaylist;

    iget-object v2, p0, Lcom/twitter/model/av/MediaEntityPlaylist;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/model/av/MediaEntityPlaylist;->e:Lcom/twitter/model/av/Video;

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/twitter/model/av/MediaEntityPlaylist;-><init>(Ljava/lang/String;Lcom/twitter/model/av/Video;Lcom/twitter/model/av/Video;Lcom/twitter/model/av/DynamicAdInfo;)V

    move-object p0, v1

    goto :goto_0

    .line 103
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/model/av/MediaEntityPlaylist;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/twitter/model/av/AVMedia;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/twitter/model/av/MediaEntityPlaylist;->e:Lcom/twitter/model/av/Video;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 121
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 122
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 123
    invoke-super {p0, p1}, Lcom/twitter/model/av/AVMediaPlaylist;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    check-cast p1, Lcom/twitter/model/av/MediaEntityPlaylist;

    .line 127
    iget-object v1, p1, Lcom/twitter/model/av/MediaEntityPlaylist;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/model/av/MediaEntityPlaylist;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p1, Lcom/twitter/model/av/MediaEntityPlaylist;->e:Lcom/twitter/model/av/Video;

    iget-object v2, p0, Lcom/twitter/model/av/MediaEntityPlaylist;->e:Lcom/twitter/model/av/Video;

    invoke-static {v1, v2}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p1, Lcom/twitter/model/av/MediaEntityPlaylist;->f:Lcom/twitter/model/av/Video;

    iget-object v2, p0, Lcom/twitter/model/av/MediaEntityPlaylist;->f:Lcom/twitter/model/av/Video;

    invoke-static {v1, v2}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    iget-object v0, p1, Lcom/twitter/model/av/MediaEntityPlaylist;->g:Lcom/twitter/model/av/DynamicAdInfo;

    iget-object v1, p0, Lcom/twitter/model/av/MediaEntityPlaylist;->g:Lcom/twitter/model/av/DynamicAdInfo;

    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 135
    invoke-super {p0}, Lcom/twitter/model/av/AVMediaPlaylist;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/model/av/MediaEntityPlaylist;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/twitter/model/av/MediaEntityPlaylist;->e:Lcom/twitter/model/av/Video;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/twitter/model/av/MediaEntityPlaylist;->f:Lcom/twitter/model/av/Video;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/twitter/model/av/MediaEntityPlaylist;->g:Lcom/twitter/model/av/DynamicAdInfo;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/twitter/util/object/ObjectUtils;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i()Lcom/twitter/model/av/DynamicAdInfo;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/twitter/model/av/MediaEntityPlaylist;->g:Lcom/twitter/model/av/DynamicAdInfo;

    return-object v0
.end method

.method public k()Lcom/twitter/model/av/AVMedia;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/twitter/model/av/MediaEntityPlaylist;->f:Lcom/twitter/model/av/Video;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0, p1, p2}, Lcom/twitter/model/av/AVMediaPlaylist;->a(Landroid/os/Parcel;I)V

    .line 113
    iget-object v0, p0, Lcom/twitter/model/av/MediaEntityPlaylist;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/twitter/model/av/MediaEntityPlaylist;->e:Lcom/twitter/model/av/Video;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 115
    iget-object v0, p0, Lcom/twitter/model/av/MediaEntityPlaylist;->f:Lcom/twitter/model/av/Video;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 116
    iget-object v0, p0, Lcom/twitter/model/av/MediaEntityPlaylist;->g:Lcom/twitter/model/av/DynamicAdInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 117
    return-void
.end method
