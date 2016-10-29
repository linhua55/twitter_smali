.class public abstract Lans;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x0

    .line 28
    invoke-static {p1}, Lcom/twitter/util/collection/CollectionUtils;->c(Ljava/util/Collection;)I

    move-result v0

    .line 29
    if-lez v0, :cond_1

    .line 30
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 31
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 32
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v4

    .line 33
    :goto_0
    if-ge v3, v2, :cond_0

    .line 34
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/UserImageView;

    .line 35
    invoke-virtual {v0, v4}, Lcom/twitter/library/media/widget/UserImageView;->setVisibility(I)V

    .line 36
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/widget/UserImageView;->a(Lcom/twitter/model/core/TwitterUser;)Z

    .line 33
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 38
    :goto_1
    if-ge v0, v5, :cond_2

    .line 39
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 40
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 45
    :cond_2
    return-void
.end method

.method public static a(Landroid/widget/ImageView;Lanv;)V
    .locals 2

    .prologue
    .line 57
    iget v0, p1, Lanv;->a:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p1, Lanv;->b:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 59
    return-void
.end method

.method public static a(Lcyc;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcyc",
            "<",
            "Landroid/view/ViewGroup;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {p1}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcyc;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Lans;->a(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcyc;->a(I)V

    goto :goto_0
.end method
