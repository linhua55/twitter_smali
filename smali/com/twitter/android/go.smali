.class Lcom/twitter/android/go;
.super Lcom/twitter/android/bt;
.source "Twttr"


# instance fields
.field private final a:J

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .prologue
    .line 2051
    .line 2052
    invoke-static {p6}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v6, "status_groups_type DESC"

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 2051
    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    iput-wide p7, p0, Lcom/twitter/android/go;->a:J

    .line 2054
    return-void

    :cond_0
    move-object v6, p6

    .line 2052
    goto :goto_0
.end method

.method private static a(Ljava/util/List;Lcom/twitter/model/core/Tweet;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laab;",
            ">;",
            "Lcom/twitter/model/core/Tweet;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 2077
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2078
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/twitter/util/math/Size;->b:Lcom/twitter/util/math/Size;

    .line 2079
    invoke-static {p1, v0}, Lcug;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/util/math/Size;)Ljava/util/List;

    move-result-object v0

    .line 2081
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/MediaEntity;

    .line 2082
    new-instance v2, Laam;

    invoke-static {v0}, Lcom/twitter/library/media/util/p;->a(Lcom/twitter/model/core/MediaEntity;)Lcom/twitter/media/request/b;

    move-result-object v3

    iget-object v4, v0, Lcom/twitter/model/core/MediaEntity;->x:Ljava/lang/String;

    invoke-direct {v2, p1, v0, v3, v4}, Laam;-><init>(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/MediaEntity;Lcom/twitter/media/request/b;Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2079
    :cond_0
    sget-object v0, Lcom/twitter/util/math/Size;->b:Lcom/twitter/util/math/Size;

    .line 2080
    invoke-static {p1, p2, p3, v0}, Lcug;->a(Lcom/twitter/model/core/Tweet;JLcom/twitter/util/math/Size;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 2085
    :cond_1
    invoke-static {p1}, Lcom/twitter/library/av/playback/bm;->b(Lcom/twitter/model/core/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2086
    invoke-static {p1}, Lcom/twitter/library/av/playback/bm;->w(Lcom/twitter/model/core/Tweet;)Lcom/twitter/media/request/b;

    move-result-object v0

    .line 2087
    if-eqz v0, :cond_2

    .line 2088
    new-instance v1, Laan;

    invoke-direct {v1, p1, v0}, Laan;-><init>(Lcom/twitter/model/core/Tweet;Lcom/twitter/media/request/b;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2091
    :cond_2
    return-void
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Laab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2073
    iget-object v0, p0, Lcom/twitter/android/go;->b:Ljava/util/List;

    return-object v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 2058
    invoke-super {p0}, Lcom/twitter/android/bt;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    .line 2059
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2060
    :cond_0
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/go;->b:Ljava/util/List;

    .line 2069
    :goto_0
    return-object v0

    .line 2062
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2064
    :cond_2
    sget-object v2, Lcgi;->a:Lcgi;

    invoke-virtual {v2, v0}, Lcgi;->a(Landroid/database/Cursor;)Lcom/twitter/model/core/Tweet;

    move-result-object v2

    .line 2065
    iget-wide v4, p0, Lcom/twitter/android/go;->a:J

    invoke-static {v1, v2, v4, v5}, Lcom/twitter/android/go;->a(Ljava/util/List;Lcom/twitter/model/core/Tweet;J)V

    .line 2066
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2067
    iput-object v1, p0, Lcom/twitter/android/go;->b:Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2044
    invoke-virtual {p0}, Lcom/twitter/android/go;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
