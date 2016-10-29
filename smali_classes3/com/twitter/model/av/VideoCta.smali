.class public Lcom/twitter/model/av/VideoCta;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/twitter/model/av/a;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/twitter/model/av/VideoCta;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/av/VideoCta;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/String;


# instance fields
.field private final c:Lcom/twitter/model/av/VideoCtaType;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/twitter/model/av/x;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/model/av/x;-><init>(Lcom/twitter/model/av/w;)V

    sput-object v0, Lcom/twitter/model/av/VideoCta;->a:Lcom/twitter/util/serialization/ah;

    .line 28
    new-instance v0, Lcom/twitter/model/av/w;

    invoke-direct {v0}, Lcom/twitter/model/av/w;-><init>()V

    sput-object v0, Lcom/twitter/model/av/VideoCta;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/twitter/model/av/VideoCta;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".APP_NAME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/model/av/VideoCta;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/model/av/VideoCtaType;->valueOf(Ljava/lang/String;)Lcom/twitter/model/av/VideoCtaType;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/av/VideoCta;->c:Lcom/twitter/model/av/VideoCtaType;

    .line 63
    invoke-static {p1}, Lcom/twitter/util/p;->a(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/av/VideoCta;->d:Ljava/util/Map;

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/av/VideoCtaType;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/av/VideoCtaType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/twitter/model/av/VideoCta;->c:Lcom/twitter/model/av/VideoCtaType;

    .line 53
    iput-object p2, p0, Lcom/twitter/model/av/VideoCta;->d:Ljava/util/Map;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Lcom/twitter/model/av/VideoCtaType;->a(Ljava/lang/String;)Lcom/twitter/model/av/VideoCtaType;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/av/VideoCta;->c:Lcom/twitter/model/av/VideoCtaType;

    .line 58
    iput-object p2, p0, Lcom/twitter/model/av/VideoCta;->d:Ljava/util/Map;

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/twitter/model/av/VideoCta;)Lcom/twitter/model/av/VideoCtaType;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/twitter/model/av/VideoCta;->c:Lcom/twitter/model/av/VideoCtaType;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/model/av/VideoCta;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/twitter/model/av/VideoCta;->d:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/model/av/VideoCtaType;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/twitter/model/av/VideoCta;->c:Lcom/twitter/model/av/VideoCtaType;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/twitter/model/av/VideoCta;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/av/VideoCta;->d:Ljava/util/Map;

    const-string/jumbo v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/twitter/model/av/VideoCta;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/av/VideoCta;->d:Ljava/util/Map;

    const-string/jumbo v1, "id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/twitter/model/av/VideoCta;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/av/VideoCta;->d:Ljava/util/Map;

    sget-object v1, Lcom/twitter/model/av/VideoCta;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
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

    .line 92
    if-ne p0, p1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 95
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 96
    goto :goto_0

    .line 99
    :cond_3
    check-cast p1, Lcom/twitter/model/av/VideoCta;

    .line 101
    iget-object v2, p0, Lcom/twitter/model/av/VideoCta;->d:Ljava/util/Map;

    iget-object v3, p1, Lcom/twitter/model/av/VideoCta;->d:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/twitter/model/av/VideoCta;->c:Lcom/twitter/model/av/VideoCtaType;

    iget-object v3, p1, Lcom/twitter/model/av/VideoCta;->c:Lcom/twitter/model/av/VideoCtaType;

    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/twitter/model/av/VideoCta;->c:Lcom/twitter/model/av/VideoCtaType;

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->b(Ljava/lang/Object;)I

    move-result v0

    .line 107
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/twitter/model/av/VideoCta;->d:Ljava/util/Map;

    invoke-static {v1}, Lcom/twitter/util/object/ObjectUtils;->b(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/twitter/model/av/VideoCta;->c:Lcom/twitter/model/av/VideoCtaType;

    invoke-virtual {v0}, Lcom/twitter/model/av/VideoCtaType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/twitter/model/av/VideoCta;->d:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/twitter/util/p;->a(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 120
    return-void
.end method
