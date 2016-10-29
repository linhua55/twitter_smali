.class public Landroid/support/v4/media/MediaBrowserCompatUtils;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyOptions(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 79
    const-string/jumbo v0, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 80
    const-string/jumbo v0, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 81
    if-ne v1, v3, :cond_0

    if-ne v2, v3, :cond_0

    .line 92
    :goto_0
    return-object p0

    .line 84
    :cond_0
    add-int/lit8 v0, v1, -0x1

    mul-int v3, v2, v0

    .line 85
    add-int v0, v3, v2

    .line 86
    if-lt v1, v4, :cond_1

    if-lt v2, v4, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v3, v1, :cond_2

    .line 87
    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    .line 89
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 90
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 92
    :cond_3
    invoke-interface {p0, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    goto :goto_0
.end method

.method public static areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v4, -0x1

    .line 28
    if-ne p0, p1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v0

    .line 30
    :cond_1
    if-nez p0, :cond_3

    .line 31
    const-string/jumbo v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_2

    const-string/jumbo v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 33
    :cond_3
    if-nez p1, :cond_5

    .line 34
    const-string/jumbo v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_4

    const-string/jumbo v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 37
    :cond_5
    const-string/jumbo v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_6

    const-string/jumbo v2, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public static hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 9

    .prologue
    const v2, 0x7fffffff

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v7, -0x1

    .line 45
    if-nez p0, :cond_3

    move v4, v7

    .line 46
    :goto_0
    if-nez p1, :cond_4

    move v8, v7

    .line 47
    :goto_1
    if-nez p0, :cond_5

    move v5, v7

    .line 49
    :goto_2
    if-nez p1, :cond_6

    move v6, v7

    .line 53
    :goto_3
    if-eq v4, v7, :cond_0

    if-ne v5, v7, :cond_7

    :cond_0
    move v4, v2

    move v5, v1

    .line 61
    :goto_4
    if-eq v8, v7, :cond_1

    if-ne v6, v7, :cond_8

    :cond_1
    move v3, v1

    .line 69
    :goto_5
    if-gt v5, v3, :cond_9

    if-gt v3, v4, :cond_9

    .line 74
    :cond_2
    :goto_6
    return v0

    .line 45
    :cond_3
    const-string/jumbo v3, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    move v4, v3

    goto :goto_0

    .line 46
    :cond_4
    const-string/jumbo v3, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    move v8, v3

    goto :goto_1

    .line 47
    :cond_5
    const-string/jumbo v3, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p0, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    move v5, v3

    goto :goto_2

    .line 49
    :cond_6
    const-string/jumbo v3, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {p1, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    move v6, v3

    goto :goto_3

    .line 57
    :cond_7
    add-int/lit8 v3, v4, -0x1

    mul-int v4, v5, v3

    .line 58
    add-int v3, v4, v5

    add-int/lit8 v3, v3, -0x1

    move v5, v4

    move v4, v3

    goto :goto_4

    .line 65
    :cond_8
    add-int/lit8 v2, v8, -0x1

    mul-int v3, v6, v2

    .line 66
    add-int v2, v3, v6

    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 71
    :cond_9
    if-gt v5, v2, :cond_a

    if-le v2, v4, :cond_2

    :cond_a
    move v0, v1

    .line 74
    goto :goto_6
.end method
