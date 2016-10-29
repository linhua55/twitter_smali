.class public Lcom/twitter/library/av/playback/livevideo/LiveVideoDataSource;
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
            "Lcom/twitter/library/av/playback/livevideo/LiveVideoDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Lcom/twitter/model/livevideo/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/twitter/library/av/playback/livevideo/b;

    invoke-direct {v0}, Lcom/twitter/library/av/playback/livevideo/b;-><init>()V

    sput-object v0, Lcom/twitter/library/av/playback/livevideo/LiveVideoDataSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 48
    const-class v0, Lcom/twitter/library/av/playback/livevideo/LiveVideoDataSource;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/library/av/playback/livevideo/LiveVideoDataSource;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/av/playback/livevideo/LiveVideoDataSource;->c:Ljava/lang/String;

    .line 66
    sget-object v0, Lcom/twitter/model/livevideo/d;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/livevideo/d;

    iput-object v0, p0, Lcom/twitter/library/av/playback/livevideo/LiveVideoDataSource;->d:Lcom/twitter/model/livevideo/d;

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/livevideo/d;)V
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p1, Lcom/twitter/model/livevideo/d;->b:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/twitter/library/av/playback/livevideo/LiveVideoDataSource;-><init>(Ljava/lang/String;Lcom/twitter/model/livevideo/d;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/twitter/model/livevideo/d;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p2, p0, Lcom/twitter/library/av/playback/livevideo/LiveVideoDataSource;->d:Lcom/twitter/model/livevideo/d;

    .line 60
    iput-object p1, p0, Lcom/twitter/library/av/playback/livevideo/LiveVideoDataSource;->c:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/twitter/library/av/playback/livevideo/LiveVideoDataSource;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/twitter/model/card/property/ImageSpec;
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/twitter/library/av/playback/livevideo/LiveVideoDataSource;->d:Lcom/twitter/model/livevideo/d;

    iget-object v0, v0, Lcom/twitter/model/livevideo/d;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 168
    :goto_0
    return-object v0

    .line 157
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/twitter/library/av/playback/livevideo/LiveVideoDataSource;->d:Lcom/twitter/model/livevideo/d;

    iget-object v1, v1, Lcom/twitter/model/livevideo/d;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 158
    new-instance v1, Lcom/twitter/library/av/playback/livevideo/c;

    invoke-direct {v1, p0}, Lcom/twitter/library/av/playback/livevideo/c;-><init>(Lcom/twitter/library/av/playback/livevideo/LiveVideoDataSource;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 168
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/card/property/ImageSpec;

    goto :goto_0
.end method

.method public c()Lcom/twitter/model/core/Tweet;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x7

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/twitter/library/av/playback/livevideo/LiveVideoDataSource;->d:Lcom/twitter/model/livevideo/d;

    iget-object v0, v0, Lcom/twitter/model/livevideo/d;->i:Lcom/twitter/model/livevideo/a;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/playback/livevideo/LiveVideoDataSource;->d:Lcom/twitter/model/livevideo/d;

    iget-object v0, v0, Lcom/twitter/model/livevideo/d;->i:Lcom/twitter/model/livevideo/a;

    iget-object v0, v0, Lcom/twitter/model/livevideo/a;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public g()Lbwl;
    .locals 5

    .prologue
    .line 107
    iget-object v0, p0, Lcom/twitter/library/av/playback/livevideo/LiveVideoDataSource;->d:Lcom/twitter/model/livevideo/d;

    iget-object v0, v0, Lcom/twitter/model/livevideo/d;->i:Lcom/twitter/model/livevideo/a;

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lbws;

    iget-object v1, p0, Lcom/twitter/library/av/playback/livevideo/LiveVideoDataSource;->d:Lcom/twitter/model/livevideo/d;

    iget-object v1, v1, Lcom/twitter/model/livevideo/d;->i:Lcom/twitter/model/livevideo/a;

    iget-object v2, p0, Lcom/twitter/library/av/playback/livevideo/LiveVideoDataSource;->d:Lcom/twitter/model/livevideo/d;

    iget-wide v2, v2, Lcom/twitter/model/livevideo/d;->c:J

    new-instance v4, Lcom/twitter/library/av/playback/livevideo/e;

    invoke-direct {v4}, Lcom/twitter/library/av/playback/livevideo/e;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lbws;-><init>(Lcom/twitter/model/livevideo/a;JLbwt;)V

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
    .line 118
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/twitter/model/av/Partner;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/twitter/model/av/Partner;->a:Lcom/twitter/model/av/Partner;

    return-object v0
.end method

.method public j()Lcom/twitter/library/av/playback/df;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Lcom/twitter/library/av/playback/livevideo/a;

    iget-object v1, p0, Lcom/twitter/library/av/playback/livevideo/LiveVideoDataSource;->d:Lcom/twitter/model/livevideo/d;

    invoke-direct {v0, v1}, Lcom/twitter/library/av/playback/livevideo/a;-><init>(Lcom/twitter/model/livevideo/d;)V

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public n()F
    .locals 1

    .prologue
    .line 178
    const v0, 0x3fe38e39

    return v0
.end method

.method public o()J
    .locals 2

    .prologue
    .line 183
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/twitter/library/av/playback/livevideo/LiveVideoDataSource;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/twitter/library/av/playback/livevideo/LiveVideoDataSource;->d:Lcom/twitter/model/livevideo/d;

    sget-object v1, Lcom/twitter/model/livevideo/d;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/aa;->a(Landroid/os/Parcel;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)V

    .line 195
    return-void
.end method
