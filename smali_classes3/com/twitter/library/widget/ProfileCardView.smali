.class public Lcom/twitter/library/widget/ProfileCardView;
.super Lcom/twitter/library/widget/UserSocialView;
.source "Twttr"


# instance fields
.field private final u:F

.field private v:Lcom/twitter/media/ui/image/MediaImageView;

.field private final w:I

.field private final x:I

.field private final y:I
    .annotation build Landroid/support/annotation/DimenRes;
    .end annotation
.end field

.field private final z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/twitter/library/widget/UserSocialView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-virtual {p0}, Lcom/twitter/library/widget/ProfileCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 34
    sget v1, Lbjt;->twitter_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/twitter/library/widget/ProfileCardView;->w:I

    .line 35
    sget v1, Lbju;->profile_card_banner_image_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/twitter/library/widget/ProfileCardView;->x:I

    .line 38
    sget-object v1, Lbkc;->ProfileCardView:[I

    invoke-virtual {p1, p2, v1, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 39
    sget v2, Lbkc;->ProfileCardView_profileUserImageStrokeWidth:I

    sget v3, Lbju;->profile_card_user_image_border_stroke:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/twitter/library/widget/ProfileCardView;->y:I

    .line 41
    sget v2, Lbkc;->ProfileCardView_profileDescriptionFontSize:I

    .line 42
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 43
    sget v3, Lbkc;->ProfileCardView_profileImageTopMarginRatio:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/twitter/library/widget/ProfileCardView;->u:F

    .line 46
    if-lez v2, :cond_0

    .line 47
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/twitter/library/widget/ProfileCardView;->z:F

    .line 48
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    return-void

    .line 47
    :cond_0
    sget v0, Lcom/twitter/library/util/al;->a:F

    goto :goto_0
.end method

.method private k()V
    .locals 5

    .prologue
    .line 73
    iget-object v0, p0, Lcom/twitter/library/widget/ProfileCardView;->m:Lcom/twitter/library/media/widget/UserImageView;

    iget v1, p0, Lcom/twitter/library/widget/ProfileCardView;->y:I

    sget v2, Lbjt;->app_background:I

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/media/widget/UserImageView;->b(II)V

    .line 76
    iget-object v0, p0, Lcom/twitter/library/widget/ProfileCardView;->m:Lcom/twitter/library/media/widget/UserImageView;

    invoke-virtual {v0}, Lcom/twitter/library/media/widget/UserImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 77
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/twitter/library/widget/ProfileCardView;->u:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 78
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 80
    iget-object v1, p0, Lcom/twitter/library/widget/ProfileCardView;->m:Lcom/twitter/library/media/widget/UserImageView;

    invoke-virtual {v1, v0}, Lcom/twitter/library/media/widget/UserImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    invoke-direct {p0}, Lcom/twitter/library/widget/ProfileCardView;->l()V

    .line 83
    return-void
.end method

.method private l()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 88
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 89
    const/16 v1, 0x8

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/twitter/library/widget/ProfileCardView;->x:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/twitter/library/widget/ProfileCardView;->x:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/twitter/library/widget/ProfileCardView;->x:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/twitter/library/widget/ProfileCardView;->x:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x4

    aput v4, v1, v2

    const/4 v2, 0x5

    aput v4, v1, v2

    const/4 v2, 0x6

    aput v4, v1, v2

    const/4 v2, 0x7

    aput v4, v1, v2

    .line 91
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 94
    iget-object v1, p0, Lcom/twitter/library/widget/ProfileCardView;->v:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v1, v0}, Lcom/twitter/media/ui/image/MediaImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 95
    return-void
.end method

.method private setBannerImageContent(Lcom/twitter/model/core/TwitterUser;)V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/twitter/library/widget/ProfileCardView;->v:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 125
    iget v1, p1, Lcom/twitter/model/core/TwitterUser;->j:I

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/twitter/model/core/TwitterUser;->j:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 126
    iget-object v1, p0, Lcom/twitter/library/widget/ProfileCardView;->v:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v1, v0}, Lcom/twitter/media/ui/image/MediaImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v0, p1, Lcom/twitter/model/core/TwitterUser;->G:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/twitter/library/widget/ProfileCardView;->v:Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v1, p1, Lcom/twitter/model/core/TwitterUser;->G:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v1

    sget-object v2, Lcom/twitter/library/media/util/HeaderImageVariant;->j:Lcom/twitter/media/request/d;

    .line 129
    invoke-virtual {v1, v2}, Lcom/twitter/media/request/b;->a(Lcom/twitter/media/request/d;)Lcom/twitter/media/request/b;

    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 133
    :goto_1
    return-void

    .line 125
    :cond_0
    iget v1, p0, Lcom/twitter/library/widget/ProfileCardView;->w:I

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/widget/ProfileCardView;->v:Lcom/twitter/media/ui/image/MediaImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    goto :goto_1
.end method


# virtual methods
.method public c()V
    .locals 4

    .prologue
    .line 54
    sget v0, Lbjw;->user_info_layout:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/ProfileCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 56
    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 57
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    sget v0, Lbjw;->spacer:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/ProfileCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/twitter/library/widget/ProfileCardView;->m:Lcom/twitter/library/media/widget/UserImageView;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/twitter/library/widget/ProfileCardView;->m:Lcom/twitter/library/media/widget/UserImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/widget/UserImageView;->setVisibility(I)V

    .line 114
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/twitter/library/widget/UserSocialView;->onFinishInflate()V

    .line 64
    sget v0, Lbjw;->banner_image:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/ProfileCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    iput-object v0, p0, Lcom/twitter/library/widget/ProfileCardView;->v:Lcom/twitter/media/ui/image/MediaImageView;

    .line 65
    invoke-direct {p0}, Lcom/twitter/library/widget/ProfileCardView;->k()V

    .line 66
    return-void
.end method

.method public setUser(Lcom/twitter/model/core/TwitterUser;)V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/twitter/library/widget/UserSocialView;->setUser(Lcom/twitter/model/core/TwitterUser;)V

    .line 104
    invoke-direct {p0, p1}, Lcom/twitter/library/widget/ProfileCardView;->setBannerImageContent(Lcom/twitter/model/core/TwitterUser;)V

    .line 105
    iget-object v0, p1, Lcom/twitter/model/core/TwitterUser;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/model/core/TwitterUser;->D:Lcom/twitter/model/core/bm;

    invoke-virtual {p0, v0, v1}, Lcom/twitter/library/widget/ProfileCardView;->a(Ljava/lang/String;Lcom/twitter/model/core/bm;)V

    .line 106
    iget v0, p0, Lcom/twitter/library/widget/ProfileCardView;->z:F

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/ProfileCardView;->setProfileDescriptionTextSize(F)V

    .line 107
    iget v0, p1, Lcom/twitter/model/core/TwitterUser;->T:I

    invoke-static {v0}, Lcom/twitter/model/core/p;->a(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/ProfileCardView;->setIsFollowing(Z)V

    .line 108
    return-void
.end method
