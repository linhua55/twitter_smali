.class Lcom/twitter/app/main/p;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/app/main/MainActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/app/main/MainActivity;)V
    .locals 0

    .prologue
    .line 1765
    iput-object p1, p0, Lcom/twitter/app/main/p;->a:Lcom/twitter/app/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/app/main/MainActivity;Lcom/twitter/app/main/a;)V
    .locals 0

    .prologue
    .line 1765
    invoke-direct {p0, p1}, Lcom/twitter/app/main/p;-><init>(Lcom/twitter/app/main/MainActivity;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1787
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1788
    iget-object v0, p0, Lcom/twitter/app/main/p;->a:Lcom/twitter/app/main/MainActivity;

    invoke-static {v0}, Lcom/twitter/app/main/MainActivity;->g(Lcom/twitter/app/main/MainActivity;)Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 1789
    new-instance v1, Lcom/twitter/library/client/l;

    iget-object v2, p0, Lcom/twitter/app/main/p;->a:Lcom/twitter/app/main/MainActivity;

    .line 1790
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    const-string/jumbo v0, "news"

    invoke-direct {v1, v2, v4, v5, v0}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    .line 1792
    const-string/jumbo v0, "latestTopNewsIds"

    sget-object v2, Lcom/twitter/util/serialization/i;->j:Lcom/twitter/util/serialization/ah;

    .line 1793
    invoke-static {v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    .line 1792
    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/client/l;->a(Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1794
    const-string/jumbo v1, "japan_news_android_num_top_stories"

    const/16 v2, 0xa

    .line 1795
    invoke-static {v1, v2}, Lcom/twitter/config/d;->a(Ljava/lang/String;I)I

    move-result v1

    .line 1797
    const-string/jumbo v2, "japan_news_android_max_num_unseen_top_stories"

    const/4 v3, 0x5

    .line 1798
    invoke-static {v2, v3}, Lcom/twitter/config/d;->a(Ljava/lang/String;I)I

    move-result v2

    .line 1802
    if-eqz v0, :cond_1

    .line 1803
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1804
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v4

    if-ge v4, v1, :cond_0

    .line 1805
    const/4 v4, 0x3

    .line 1806
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1805
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1809
    :cond_0
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/4 v4, 0x1

    invoke-static {v1, v4, v2}, Lcom/twitter/util/math/b;->a(III)I

    move-result v1

    .line 1810
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 1811
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 1812
    iget-object v0, p0, Lcom/twitter/app/main/p;->a:Lcom/twitter/app/main/MainActivity;

    const/16 v1, -0x64

    invoke-static {v0, v1}, Lcom/twitter/app/main/MainActivity;->a(Lcom/twitter/app/main/MainActivity;I)V

    .line 1819
    :goto_1
    return-void

    .line 1818
    :cond_1
    iget-object v0, p0, Lcom/twitter/app/main/p;->a:Lcom/twitter/app/main/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twitter/app/main/MainActivity;->a(Lcom/twitter/app/main/MainActivity;I)V

    goto :goto_1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1771
    invoke-static {}, Lcfl;->a()Ljava/lang/String;

    move-result-object v6

    .line 1772
    invoke-static {}, Lcfl;->b()Ljava/lang/String;

    move-result-object v7

    .line 1773
    sget-object v0, Lcom/twitter/library/provider/da;->a:Landroid/net/Uri;

    const-wide/16 v2, 0x0

    .line 1774
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/app/main/p;->a:Lcom/twitter/app/main/MainActivity;

    .line 1776
    invoke-static {v1}, Lcom/twitter/app/main/MainActivity;->f(Lcom/twitter/app/main/MainActivity;)Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 1773
    invoke-static {v0, v2, v3}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1778
    new-instance v0, Lcom/twitter/android/bt;

    iget-object v1, p0, Lcom/twitter/app/main/p;->a:Lcom/twitter/app/main/MainActivity;

    sget-object v3, Lcgu;->a:[Ljava/lang/String;

    const-string/jumbo v4, "country=? AND language=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v6, v5, v8

    const/4 v6, 0x1

    aput-object v7, v5, v6

    const-string/jumbo v6, "_id ASC"

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1765
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/app/main/p;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1823
    return-void
.end method
