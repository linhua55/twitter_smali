.class public Lcom/twitter/model/av/VideoPlaylist;
.super Lcom/twitter/model/av/AVMediaPlaylist;
.source "Twttr"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/twitter/model/av/VideoPlaylist;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Lcom/twitter/model/av/Video;

.field private final e:Lcom/twitter/model/av/Video;

.field private final f:Lcom/twitter/model/av/DynamicAdInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/twitter/model/av/y;

    invoke-direct {v0}, Lcom/twitter/model/av/y;-><init>()V

    sput-object v0, Lcom/twitter/model/av/VideoPlaylist;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/twitter/model/av/AVMediaPlaylist;-><init>(Landroid/os/Parcel;)V

    .line 46
    const-class v0, Lcom/twitter/model/av/Video;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/av/Video;

    iput-object v0, p0, Lcom/twitter/model/av/VideoPlaylist;->d:Lcom/twitter/model/av/Video;

    .line 47
    const-class v0, Lcom/twitter/model/av/Video;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/av/Video;

    iput-object v0, p0, Lcom/twitter/model/av/VideoPlaylist;->e:Lcom/twitter/model/av/Video;

    .line 48
    const-class v0, Lcom/twitter/model/av/DynamicAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/av/DynamicAdInfo;

    iput-object v0, p0, Lcom/twitter/model/av/VideoPlaylist;->f:Lcom/twitter/model/av/DynamicAdInfo;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/twitter/model/av/y;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/twitter/model/av/VideoPlaylist;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/av/Video;Lcom/twitter/model/av/Video;ILjava/util/Map;Ljava/lang/String;Lcom/twitter/model/av/DynamicAdInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/av/Video;",
            "Lcom/twitter/model/av/Video;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/twitter/model/av/DynamicAdInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p4, p3, p5}, Lcom/twitter/model/av/AVMediaPlaylist;-><init>(Ljava/util/Map;ILjava/lang/String;)V

    .line 80
    iput-object p2, p0, Lcom/twitter/model/av/VideoPlaylist;->d:Lcom/twitter/model/av/Video;

    .line 81
    iput-object p1, p0, Lcom/twitter/model/av/VideoPlaylist;->e:Lcom/twitter/model/av/Video;

    .line 82
    iput-object p6, p0, Lcom/twitter/model/av/VideoPlaylist;->f:Lcom/twitter/model/av/DynamicAdInfo;

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/twitter/model/av/VideoPlaylist;)Lcom/twitter/model/av/Video;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/twitter/model/av/VideoPlaylist;->d:Lcom/twitter/model/av/Video;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/model/av/VideoPlaylist;)Lcom/twitter/model/av/Video;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/twitter/model/av/VideoPlaylist;->e:Lcom/twitter/model/av/Video;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/model/av/VideoPlaylist;)Lcom/twitter/model/av/DynamicAdInfo;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/twitter/model/av/VideoPlaylist;->f:Lcom/twitter/model/av/DynamicAdInfo;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/model/av/DynamicAdInfo;Lcom/twitter/util/collection/ab;)Lcom/twitter/model/av/AVMediaPlaylist;
    .locals 3
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
    const/4 v1, 0x0

    .line 149
    iget-object v0, p1, Lcom/twitter/model/av/DynamicAdInfo;->a:Lcom/twitter/model/av/DynamicAd;

    if-eqz v0, :cond_0

    iget-object v2, p1, Lcom/twitter/model/av/DynamicAdInfo;->a:Lcom/twitter/model/av/DynamicAd;

    const-string/jumbo v0, ""

    .line 150
    invoke-virtual {p2, v0}, Lcom/twitter/util/collection/ab;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/twitter/model/av/DynamicAd;->a(Ljava/lang/String;)Lcom/twitter/model/av/Video;

    move-result-object v0

    .line 153
    :goto_0
    new-instance v2, Lcom/twitter/model/av/z;

    invoke-direct {v2, p0, v1}, Lcom/twitter/model/av/z;-><init>(Lcom/twitter/model/av/VideoPlaylist;Lcom/twitter/model/av/y;)V

    .line 154
    invoke-virtual {v2, p1}, Lcom/twitter/model/av/z;->a(Lcom/twitter/model/av/DynamicAdInfo;)Lcom/twitter/model/av/z;

    move-result-object v1

    .line 155
    invoke-virtual {v1, v0}, Lcom/twitter/model/av/z;->a(Lcom/twitter/model/av/Video;)Lcom/twitter/model/av/z;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/twitter/model/av/z;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/av/AVMediaPlaylist;

    .line 153
    return-object v0

    :cond_0
    move-object v0, v1

    .line 150
    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/twitter/model/av/VideoPlaylist;->a:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/av/VideoPlaylist;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    iget-object v1, p0, Lcom/twitter/model/av/VideoPlaylist;->c:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/twitter/model/av/VideoPlaylist;->c:Ljava/util/Map;

    const-string/jumbo v1, "Network-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 113
    :cond_0
    return-object v0
.end method

.method public c()Lcom/twitter/model/av/AVMedia;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/twitter/model/av/VideoPlaylist;->e:Lcom/twitter/model/av/Video;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 170
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 178
    :cond_0
    :goto_0
    return v1

    .line 171
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 172
    invoke-super {p0, p1}, Lcom/twitter/model/av/AVMediaPlaylist;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    check-cast p1, Lcom/twitter/model/av/VideoPlaylist;

    .line 176
    iget-object v2, p0, Lcom/twitter/model/av/VideoPlaylist;->d:Lcom/twitter/model/av/Video;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/twitter/model/av/VideoPlaylist;->d:Lcom/twitter/model/av/Video;

    iget-object v3, p1, Lcom/twitter/model/av/VideoPlaylist;->d:Lcom/twitter/model/av/Video;

    invoke-virtual {v2, v3}, Lcom/twitter/model/av/Video;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    :cond_2
    iget-object v2, p0, Lcom/twitter/model/av/VideoPlaylist;->e:Lcom/twitter/model/av/Video;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/twitter/model/av/VideoPlaylist;->e:Lcom/twitter/model/av/Video;

    iget-object v3, p1, Lcom/twitter/model/av/VideoPlaylist;->e:Lcom/twitter/model/av/Video;

    invoke-virtual {v2, v3}, Lcom/twitter/model/av/Video;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    :cond_3
    iget-object v2, p0, Lcom/twitter/model/av/VideoPlaylist;->f:Lcom/twitter/model/av/DynamicAdInfo;

    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/twitter/model/av/VideoPlaylist;->f:Lcom/twitter/model/av/DynamicAdInfo;

    iget-object v1, p1, Lcom/twitter/model/av/VideoPlaylist;->f:Lcom/twitter/model/av/DynamicAdInfo;

    invoke-virtual {v0, v1}, Lcom/twitter/model/av/DynamicAdInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_4
    :goto_1
    move v1, v0

    goto :goto_0

    .line 176
    :cond_5
    iget-object v2, p1, Lcom/twitter/model/av/VideoPlaylist;->d:Lcom/twitter/model/av/Video;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 177
    :cond_6
    iget-object v2, p1, Lcom/twitter/model/av/VideoPlaylist;->e:Lcom/twitter/model/av/Video;

    if-eqz v2, :cond_3

    goto :goto_0

    .line 178
    :cond_7
    iget-object v2, p1, Lcom/twitter/model/av/VideoPlaylist;->f:Lcom/twitter/model/av/DynamicAdInfo;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 183
    invoke-super {p0}, Lcom/twitter/model/av/AVMediaPlaylist;->hashCode()I

    move-result v0

    .line 184
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/model/av/VideoPlaylist;->d:Lcom/twitter/model/av/Video;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/av/VideoPlaylist;->d:Lcom/twitter/model/av/Video;

    invoke-virtual {v0}, Lcom/twitter/model/av/Video;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 185
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/model/av/VideoPlaylist;->e:Lcom/twitter/model/av/Video;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/model/av/VideoPlaylist;->e:Lcom/twitter/model/av/Video;

    invoke-virtual {v0}, Lcom/twitter/model/av/Video;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 186
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/twitter/model/av/VideoPlaylist;->f:Lcom/twitter/model/av/DynamicAdInfo;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/twitter/model/av/VideoPlaylist;->f:Lcom/twitter/model/av/DynamicAdInfo;

    invoke-virtual {v1}, Lcom/twitter/model/av/DynamicAdInfo;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 187
    return v0

    :cond_1
    move v0, v1

    .line 184
    goto :goto_0

    :cond_2
    move v0, v1

    .line 185
    goto :goto_1
.end method

.method public i()Lcom/twitter/model/av/DynamicAdInfo;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/twitter/model/av/VideoPlaylist;->f:Lcom/twitter/model/av/DynamicAdInfo;

    return-object v0
.end method

.method public k()Lcom/twitter/model/av/AVMedia;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/twitter/model/av/VideoPlaylist;->d:Lcom/twitter/model/av/Video;

    return-object v0
.end method

.method protected l()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/twitter/model/av/VideoPlaylist;->d:Lcom/twitter/model/av/Video;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/av/VideoPlaylist;->e:Lcom/twitter/model/av/Video;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0, p1, p2}, Lcom/twitter/model/av/AVMediaPlaylist;->a(Landroid/os/Parcel;I)V

    .line 163
    iget-object v0, p0, Lcom/twitter/model/av/VideoPlaylist;->d:Lcom/twitter/model/av/Video;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 164
    iget-object v0, p0, Lcom/twitter/model/av/VideoPlaylist;->e:Lcom/twitter/model/av/Video;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 165
    iget-object v0, p0, Lcom/twitter/model/av/VideoPlaylist;->f:Lcom/twitter/model/av/DynamicAdInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 166
    return-void
.end method
