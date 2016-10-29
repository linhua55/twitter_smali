.class public Lcom/twitter/library/av/playback/DMAVDataSource;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/av/playback/AVDataSource;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/twitter/library/av/playback/DMAVDataSource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/twitter/model/core/MediaEntity;

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/twitter/library/av/playback/br;

    invoke-direct {v0}, Lcom/twitter/library/av/playback/br;-><init>()V

    sput-object v0, Lcom/twitter/library/av/playback/DMAVDataSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/twitter/model/core/MediaEntity;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/MediaEntity;

    invoke-direct {p0, v1, v0}, Lcom/twitter/library/av/playback/DMAVDataSource;-><init>(Ljava/lang/String;Lcom/twitter/model/core/MediaEntity;)V

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/twitter/library/av/playback/br;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/twitter/library/av/playback/DMAVDataSource;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/twitter/library/av/playback/bv;)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p1, Lcom/twitter/library/av/playback/bv;->a:Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p1, Lcom/twitter/library/av/playback/bv;->a:Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->p()Lcom/twitter/model/dms/i;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/bk;

    iget-object v0, v0, Lcom/twitter/model/dms/bk;->e:Lcom/twitter/model/core/MediaEntity;

    invoke-direct {p0, v1, v0}, Lcom/twitter/library/av/playback/DMAVDataSource;-><init>(Ljava/lang/String;Lcom/twitter/model/core/MediaEntity;)V

    .line 56
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/twitter/model/core/MediaEntity;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/twitter/library/av/playback/DMAVDataSource;->b:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/twitter/library/av/playback/DMAVDataSource;->c:Lcom/twitter/model/core/MediaEntity;

    .line 65
    const-string/jumbo v0, "gif_caching_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/library/av/playback/DMAVDataSource;->d:Z

    .line 66
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/twitter/library/av/playback/DMAVDataSource;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/twitter/model/card/property/ImageSpec;
    .locals 4

    .prologue
    .line 206
    new-instance v0, Lcom/twitter/model/card/property/ImageSpec;

    invoke-direct {v0}, Lcom/twitter/model/card/property/ImageSpec;-><init>()V

    .line 207
    iget-object v1, p0, Lcom/twitter/library/av/playback/DMAVDataSource;->c:Lcom/twitter/model/core/MediaEntity;

    iget-object v1, v1, Lcom/twitter/model/core/MediaEntity;->l:Ljava/lang/String;

    iput-object v1, v0, Lcom/twitter/model/card/property/ImageSpec;->c:Ljava/lang/String;

    .line 208
    new-instance v1, Lcom/twitter/model/card/property/Vector2F;

    iget-object v2, p0, Lcom/twitter/library/av/playback/DMAVDataSource;->c:Lcom/twitter/model/core/MediaEntity;

    iget-object v2, v2, Lcom/twitter/model/core/MediaEntity;->n:Lcom/twitter/util/math/Size;

    invoke-virtual {v2}, Lcom/twitter/util/math/Size;->a()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/twitter/library/av/playback/DMAVDataSource;->c:Lcom/twitter/model/core/MediaEntity;

    iget-object v3, v3, Lcom/twitter/model/core/MediaEntity;->n:Lcom/twitter/util/math/Size;

    invoke-virtual {v3}, Lcom/twitter/util/math/Size;->b()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Lcom/twitter/model/card/property/Vector2F;-><init>(FF)V

    iput-object v1, v0, Lcom/twitter/model/card/property/ImageSpec;->d:Lcom/twitter/model/card/property/Vector2F;

    .line 209
    return-object v0
.end method

.method public c()Lcom/twitter/model/core/Tweet;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 88
    sget-object v0, Lcom/twitter/library/av/playback/bu;->a:[I

    iget-object v1, p0, Lcom/twitter/library/av/playback/DMAVDataSource;->c:Lcom/twitter/model/core/MediaEntity;

    iget-object v1, v1, Lcom/twitter/model/core/MediaEntity;->m:Lcom/twitter/model/core/MediaEntity$Type;

    invoke-virtual {v1}, Lcom/twitter/model/core/MediaEntity$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 96
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 90
    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 93
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 230
    if-ne p0, p1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v0

    .line 233
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 234
    goto :goto_0

    .line 236
    :cond_3
    check-cast p1, Lcom/twitter/library/av/playback/DMAVDataSource;

    .line 238
    iget-object v2, p0, Lcom/twitter/library/av/playback/DMAVDataSource;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/library/av/playback/DMAVDataSource;->b:Ljava/lang/String;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/twitter/library/av/playback/DMAVDataSource;->c:Lcom/twitter/model/core/MediaEntity;

    iget-object v3, p1, Lcom/twitter/library/av/playback/DMAVDataSource;->c:Lcom/twitter/model/core/MediaEntity;

    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/twitter/library/av/playback/DMAVDataSource;->c:Lcom/twitter/model/core/MediaEntity;

    invoke-static {v0}, Lcom/twitter/library/av/playback/bm;->a(Lcom/twitter/model/core/MediaEntity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Lbwl;
    .locals 2

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/twitter/library/av/playback/DMAVDataSource;->d:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/twitter/model/core/MediaEntity$Type;->c:Lcom/twitter/model/core/MediaEntity$Type;

    iget-object v1, p0, Lcom/twitter/library/av/playback/DMAVDataSource;->c:Lcom/twitter/model/core/MediaEntity;

    iget-object v1, v1, Lcom/twitter/model/core/MediaEntity;->m:Lcom/twitter/model/core/MediaEntity$Type;

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/MediaEntity$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Lbwn;

    iget-object v1, p0, Lcom/twitter/library/av/playback/DMAVDataSource;->c:Lcom/twitter/model/core/MediaEntity;

    invoke-direct {v0, v1}, Lbwn;-><init>(Lcom/twitter/model/core/MediaEntity;)V

    .line 128
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lbwu;

    iget-object v1, p0, Lcom/twitter/library/av/playback/DMAVDataSource;->c:Lcom/twitter/model/core/MediaEntity;

    invoke-direct {v0, v1}, Lbwu;-><init>(Lcom/twitter/model/core/MediaEntity;)V

    goto :goto_0
.end method

.method public h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/twitter/library/av/playback/DMAVDataSource;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Lcom/twitter/model/av/Partner;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/twitter/model/av/Partner;->a:Lcom/twitter/model/av/Partner;

    return-object v0
.end method

.method public j()Lcom/twitter/library/av/playback/df;
    .locals 1

    .prologue
    .line 153
    new-instance v0, Lcom/twitter/library/av/playback/bs;

    invoke-direct {v0, p0}, Lcom/twitter/library/av/playback/bs;-><init>(Lcom/twitter/library/av/playback/DMAVDataSource;)V

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/twitter/library/av/playback/DMAVDataSource;->c:Lcom/twitter/model/core/MediaEntity;

    invoke-static {v0}, Lcom/twitter/library/av/playback/bm;->b(Lcom/twitter/model/core/MediaEntity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public n()F
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/twitter/library/av/playback/DMAVDataSource;->c:Lcom/twitter/model/core/MediaEntity;

    iget-object v0, v0, Lcom/twitter/model/core/MediaEntity;->n:Lcom/twitter/util/math/Size;

    invoke-virtual {v0}, Lcom/twitter/util/math/Size;->g()F

    move-result v0

    return v0
.end method

.method public o()J
    .locals 2

    .prologue
    .line 108
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/twitter/library/av/playback/DMAVDataSource;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/twitter/library/av/playback/DMAVDataSource;->c:Lcom/twitter/model/core/MediaEntity;

    sget-object v1, Lcom/twitter/model/core/MediaEntity;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)V

    .line 226
    return-void
.end method
