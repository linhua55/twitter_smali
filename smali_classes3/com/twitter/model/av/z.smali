.class public final Lcom/twitter/model/av/z;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/model/av/VideoPlaylist;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/twitter/model/av/Video;

.field private b:Lcom/twitter/model/av/Video;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;
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

.field private f:Lcom/twitter/model/av/DynamicAdInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/twitter/model/av/VideoPlaylist;)V
    .locals 1

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 201
    invoke-static {p1}, Lcom/twitter/model/av/VideoPlaylist;->a(Lcom/twitter/model/av/VideoPlaylist;)Lcom/twitter/model/av/Video;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/av/z;->a:Lcom/twitter/model/av/Video;

    .line 202
    invoke-static {p1}, Lcom/twitter/model/av/VideoPlaylist;->b(Lcom/twitter/model/av/VideoPlaylist;)Lcom/twitter/model/av/Video;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/av/z;->b:Lcom/twitter/model/av/Video;

    .line 203
    iget v0, p1, Lcom/twitter/model/av/VideoPlaylist;->a:I

    iput v0, p0, Lcom/twitter/model/av/z;->c:I

    .line 204
    iget-object v0, p1, Lcom/twitter/model/av/VideoPlaylist;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/av/z;->d:Ljava/lang/String;

    .line 205
    iget-object v0, p1, Lcom/twitter/model/av/VideoPlaylist;->c:Ljava/util/Map;

    iput-object v0, p0, Lcom/twitter/model/av/z;->e:Ljava/util/Map;

    .line 206
    invoke-static {p1}, Lcom/twitter/model/av/VideoPlaylist;->c(Lcom/twitter/model/av/VideoPlaylist;)Lcom/twitter/model/av/DynamicAdInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/av/z;->f:Lcom/twitter/model/av/DynamicAdInfo;

    .line 207
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/av/VideoPlaylist;Lcom/twitter/model/av/y;)V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/twitter/model/av/z;-><init>(Lcom/twitter/model/av/VideoPlaylist;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/av/DynamicAdInfo;)Lcom/twitter/model/av/z;
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/twitter/model/av/z;->f:Lcom/twitter/model/av/DynamicAdInfo;

    .line 242
    return-object p0
.end method

.method public a(Lcom/twitter/model/av/Video;)Lcom/twitter/model/av/z;
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/twitter/model/av/z;->a:Lcom/twitter/model/av/Video;

    .line 212
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/twitter/model/av/z;->e()Lcom/twitter/model/av/VideoPlaylist;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/av/VideoPlaylist;
    .locals 7

    .prologue
    .line 248
    new-instance v0, Lcom/twitter/model/av/VideoPlaylist;

    iget-object v1, p0, Lcom/twitter/model/av/z;->b:Lcom/twitter/model/av/Video;

    iget-object v2, p0, Lcom/twitter/model/av/z;->a:Lcom/twitter/model/av/Video;

    iget v3, p0, Lcom/twitter/model/av/z;->c:I

    iget-object v4, p0, Lcom/twitter/model/av/z;->e:Ljava/util/Map;

    iget-object v5, p0, Lcom/twitter/model/av/z;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/twitter/model/av/z;->f:Lcom/twitter/model/av/DynamicAdInfo;

    invoke-direct/range {v0 .. v6}, Lcom/twitter/model/av/VideoPlaylist;-><init>(Lcom/twitter/model/av/Video;Lcom/twitter/model/av/Video;ILjava/util/Map;Ljava/lang/String;Lcom/twitter/model/av/DynamicAdInfo;)V

    return-object v0
.end method
