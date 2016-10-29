.class public Laac;
.super Lzz;
.source "Twttr"


# instance fields
.field h:Lcom/twitter/android/media/stickers/StickerMediaView;

.field private final i:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ILaah;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "I",
            "Laah;",
            "Lcom/twitter/library/scribe/TwitterScribeAssociation;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/media/ui/image/MediaImageView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct/range {p0 .. p6}, Lzz;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ILaah;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/util/List;)V

    .line 51
    iput-object p1, p0, Laac;->i:Landroid/content/Context;

    .line 52
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-object v0, p0, Laac;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    const v0, 0x7f04026a

    invoke-virtual {p1, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    .line 76
    :goto_0
    invoke-static {}, Lcbd;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    new-instance v1, Lcom/twitter/android/media/stickers/StickerMediaView;

    invoke-direct {v1, p2}, Lcom/twitter/android/media/stickers/StickerMediaView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Laac;->h:Lcom/twitter/android/media/stickers/StickerMediaView;

    .line 78
    iget-object v1, p0, Laac;->h:Lcom/twitter/android/media/stickers/StickerMediaView;

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->addView(Landroid/view/View;)V

    .line 80
    :cond_0
    return-object v0

    .line 74
    :cond_1
    iget-object v0, p0, Laac;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    goto :goto_0
.end method

.method a(Laab;)V
    .locals 10

    .prologue
    .line 136
    iget-object v0, p0, Laac;->h:Lcom/twitter/android/media/stickers/StickerMediaView;

    if-eqz v0, :cond_1

    .line 137
    iget-object v2, p1, Laab;->b:Lcom/twitter/model/core/MediaEntity;

    .line 138
    if-eqz v2, :cond_1

    iget-object v0, v2, Lcom/twitter/model/core/MediaEntity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lcug;->d(Lcom/twitter/model/core/MediaEntity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    invoke-virtual {p0}, Laac;->f()Landroid/widget/ImageView;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/MultiTouchImageView;

    .line 141
    invoke-virtual {p1}, Laab;->a()Lcom/twitter/model/core/Tweet;

    move-result-object v3

    .line 143
    if-eqz v3, :cond_2

    .line 144
    iget-object v1, p0, Laac;->i:Landroid/content/Context;

    check-cast v1, Lcom/twitter/android/GalleryActivity;

    .line 145
    invoke-virtual {v1, v3}, Lcom/twitter/android/GalleryActivity;->a(Lcom/twitter/model/core/Tweet;)Ljava/util/Map;

    move-result-object v1

    .line 146
    iget-wide v4, v2, Lcom/twitter/model/core/MediaEntity;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcef;

    .line 150
    :goto_0
    if-eqz v1, :cond_1

    .line 151
    invoke-virtual {v0}, Lcom/twitter/library/media/widget/MultiTouchImageView;->getActiveRect()Landroid/graphics/RectF;

    move-result-object v4

    .line 152
    iget-object v5, p0, Laac;->h:Lcom/twitter/android/media/stickers/StickerMediaView;

    iget v6, v4, Landroid/graphics/RectF;->left:F

    .line 153
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v7, v4, Landroid/graphics/RectF;->top:F

    .line 154
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 155
    invoke-virtual {v0}, Lcom/twitter/library/media/widget/MultiTouchImageView;->getRight()I

    move-result v8

    int-to-float v8, v8

    iget v9, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 156
    invoke-virtual {v0}, Lcom/twitter/library/media/widget/MultiTouchImageView;->getBottom()I

    move-result v9

    int-to-float v9, v9

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v9, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 152
    invoke-virtual {v5, v6, v7, v8, v4}, Lcom/twitter/android/media/stickers/StickerMediaView;->setPadding(IIII)V

    .line 157
    iget-object v4, p0, Laac;->h:Lcom/twitter/android/media/stickers/StickerMediaView;

    iget-object v2, v2, Lcom/twitter/model/core/MediaEntity;->r:Ljava/util/List;

    invoke-virtual {v4, v2, v1, v0}, Lcom/twitter/android/media/stickers/StickerMediaView;->a(Ljava/util/List;Lcef;Lcom/twitter/library/media/widget/MultiTouchImageView;)V

    .line 159
    if-nez v3, :cond_0

    .line 160
    iget-object v1, p0, Laac;->h:Lcom/twitter/android/media/stickers/StickerMediaView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/twitter/android/media/stickers/StickerMediaView;->a(Z)V

    .line 162
    :cond_0
    iget-object v1, p0, Laac;->h:Lcom/twitter/android/media/stickers/StickerMediaView;

    invoke-virtual {v1}, Lcom/twitter/android/media/stickers/StickerMediaView;->requestLayout()V

    .line 163
    new-instance v1, Laaf;

    invoke-direct {v1, p0, v0}, Laaf;-><init>(Laac;Lcom/twitter/library/media/widget/MultiTouchImageView;)V

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/widget/MultiTouchImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 185
    :cond_1
    return-void

    .line 148
    :cond_2
    iget-object v1, p0, Laac;->i:Landroid/content/Context;

    check-cast v1, Lcom/twitter/android/GalleryActivity;

    invoke-virtual {v1, v2}, Lcom/twitter/android/GalleryActivity;->a(Lcom/twitter/model/core/MediaEntity;)Lcef;

    move-result-object v1

    goto :goto_0
.end method

.method public a(Laab;Lcwb;Lzw;)V
    .locals 6

    .prologue
    .line 87
    instance-of v0, p1, Laam;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "A photo item is required!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 90
    :cond_0
    iput-object p1, p0, Laac;->f:Laab;

    .line 91
    invoke-virtual {p0}, Laac;->a()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    .line 93
    iget-object v1, p0, Laac;->f:Laab;

    iget-object v1, v1, Laab;->c:Lcom/twitter/media/request/b;

    new-instance v2, Laad;

    invoke-direct {v2, p0, p3}, Laad;-><init>(Laac;Lzw;)V

    invoke-virtual {v1, v2}, Lcom/twitter/media/request/b;->a(Lcom/twitter/media/request/i;)Lcom/twitter/media/request/h;

    .line 107
    iget-object v1, p0, Laac;->f:Laab;

    iget-object v1, v1, Laab;->c:Lcom/twitter/media/request/b;

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 108
    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/media/widget/MultiTouchImageView;

    .line 109
    if-eqz p2, :cond_1

    .line 110
    new-instance v2, Laag;

    iget-object v3, p0, Laac;->h:Lcom/twitter/android/media/stickers/StickerMediaView;

    invoke-direct {v2, v3, v0, p2}, Laag;-><init>(Lcom/twitter/android/media/stickers/StickerMediaView;Landroid/view/View;Lcwb;)V

    invoke-virtual {v1, v2}, Lcom/twitter/library/media/widget/MultiTouchImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 114
    :cond_1
    new-instance v0, Laae;

    invoke-direct {v0, p0, v1}, Laae;-><init>(Laac;Lcom/twitter/library/media/widget/MultiTouchImageView;)V

    invoke-virtual {v1, v0}, Lcom/twitter/library/media/widget/MultiTouchImageView;->setMultiTouchListener(Lcom/twitter/library/media/widget/s;)V

    .line 131
    invoke-virtual {p0}, Laac;->f()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Laac;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a08c6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Laab;->d:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 133
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 207
    if-eqz p1, :cond_1

    .line 208
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Laac;->b(Z)V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Laac;->h:Lcom/twitter/android/media/stickers/StickerMediaView;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Laac;->h:Lcom/twitter/android/media/stickers/StickerMediaView;

    invoke-virtual {v0}, Lcom/twitter/android/media/stickers/StickerMediaView;->b()V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Laac;->h:Lcom/twitter/android/media/stickers/StickerMediaView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laac;->f()Landroid/widget/ImageView;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/MultiTouchImageView;

    invoke-virtual {v0}, Lcom/twitter/library/media/widget/MultiTouchImageView;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Laac;->h:Lcom/twitter/android/media/stickers/StickerMediaView;

    invoke-virtual {v0, p1}, Lcom/twitter/android/media/stickers/StickerMediaView;->a(Z)V

    .line 225
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Laac;->h:Lcom/twitter/android/media/stickers/StickerMediaView;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Laac;->h:Lcom/twitter/android/media/stickers/StickerMediaView;

    invoke-virtual {v0}, Lcom/twitter/android/media/stickers/StickerMediaView;->b()V

    .line 202
    :cond_0
    invoke-virtual {p0}, Laac;->a()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 203
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Laac;->h:Lcom/twitter/android/media/stickers/StickerMediaView;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Laac;->h:Lcom/twitter/android/media/stickers/StickerMediaView;

    invoke-virtual {v0}, Lcom/twitter/android/media/stickers/StickerMediaView;->b()V

    .line 191
    iget-object v0, p0, Laac;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Laac;->h:Lcom/twitter/android/media/stickers/StickerMediaView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Laac;->h:Lcom/twitter/android/media/stickers/StickerMediaView;

    .line 194
    :cond_0
    iget-object v1, p0, Laac;->g:Ljava/util/List;

    iget-object v0, p0, Laac;->b:Landroid/view/ViewGroup;

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Laac;->h:Lcom/twitter/android/media/stickers/StickerMediaView;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Laac;->h:Lcom/twitter/android/media/stickers/StickerMediaView;

    invoke-virtual {v0}, Lcom/twitter/android/media/stickers/StickerMediaView;->a()V

    .line 219
    :cond_0
    return-void
.end method

.method public f()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 228
    invoke-virtual {p0}, Laac;->a()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method
