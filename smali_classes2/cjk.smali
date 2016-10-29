.class public Lcjk;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(ZLcom/twitter/library/media/widget/AdaptiveTweetMediaView;Lcom/twitter/library/media/widget/z;Lcom/twitter/model/core/Tweet;IIZ)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    if-eqz p2, :cond_0

    .line 64
    invoke-virtual {p1, p2}, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;->setOnImageLoadedListener(Lcom/twitter/library/media/widget/z;)V

    .line 66
    :cond_0
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/twitter/util/ui/a;->a(Landroid/view/View;I)V

    .line 68
    invoke-virtual {p3}, Lcom/twitter/model/core/Tweet;->ag()Lclw;

    move-result-object v4

    .line 70
    invoke-virtual {p1, p4}, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;->setMediaDividerSize(I)V

    .line 71
    invoke-virtual {p1, p5}, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;->setMediaPlaceholder(I)V

    .line 72
    if-eqz p6, :cond_3

    .line 73
    invoke-static {}, Lcam;->a()Lcam;

    move-result-object v0

    invoke-virtual {v0}, Lcam;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 74
    :goto_0
    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v3

    invoke-virtual {v3}, Lcbh;->m()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;->c(Z)V

    .line 75
    if-nez v0, :cond_1

    .line 76
    invoke-static {p3}, Lcom/twitter/android/av/p;->a(Lcom/twitter/model/core/Tweet;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    move v3, v1

    .line 75
    :goto_1
    invoke-virtual {p1, v3}, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;->a(Z)V

    .line 77
    invoke-virtual {p1, v0}, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;->b(Z)V

    .line 78
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;->setSingleImageMinAspectRatio(F)V

    .line 81
    invoke-virtual {p3}, Lcom/twitter/model/core/Tweet;->S()Ljava/lang/Iterable;

    move-result-object v0

    .line 82
    invoke-static {}, Lcam;->a()Lcam;

    move-result-object v3

    invoke-virtual {v3}, Lcam;->e()Lcom/twitter/util/math/Size;

    move-result-object v3

    .line 81
    invoke-static {v0, v3}, Lcug;->a(Ljava/lang/Iterable;Lcom/twitter/util/math/Size;)Ljava/util/List;

    move-result-object v0

    .line 84
    if-eqz p0, :cond_5

    .line 85
    iget-object v0, p3, Lcom/twitter/model/core/Tweet;->R:Ljava/util/List;

    .line 86
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 87
    invoke-virtual {p1, v0}, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;->setEditableMedia(Ljava/util/List;)V

    .line 97
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 98
    invoke-virtual {p1, v2}, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;->setVisibility(I)V

    .line 104
    :goto_3
    invoke-virtual {p3}, Lcom/twitter/model/core/Tweet;->ar()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_4
    invoke-virtual {p1, v1}, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;->setClickable(Z)V

    .line 105
    return-void

    :cond_3
    move v0, v2

    .line 73
    goto :goto_0

    :cond_4
    move v3, v2

    .line 76
    goto :goto_1

    .line 89
    :cond_5
    if-eqz v4, :cond_6

    .line 90
    invoke-virtual {p1, v4}, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;->setCard(Lclw;)V

    goto :goto_2

    .line 91
    :cond_6
    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 92
    iget-object v3, p3, Lcom/twitter/model/core/Tweet;->x:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;->a(Ljava/lang/Iterable;Ljava/lang/String;)V

    goto :goto_2

    .line 94
    :cond_7
    invoke-virtual {p1}, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;->d()V

    goto :goto_2

    .line 100
    :cond_8
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/twitter/library/media/widget/AdaptiveTweetMediaView;->setVisibility(I)V

    goto :goto_3

    :cond_9
    move v1, v2

    .line 104
    goto :goto_4
.end method
