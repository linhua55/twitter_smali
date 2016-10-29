.class public Lcom/twitter/android/moments/data/v;
.super Lcmv;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmv",
        "<",
        "Lcom/twitter/android/moments/viewmodels/MomentModule;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcmv;-><init>()V

    return-void
.end method

.method private static a(Landroid/database/Cursor;Lcom/twitter/model/core/Tweet;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 94
    const-string/jumbo v0, "moments_guide_media_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 95
    const-string/jumbo v2, "moments_guide_media_url"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {p1, v0, v1, v2}, Lcom/twitter/android/moments/data/u;->a(Lcom/twitter/model/core/Tweet;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Lcom/twitter/android/moments/viewmodels/MomentModule;
    .locals 11

    .prologue
    .line 32
    invoke-static {p1}, Lcet;->b(Landroid/database/Cursor;)Lcom/twitter/model/moments/ad;

    move-result-object v5

    .line 34
    invoke-static {p1}, Lcet;->a(Landroid/database/Cursor;)Lcrc;

    move-result-object v6

    .line 35
    const-string/jumbo v0, "moments_guide_media_size"

    .line 36
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v1, Lcom/twitter/util/math/Size;->a:Lcom/twitter/util/serialization/ah;

    .line 35
    invoke-static {v0, v1}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/twitter/util/math/Size;->b:Lcom/twitter/util/math/Size;

    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/math/Size;

    .line 39
    sget-object v1, Lcgi;->a:Lcgi;

    invoke-virtual {v1, p1}, Lcgi;->a(Landroid/database/Cursor;)Lcom/twitter/model/core/Tweet;

    move-result-object v7

    .line 40
    invoke-static {p1, v7}, Lcom/twitter/android/moments/data/v;->a(Landroid/database/Cursor;Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v8

    .line 41
    const-string/jumbo v1, "moments_guide_crop_data"

    .line 44
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 43
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    sget-object v2, Lcom/twitter/model/moments/k;->a:Lcom/twitter/util/serialization/ah;

    .line 42
    invoke-static {v1, v2}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/twitter/model/moments/k;->b:Lcom/twitter/model/moments/k;

    .line 41
    invoke-static {v1, v2}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/moments/k;

    .line 46
    const-string/jumbo v2, "moments_guide_display_type"

    .line 49
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    const-class v3, Lcom/twitter/model/moments/DisplayStyle;

    .line 50
    invoke-static {v3}, Lcom/twitter/util/serialization/i;->a(Ljava/lang/Class;)Lcom/twitter/util/serialization/ah;

    move-result-object v3

    .line 48
    invoke-static {v2, v3}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/twitter/model/moments/DisplayStyle;->a:Lcom/twitter/model/moments/DisplayStyle;

    .line 47
    invoke-static {v2, v3}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/moments/DisplayStyle;

    .line 51
    const-string/jumbo v3, "moments_guide_context_string"

    .line 52
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 53
    const-string/jumbo v3, "moments_guide_context_scribe_info"

    .line 55
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    sget-object v4, Lcom/twitter/model/moments/ap;->a:Lcom/twitter/util/serialization/ah;

    .line 54
    invoke-static {v3, v4}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/model/moments/ap;

    .line 57
    const-string/jumbo v4, "moments_guide_cta"

    .line 59
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    sget-object v10, Lcqc;->a:Lcom/twitter/util/serialization/ah;

    .line 58
    invoke-static {v4, v10}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcqc;

    .line 62
    invoke-static {v7}, Lcom/twitter/library/av/playback/bm;->b(Lcom/twitter/model/core/Tweet;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 63
    new-instance v8, Lcom/twitter/android/moments/viewmodels/aq;

    invoke-direct {v8}, Lcom/twitter/android/moments/viewmodels/aq;-><init>()V

    .line 64
    invoke-virtual {v8, v5}, Lcom/twitter/android/moments/viewmodels/aq;->a(Lcom/twitter/model/moments/ad;)Lcom/twitter/android/moments/viewmodels/ag;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/moments/viewmodels/aq;

    .line 65
    invoke-virtual {v5, v6}, Lcom/twitter/android/moments/viewmodels/aq;->a(Lcrc;)Lcom/twitter/android/moments/viewmodels/ag;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/moments/viewmodels/aq;

    .line 66
    invoke-virtual {v5, v0}, Lcom/twitter/android/moments/viewmodels/aq;->a(Lcom/twitter/util/math/Size;)Lcom/twitter/android/moments/viewmodels/aq;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/viewmodels/aq;->a(Lcom/twitter/model/moments/k;)Lcom/twitter/android/moments/viewmodels/aq;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v2}, Lcom/twitter/android/moments/viewmodels/aq;->a(Lcom/twitter/model/moments/DisplayStyle;)Lcom/twitter/android/moments/viewmodels/ag;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/viewmodels/aq;

    .line 69
    invoke-virtual {v0, v9}, Lcom/twitter/android/moments/viewmodels/aq;->b(Ljava/lang/String;)Lcom/twitter/android/moments/viewmodels/ag;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/viewmodels/aq;

    .line 70
    invoke-virtual {v0, v7}, Lcom/twitter/android/moments/viewmodels/aq;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/moments/viewmodels/ag;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/viewmodels/aq;

    .line 71
    invoke-virtual {v0, v3}, Lcom/twitter/android/moments/viewmodels/aq;->a(Lcom/twitter/model/moments/ap;)Lcom/twitter/android/moments/viewmodels/ag;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/viewmodels/aq;

    .line 72
    invoke-virtual {v0, v4}, Lcom/twitter/android/moments/viewmodels/aq;->a(Lcqc;)Lcom/twitter/android/moments/viewmodels/ag;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/viewmodels/aq;

    .line 73
    invoke-virtual {v0}, Lcom/twitter/android/moments/viewmodels/aq;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/viewmodels/MomentModule;

    .line 75
    :goto_0
    return-object v0

    :cond_0
    new-instance v10, Lcom/twitter/android/moments/viewmodels/p;

    invoke-direct {v10}, Lcom/twitter/android/moments/viewmodels/p;-><init>()V

    .line 76
    invoke-virtual {v10, v5}, Lcom/twitter/android/moments/viewmodels/p;->a(Lcom/twitter/model/moments/ad;)Lcom/twitter/android/moments/viewmodels/ag;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/moments/viewmodels/p;

    .line 77
    invoke-virtual {v5, v6}, Lcom/twitter/android/moments/viewmodels/p;->a(Lcrc;)Lcom/twitter/android/moments/viewmodels/ag;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/moments/viewmodels/p;

    .line 78
    invoke-virtual {v5, v2}, Lcom/twitter/android/moments/viewmodels/p;->a(Lcom/twitter/model/moments/DisplayStyle;)Lcom/twitter/android/moments/viewmodels/ag;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/moments/viewmodels/p;

    .line 79
    invoke-virtual {v2, v8}, Lcom/twitter/android/moments/viewmodels/p;->a(Ljava/lang/String;)Lcom/twitter/android/moments/viewmodels/p;

    move-result-object v2

    .line 80
    invoke-virtual {v2, v0}, Lcom/twitter/android/moments/viewmodels/p;->a(Lcom/twitter/util/math/Size;)Lcom/twitter/android/moments/viewmodels/p;

    move-result-object v0

    .line 81
    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/viewmodels/p;->a(Lcom/twitter/model/moments/k;)Lcom/twitter/android/moments/viewmodels/p;

    move-result-object v0

    .line 82
    invoke-virtual {v0, v9}, Lcom/twitter/android/moments/viewmodels/p;->b(Ljava/lang/String;)Lcom/twitter/android/moments/viewmodels/ag;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/viewmodels/p;

    .line 83
    invoke-virtual {v0, v7}, Lcom/twitter/android/moments/viewmodels/p;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/moments/viewmodels/ag;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/viewmodels/p;

    .line 84
    invoke-virtual {v0, v3}, Lcom/twitter/android/moments/viewmodels/p;->a(Lcom/twitter/model/moments/ap;)Lcom/twitter/android/moments/viewmodels/ag;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/viewmodels/p;

    .line 85
    invoke-virtual {v0, v4}, Lcom/twitter/android/moments/viewmodels/p;->a(Lcqc;)Lcom/twitter/android/moments/viewmodels/ag;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/viewmodels/p;

    .line 86
    invoke-virtual {v0}, Lcom/twitter/android/moments/viewmodels/p;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/viewmodels/MomentModule;

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/data/v;->a(Landroid/database/Cursor;)Lcom/twitter/android/moments/viewmodels/MomentModule;

    move-result-object v0

    return-object v0
.end method
