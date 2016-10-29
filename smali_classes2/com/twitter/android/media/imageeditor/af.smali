.class Lcom/twitter/android/media/imageeditor/af;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lavg;
.implements Lcom/twitter/android/media/widget/z;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lavg",
        "<",
        "Lcpj;",
        ">;",
        "Lcom/twitter/android/media/widget/z;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/FragmentManager;",
            ">;"
        }
    .end annotation
.end field

.field c:Z

.field private final d:Lcom/twitter/android/media/stickers/StickerFilteredImageView;

.field private final e:Lcom/twitter/media/ui/image/MediaImageView;

.field private final f:Lcom/twitter/model/media/EditableImage;

.field private final g:Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;

.field private h:Lcom/twitter/media/filters/Filters;

.field private i:Landroid/support/v4/view/ViewPager;

.field private j:I


# direct methods
.method constructor <init>(Lcom/twitter/android/media/stickers/StickerFilteredImageView;Lcom/twitter/media/ui/image/MediaImageView;Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;Lcom/twitter/model/media/EditableImage;Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/twitter/android/media/imageeditor/af;->d:Lcom/twitter/android/media/stickers/StickerFilteredImageView;

    .line 77
    iput-object p2, p0, Lcom/twitter/android/media/imageeditor/af;->e:Lcom/twitter/media/ui/image/MediaImageView;

    .line 78
    iput-object p3, p0, Lcom/twitter/android/media/imageeditor/af;->g:Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;

    .line 79
    iput-object p4, p0, Lcom/twitter/android/media/imageeditor/af;->f:Lcom/twitter/model/media/EditableImage;

    .line 80
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/twitter/android/media/imageeditor/af;->a:Ljava/lang/ref/WeakReference;

    .line 81
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/twitter/android/media/imageeditor/af;->b:Ljava/lang/ref/WeakReference;

    .line 83
    invoke-static {p5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 84
    const-string/jumbo v2, "filters_tooltip_times_shown"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 85
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    const-string/jumbo v4, "filters_tooltip_last_time_shown"

    const-wide/16 v6, 0x0

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/twitter/android/media/imageeditor/af;->c:Z

    .line 87
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/media/imageeditor/af;)Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->g:Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;

    return-object v0
.end method

.method private c(Lcom/twitter/android/media/widget/FilterFilmstripView;)V
    .locals 4

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/twitter/android/media/imageeditor/af;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/twitter/android/media/widget/FilterFilmstripView;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    invoke-virtual {p1}, Lcom/twitter/android/media/widget/FilterFilmstripView;->getActivePreview()Lcom/twitter/media/ui/image/MediaImageView;

    move-result-object v0

    .line 372
    new-instance v1, Lcom/twitter/android/media/imageeditor/aj;

    invoke-direct {v1, p0, p1, v0}, Lcom/twitter/android/media/imageeditor/aj;-><init>(Lcom/twitter/android/media/imageeditor/af;Lcom/twitter/android/media/widget/FilterFilmstripView;Landroid/view/View;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {p1, v1, v2, v3}, Lcom/twitter/android/media/widget/FilterFilmstripView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method a()Lcom/twitter/model/media/EditableImage;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->f:Lcom/twitter/model/media/EditableImage;

    return-object v0
.end method

.method a(F)V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->e:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/CroppableImageView;

    .line 232
    invoke-virtual {v0, p1}, Lcom/twitter/library/media/widget/CroppableImageView;->setCropAspectRatio(F)V

    .line 233
    return-void
.end method

.method a(I)V
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/twitter/android/media/imageeditor/af;->a(IZ)V

    .line 275
    return-void
.end method

.method a(ILcom/twitter/util/math/c;)V
    .locals 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->e:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/CroppableImageView;

    .line 290
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/af;->f:Lcom/twitter/model/media/EditableImage;

    .line 291
    if-eqz p1, :cond_2

    .line 292
    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/twitter/util/math/c;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, v1, Lcom/twitter/model/media/EditableImage;->f:Lcom/twitter/util/math/c;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/twitter/model/media/EditableImage;->f:Lcom/twitter/util/math/c;

    .line 293
    invoke-virtual {v2}, Lcom/twitter/util/math/c;->a()Z

    move-result v2

    if-nez v2, :cond_4

    .line 294
    :cond_1
    if-eqz p2, :cond_3

    .line 295
    :goto_1
    invoke-static {p1}, Lcom/twitter/media/util/ImageOrientation;->a(I)Lcom/twitter/media/util/ImageOrientation;

    move-result-object v1

    .line 296
    invoke-virtual {v1}, Lcom/twitter/media/util/ImageOrientation;->b()Lcom/twitter/media/util/ImageOrientation;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/twitter/media/util/ImageOrientation;->a(Lcom/twitter/util/math/c;)Lcom/twitter/util/math/c;

    move-result-object v1

    .line 297
    invoke-virtual {v0, v1}, Lcom/twitter/library/media/widget/CroppableImageView;->setImageSelection(Lcom/twitter/util/math/c;)V

    .line 301
    :goto_2
    invoke-virtual {v0, p1}, Lcom/twitter/library/media/widget/CroppableImageView;->setRotation(I)V

    .line 302
    return-void

    .line 291
    :cond_2
    iget p1, v1, Lcom/twitter/model/media/EditableImage;->e:I

    goto :goto_0

    .line 294
    :cond_3
    iget-object p2, v1, Lcom/twitter/model/media/EditableImage;->f:Lcom/twitter/util/math/c;

    goto :goto_1

    .line 299
    :cond_4
    sget-object v1, Lcom/twitter/util/math/c;->c:Lcom/twitter/util/math/c;

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/widget/CroppableImageView;->setImageSelection(Lcom/twitter/util/math/c;)V

    goto :goto_2
.end method

.method a(IZ)V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->e:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/CroppableImageView;

    .line 279
    invoke-virtual {v0, p1, p2}, Lcom/twitter/library/media/widget/CroppableImageView;->a(IZ)V

    .line 280
    return-void
.end method

.method a(Lcom/twitter/android/media/stickers/data/a;Lcom/twitter/android/composer/ComposerType;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 103
    iput p3, p0, Lcom/twitter/android/media/imageeditor/af;->j:I

    .line 104
    sget-object v0, Lcom/twitter/android/composer/ComposerType;->c:Lcom/twitter/android/composer/ComposerType;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    .line 105
    :goto_0
    invoke-static {v0}, Lcbd;->a(Z)Z

    move-result v0

    .line 106
    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->g:Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;

    new-instance v2, Lcom/twitter/android/media/imageeditor/ag;

    invoke-direct {v2, p0, p1}, Lcom/twitter/android/media/imageeditor/ag;-><init>(Lcom/twitter/android/media/imageeditor/af;Lcom/twitter/android/media/stickers/data/a;)V

    invoke-virtual {v0, v2}, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->setRetryStickerCatalogListener(Lcom/twitter/android/media/imageeditor/stickers/o;)V

    .line 113
    new-instance v0, Lcom/twitter/android/media/imageeditor/ah;

    invoke-direct {v0, p0}, Lcom/twitter/android/media/imageeditor/ah;-><init>(Lcom/twitter/android/media/imageeditor/af;)V

    invoke-virtual {p1, p0, v0}, Lcom/twitter/android/media/stickers/data/a;->a(Lavg;Lcom/twitter/android/media/stickers/data/g;)V

    .line 123
    :goto_1
    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/af;->r()V

    .line 124
    invoke-virtual {p0, v1}, Lcom/twitter/android/media/imageeditor/af;->b(Z)V

    .line 125
    return-void

    :cond_0
    move v0, v1

    .line 104
    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->g:Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->setRetryStickerCatalogListener(Lcom/twitter/android/media/imageeditor/stickers/o;)V

    goto :goto_1
.end method

.method public a(Lcom/twitter/android/media/widget/FilterFilmstripView;)V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->f:Lcom/twitter/model/media/EditableImage;

    invoke-virtual {p1}, Lcom/twitter/android/media/widget/FilterFilmstripView;->getSelectedFilter()I

    move-result v1

    iput v1, v0, Lcom/twitter/model/media/EditableImage;->c:I

    .line 360
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->f:Lcom/twitter/model/media/EditableImage;

    invoke-virtual {p1}, Lcom/twitter/android/media/widget/FilterFilmstripView;->getIntensity()F

    move-result v1

    iput v1, v0, Lcom/twitter/model/media/EditableImage;->d:F

    .line 361
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/media/imageeditor/af;->c(Z)V

    .line 362
    invoke-direct {p0, p1}, Lcom/twitter/android/media/imageeditor/af;->c(Lcom/twitter/android/media/widget/FilterFilmstripView;)V

    .line 363
    return-void
.end method

.method a(Lcom/twitter/media/filters/Filters;)V
    .locals 1

    .prologue
    .line 351
    if-eqz p1, :cond_0

    .line 352
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->d:Lcom/twitter/android/media/stickers/StickerFilteredImageView;

    invoke-virtual {v0, p1}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->setFilters(Lcom/twitter/media/filters/Filters;)V

    .line 354
    :cond_0
    iput-object p1, p0, Lcom/twitter/android/media/imageeditor/af;->h:Lcom/twitter/media/filters/Filters;

    .line 355
    return-void
.end method

.method public a(Lcpj;)V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->g:Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;

    iget v1, p0, Lcom/twitter/android/media/imageeditor/af;->j:I

    invoke-virtual {v0, p1, v1}, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->a(Lcpj;I)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->i:Landroid/support/v4/view/ViewPager;

    .line 200
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 50
    check-cast p1, Lcpj;

    invoke-virtual {p0, p1}, Lcom/twitter/android/media/imageeditor/af;->a(Lcpj;)V

    return-void
.end method

.method a(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 211
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->d:Lcom/twitter/android/media/stickers/StickerFilteredImageView;

    invoke-virtual {v0, v4}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->e:Lcom/twitter/media/ui/image/MediaImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setVisibility(I)V

    .line 213
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/af;->f:Lcom/twitter/model/media/EditableImage;

    .line 214
    if-nez p1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->e:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/CroppableImageView;

    .line 216
    invoke-virtual {v0}, Lcom/twitter/library/media/widget/CroppableImageView;->getImageRotation()I

    move-result v2

    .line 217
    invoke-static {v2}, Lcom/twitter/media/util/ImageOrientation;->a(I)Lcom/twitter/media/util/ImageOrientation;

    move-result-object v3

    .line 218
    invoke-virtual {v0}, Lcom/twitter/library/media/widget/CroppableImageView;->getNormalizedImageSelection()Lcom/twitter/util/math/c;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/twitter/media/util/ImageOrientation;->a(Lcom/twitter/util/math/c;)Lcom/twitter/util/math/c;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/model/media/EditableImage;->f:Lcom/twitter/util/math/c;

    .line 219
    iput v2, v1, Lcom/twitter/model/media/EditableImage;->e:I

    .line 220
    invoke-virtual {p0, v4}, Lcom/twitter/android/media/imageeditor/af;->c(Z)V

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    iget v0, v1, Lcom/twitter/model/media/EditableImage;->e:I

    iget-object v1, v1, Lcom/twitter/model/media/EditableImage;->f:Lcom/twitter/util/math/c;

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/media/imageeditor/af;->a(ILcom/twitter/util/math/c;)V

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/af;->s()V

    .line 96
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->e:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->f()V

    .line 97
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->d:Lcom/twitter/android/media/stickers/StickerFilteredImageView;

    invoke-virtual {v0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->f()V

    .line 98
    return-void
.end method

.method public b(Lcom/twitter/android/media/widget/FilterFilmstripView;)V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->f:Lcom/twitter/model/media/EditableImage;

    invoke-virtual {p1}, Lcom/twitter/android/media/widget/FilterFilmstripView;->getIntensity()F

    move-result v1

    iput v1, v0, Lcom/twitter/model/media/EditableImage;->d:F

    .line 409
    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/af;->l()V

    .line 410
    return-void
.end method

.method b(Z)V
    .locals 2

    .prologue
    .line 236
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/af;->e:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/media/ui/image/MediaImageView;->setScaleFactor(F)V

    .line 237
    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/af;->l()V

    .line 238
    return-void

    .line 236
    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0
.end method

.method c()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->e:Lcom/twitter/media/ui/image/MediaImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->g:Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->setVisibility(I)V

    .line 132
    return-void
.end method

.method c(Z)V
    .locals 3

    .prologue
    .line 332
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 333
    if-nez v0, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->f:Lcom/twitter/model/media/EditableImage;

    .line 337
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/af;->d:Lcom/twitter/android/media/stickers/StickerFilteredImageView;

    invoke-virtual {v1, v0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->a(Lcom/twitter/model/media/EditableImage;)Z

    .line 338
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/af;->d:Lcom/twitter/android/media/stickers/StickerFilteredImageView;

    iget v2, v0, Lcom/twitter/model/media/EditableImage;->d:F

    invoke-virtual {v1, v2}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->setFilterIntensity(F)V

    .line 339
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/af;->d:Lcom/twitter/android/media/stickers/StickerFilteredImageView;

    iget v2, v0, Lcom/twitter/model/media/EditableImage;->c:I

    iget-boolean v0, v0, Lcom/twitter/model/media/EditableImage;->b:Z

    invoke-virtual {v1, v2, v0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->a(IZ)V

    .line 340
    if-eqz p1, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/af;->l()V

    goto :goto_0
.end method

.method d()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 135
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->e:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->g:Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->setVisibility(I)V

    .line 137
    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/af;->l()V

    .line 138
    return-void
.end method

.method e()Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->g:Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;

    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/stickers/StickerSelectorView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method f()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->d:Lcom/twitter/android/media/stickers/StickerFilteredImageView;

    invoke-virtual {v0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->a()V

    .line 146
    return-void
.end method

.method g()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->i:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->i:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method h()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcpo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->d:Lcom/twitter/android/media/stickers/StickerFilteredImageView;

    invoke-virtual {v0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->getStickers()Ljava/util/ArrayList;

    move-result-object v1

    .line 155
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->f:Lcom/twitter/model/media/EditableImage;

    iget v4, v0, Lcom/twitter/model/media/EditableImage;->e:I

    .line 160
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->f:Lcom/twitter/model/media/EditableImage;

    iget-object v0, v0, Lcom/twitter/model/media/EditableImage;->k:Lcom/twitter/media/model/MediaFile;

    check-cast v0, Lcom/twitter/media/model/ImageFile;

    iget-object v0, v0, Lcom/twitter/media/model/ImageFile;->e:Lcom/twitter/util/math/Size;

    invoke-virtual {v0}, Lcom/twitter/util/math/Size;->g()F

    move-result v2

    .line 161
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->f:Lcom/twitter/model/media/EditableImage;

    iget-object v3, v0, Lcom/twitter/model/media/EditableImage;->f:Lcom/twitter/util/math/c;

    .line 165
    if-nez v3, :cond_2

    .line 166
    rem-int/lit16 v0, v4, 0xb4

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, v2

    :goto_1
    move v5, v0

    .line 175
    :goto_2
    invoke-static {v1}, Lcom/twitter/android/media/stickers/i;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 176
    new-instance v0, Lcom/twitter/android/media/imageeditor/ai;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/media/imageeditor/ai;-><init>(Lcom/twitter/android/media/imageeditor/af;FLcom/twitter/util/math/c;IF)V

    invoke-static {v6, v0}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/lang/Iterable;Ldau;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 166
    goto :goto_1

    .line 170
    :cond_2
    rem-int/lit16 v0, v4, 0xb4

    if-nez v0, :cond_3

    .line 171
    invoke-virtual {v3}, Lcom/twitter/util/math/c;->d()F

    move-result v0

    invoke-virtual {v3}, Lcom/twitter/util/math/c;->c()F

    move-result v5

    mul-float/2addr v5, v2

    div-float/2addr v0, v5

    :goto_3
    move v5, v0

    .line 172
    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lcom/twitter/util/math/c;->d()F

    move-result v0

    mul-float/2addr v0, v2

    invoke-virtual {v3}, Lcom/twitter/util/math/c;->c()F

    move-result v5

    div-float/2addr v0, v5

    goto :goto_3
.end method

.method public i()I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->d:Lcom/twitter/android/media/stickers/StickerFilteredImageView;

    invoke-virtual {v0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->getStickers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method j()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->d:Lcom/twitter/android/media/stickers/StickerFilteredImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->setVisibility(I)V

    .line 206
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/media/imageeditor/af;->b(Z)V

    .line 207
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->e:Lcom/twitter/media/ui/image/MediaImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setVisibility(I)V

    .line 208
    return-void
.end method

.method k()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->f:Lcom/twitter/model/media/EditableImage;

    iget-object v0, v0, Lcom/twitter/model/media/EditableImage;->k:Lcom/twitter/media/model/MediaFile;

    check-cast v0, Lcom/twitter/media/model/ImageFile;

    iget-object v0, v0, Lcom/twitter/media/model/ImageFile;->e:Lcom/twitter/util/math/Size;

    invoke-virtual {v0}, Lcom/twitter/util/math/Size;->g()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/media/imageeditor/af;->a(F)V

    .line 228
    return-void
.end method

.method l()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 241
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 242
    if-nez v0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/af;->f:Lcom/twitter/model/media/EditableImage;

    invoke-virtual {v1}, Lcom/twitter/model/media/EditableImage;->e()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v1

    const/4 v2, 0x1

    .line 246
    invoke-virtual {v1, v2}, Lcom/twitter/media/request/b;->a(Z)Lcom/twitter/media/request/b;

    move-result-object v1

    new-instance v2, Lcka;

    .line 248
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/twitter/android/media/imageeditor/af;->f:Lcom/twitter/model/media/EditableImage;

    iget v3, v3, Lcom/twitter/model/media/EditableImage;->c:I

    iget-object v4, p0, Lcom/twitter/android/media/imageeditor/af;->f:Lcom/twitter/model/media/EditableImage;

    iget-boolean v4, v4, Lcom/twitter/model/media/EditableImage;->b:Z

    iget-object v5, p0, Lcom/twitter/android/media/imageeditor/af;->f:Lcom/twitter/model/media/EditableImage;

    iget v5, v5, Lcom/twitter/model/media/EditableImage;->d:F

    invoke-direct {v2, v0, v3, v4, v5}, Lcka;-><init>(Landroid/content/Context;IZF)V

    .line 247
    invoke-virtual {v1, v2}, Lcom/twitter/media/request/b;->a(Lckb;)Lcom/twitter/media/request/b;

    move-result-object v1

    .line 252
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->f:Lcom/twitter/model/media/EditableImage;

    iget-object v2, v0, Lcom/twitter/model/media/EditableImage;->h:Ljava/util/List;

    .line 253
    invoke-static {v2}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    new-instance v3, Lcdv;

    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->f:Lcom/twitter/model/media/EditableImage;

    iget-object v0, v0, Lcom/twitter/model/media/EditableImage;->k:Lcom/twitter/media/model/MediaFile;

    check-cast v0, Lcom/twitter/media/model/ImageFile;

    iget-object v0, v0, Lcom/twitter/media/model/ImageFile;->e:Lcom/twitter/util/math/Size;

    .line 255
    invoke-virtual {v0}, Lcom/twitter/util/math/Size;->g()F

    move-result v0

    invoke-direct {v3, v0, v6, v2}, Lcdv;-><init>(FILjava/util/List;)V

    .line 254
    invoke-virtual {v1, v3}, Lcom/twitter/media/request/b;->a(Lcom/twitter/media/request/process/a;)Lcom/twitter/media/request/b;

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->e:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0, v1, v6}, Lcom/twitter/media/ui/image/MediaImageView;->a(Lcom/twitter/media/request/b;Z)Z

    goto :goto_0
.end method

.method m()Z
    .locals 1

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/af;->n()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method n()Z
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->e:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method o()I
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->e:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/CroppableImageView;

    .line 270
    invoke-virtual {v0}, Lcom/twitter/library/media/widget/CroppableImageView;->getImageRotation()I

    move-result v0

    return v0
.end method

.method p()Lcom/twitter/util/math/c;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->e:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/CroppableImageView;

    .line 285
    invoke-virtual {v0}, Lcom/twitter/library/media/widget/CroppableImageView;->getNormalizedImageSelection()Lcom/twitter/util/math/c;

    move-result-object v0

    return-object v0
.end method

.method q()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->d:Lcom/twitter/android/media/stickers/StickerFilteredImageView;

    invoke-virtual {v0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->c()V

    .line 308
    return-void
.end method

.method r()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->d:Lcom/twitter/android/media/stickers/StickerFilteredImageView;

    invoke-virtual {v0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->d()V

    .line 312
    return-void
.end method

.method s()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->d:Lcom/twitter/android/media/stickers/StickerFilteredImageView;

    invoke-virtual {v0}, Lcom/twitter/android/media/stickers/StickerFilteredImageView;->g()V

    .line 316
    return-void
.end method

.method t()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->h:Lcom/twitter/media/filters/Filters;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->h:Lcom/twitter/media/filters/Filters;

    invoke-virtual {v0}, Lcom/twitter/media/filters/Filters;->b()V

    .line 322
    :cond_0
    return-void
.end method

.method u()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 325
    iget-object v2, p0, Lcom/twitter/android/media/imageeditor/af;->f:Lcom/twitter/model/media/EditableImage;

    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->f:Lcom/twitter/model/media/EditableImage;

    iget-boolean v0, v0, Lcom/twitter/model/media/EditableImage;->b:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v2, Lcom/twitter/model/media/EditableImage;->b:Z

    .line 326
    invoke-virtual {p0, v1}, Lcom/twitter/android/media/imageeditor/af;->c(Z)V

    .line 327
    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/af;->l()V

    .line 328
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->f:Lcom/twitter/model/media/EditableImage;

    iget-boolean v0, v0, Lcom/twitter/model/media/EditableImage;->b:Z

    return v0

    .line 325
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method v()Lcom/twitter/media/filters/Filters;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/af;->h:Lcom/twitter/media/filters/Filters;

    return-object v0
.end method
