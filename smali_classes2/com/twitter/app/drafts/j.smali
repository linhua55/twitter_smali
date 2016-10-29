.class public Lcom/twitter/app/drafts/j;
.super Lcvt;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcvt",
        "<",
        "Lcom/twitter/model/drafts/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcvt;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/twitter/model/drafts/d;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400d0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 41
    const v1, 0x7f130090

    new-instance v2, Lcom/twitter/app/drafts/l;

    invoke-direct {v2, v0}, Lcom/twitter/app/drafts/l;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 42
    return-object v0
.end method

.method protected bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 31
    check-cast p2, Lcom/twitter/model/drafts/d;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/app/drafts/j;->a(Landroid/content/Context;Lcom/twitter/model/drafts/d;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/view/View;Landroid/content/Context;Lcom/twitter/model/drafts/d;)V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x0

    .line 47
    const v0, 0x7f130090

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/drafts/l;

    .line 48
    iget-object v1, v0, Lcom/twitter/app/drafts/l;->a:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v1, v2}, Lcom/twitter/media/ui/image/MediaImageView;->setVisibility(I)V

    .line 49
    iget-object v1, v0, Lcom/twitter/app/drafts/l;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    iget-object v1, v0, Lcom/twitter/app/drafts/l;->d:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 51
    iget-object v1, v0, Lcom/twitter/app/drafts/l;->e:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v1, v0, Lcom/twitter/app/drafts/l;->f:Lcom/twitter/library/media/widget/VideoDurationView;

    invoke-virtual {v1, v2}, Lcom/twitter/library/media/widget/VideoDurationView;->setVisibility(I)V

    .line 53
    sget-object v2, Lcom/twitter/media/model/MediaType;->a:Lcom/twitter/media/model/MediaType;

    .line 54
    iget-object v1, p3, Lcom/twitter/model/drafts/d;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 55
    iget-object v1, p3, Lcom/twitter/model/drafts/d;->d:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/drafts/DraftAttachment;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/twitter/model/drafts/DraftAttachment;->a(I)Lcom/twitter/model/media/EditableMedia;

    move-result-object v1

    .line 56
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/twitter/model/media/EditableMedia;->k:Lcom/twitter/media/model/MediaFile;

    iget-object v3, v3, Lcom/twitter/media/model/MediaFile;->d:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    iget-object v2, v0, Lcom/twitter/app/drafts/l;->a:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v2, v5}, Lcom/twitter/media/ui/image/MediaImageView;->setVisibility(I)V

    .line 58
    iget-object v2, v0, Lcom/twitter/app/drafts/l;->a:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-static {p2, v1}, Lcom/twitter/library/media/util/w;->a(Landroid/content/Context;Lcom/twitter/model/media/EditableMedia;)Lcom/twitter/media/request/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 60
    invoke-virtual {v1}, Lcom/twitter/model/media/EditableMedia;->g()Lcom/twitter/media/model/MediaType;

    move-result-object v2

    .line 61
    sget-object v3, Lcom/twitter/app/drafts/k;->a:[I

    invoke-virtual {v2}, Lcom/twitter/media/model/MediaType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :cond_0
    move-object v1, v2

    :goto_0
    move-object v2, v1

    .line 95
    :cond_1
    :goto_1
    iget-object v1, v0, Lcom/twitter/app/drafts/l;->c:Landroid/widget/TextView;

    sget v3, Lcom/twitter/library/util/al;->a:F

    invoke-virtual {v1, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 96
    iget-object v1, p3, Lcom/twitter/model/drafts/d;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    sget-object v1, Lcom/twitter/app/drafts/k;->a:[I

    invoke-virtual {v2}, Lcom/twitter/media/model/MediaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 112
    iget-object v1, v0, Lcom/twitter/app/drafts/l;->c:Landroid/widget/TextView;

    const v2, 0x7f0a0332

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 116
    :goto_2
    iget-object v1, v0, Lcom/twitter/app/drafts/l;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    iget-object v0, v0, Lcom/twitter/app/drafts/l;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 121
    :goto_3
    return-void

    .line 63
    :pswitch_0
    iget-object v1, v0, Lcom/twitter/app/drafts/l;->d:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    move-object v1, v2

    .line 64
    goto :goto_0

    .line 67
    :pswitch_1
    check-cast v1, Lcom/twitter/model/media/EditableVideo;

    .line 68
    iget-object v3, v0, Lcom/twitter/app/drafts/l;->f:Lcom/twitter/library/media/widget/VideoDurationView;

    invoke-virtual {v1}, Lcom/twitter/model/media/EditableVideo;->k()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/twitter/library/media/widget/VideoDurationView;->setDuration(I)V

    .line 69
    iget-object v1, v0, Lcom/twitter/app/drafts/l;->f:Lcom/twitter/library/media/widget/VideoDurationView;

    invoke-virtual {v1, v5}, Lcom/twitter/library/media/widget/VideoDurationView;->setVisibility(I)V

    move-object v1, v2

    .line 70
    goto :goto_0

    .line 73
    :pswitch_2
    iget-object v1, v1, Lcom/twitter/model/media/EditableMedia;->k:Lcom/twitter/media/model/MediaFile;

    check-cast v1, Lcom/twitter/media/model/SegmentedVideoFile;

    .line 74
    iget-object v3, v0, Lcom/twitter/app/drafts/l;->f:Lcom/twitter/library/media/widget/VideoDurationView;

    invoke-virtual {v1}, Lcom/twitter/media/model/SegmentedVideoFile;->d()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/twitter/library/media/widget/VideoDurationView;->setDuration(I)V

    .line 75
    iget-object v1, v0, Lcom/twitter/app/drafts/l;->f:Lcom/twitter/library/media/widget/VideoDurationView;

    invoke-virtual {v1, v5}, Lcom/twitter/library/media/widget/VideoDurationView;->setVisibility(I)V

    move-object v1, v2

    .line 76
    goto :goto_0

    .line 79
    :pswitch_3
    check-cast v1, Lcom/twitter/model/media/EditableImage;

    .line 80
    iget-object v3, v1, Lcom/twitter/model/media/EditableImage;->h:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v1, v1, Lcom/twitter/model/media/EditableImage;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    iget-object v1, v0, Lcom/twitter/app/drafts/l;->e:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    move-object v1, v2

    goto :goto_0

    .line 90
    :cond_2
    iget-object v1, p3, Lcom/twitter/model/drafts/d;->k:Lclp;

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, v0, Lcom/twitter/app/drafts/l;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    iget-object v1, v0, Lcom/twitter/app/drafts/l;->b:Landroid/widget/ImageView;

    const v3, 0x7f020320

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 99
    :pswitch_4
    iget-object v1, v0, Lcom/twitter/app/drafts/l;->c:Landroid/widget/TextView;

    const v2, 0x7f0a0333

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 104
    :pswitch_5
    iget-object v1, v0, Lcom/twitter/app/drafts/l;->c:Landroid/widget/TextView;

    const v2, 0x7f0a0335

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 108
    :pswitch_6
    iget-object v1, v0, Lcom/twitter/app/drafts/l;->c:Landroid/widget/TextView;

    const v2, 0x7f0a0334

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 119
    :cond_3
    iget-object v0, v0, Lcom/twitter/app/drafts/l;->c:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/twitter/model/drafts/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 97
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected bridge synthetic a(Landroid/view/View;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    check-cast p3, Lcom/twitter/model/drafts/d;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/app/drafts/j;->a(Landroid/view/View;Landroid/content/Context;Lcom/twitter/model/drafts/d;)V

    return-void
.end method
