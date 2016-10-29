.class public Lcom/twitter/library/widget/UserSocialView;
.super Lcom/twitter/library/widget/UserView;
.source "Twttr"


# instance fields
.field private u:Lcom/twitter/library/widget/SocialBylineView;

.field private v:F

.field private w:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 27
    sget v0, Lbjs;->userViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/library/widget/UserSocialView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/twitter/library/widget/UserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    sget-object v0, Lbkc;->UserSocialView:[I

    const/4 v1, 0x0

    .line 34
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    sget v1, Lbkc;->UserSocialView_contentSize:I

    .line 37
    invoke-static {}, Lcom/twitter/library/util/al;->a()F

    move-result v2

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/twitter/library/widget/UserSocialView;->v:F

    .line 38
    sget v1, Lbkc;->UserSocialView_bylineSize:I

    .line 39
    invoke-static {}, Lcom/twitter/library/util/al;->b()F

    move-result v2

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/twitter/library/widget/UserSocialView;->w:F

    .line 40
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    return-void
.end method

.method private a(FF)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 183
    iget-object v0, p0, Lcom/twitter/library/widget/UserSocialView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 184
    iget-object v0, p0, Lcom/twitter/library/widget/UserSocialView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 185
    iget-object v0, p0, Lcom/twitter/library/widget/UserSocialView;->u:Lcom/twitter/library/widget/SocialBylineView;

    invoke-virtual {v0, p2}, Lcom/twitter/library/widget/SocialBylineView;->setLabelSize(F)V

    .line 187
    iget-object v0, p0, Lcom/twitter/library/widget/UserSocialView;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/twitter/library/widget/UserSocialView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/widget/UserSocialView;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/twitter/library/widget/UserSocialView;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 193
    :cond_1
    return-void
.end method


# virtual methods
.method public a(IILjava/lang/String;IZ)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 75
    iget-object v0, p0, Lcom/twitter/library/widget/UserSocialView;->u:Lcom/twitter/library/widget/SocialBylineView;

    .line 76
    if-lez p2, :cond_1

    invoke-static {p3}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {v0, p2}, Lcom/twitter/library/widget/SocialBylineView;->setIcon(I)V

    .line 78
    sparse-switch p1, :sswitch_data_0

    .line 102
    :goto_0
    invoke-virtual {v0, v5}, Lcom/twitter/library/widget/SocialBylineView;->setVisibility(I)V

    .line 103
    invoke-virtual {v0, p5}, Lcom/twitter/library/widget/SocialBylineView;->setRenderRTL(Z)V

    .line 107
    :goto_1
    return-void

    .line 80
    :sswitch_0
    if-lez p4, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/twitter/library/widget/UserSocialView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lbkb;->social_follow_and_more_follow:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v5

    .line 83
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 82
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/SocialBylineView;->setLabel(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/library/widget/UserSocialView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lbkb;->social_follow_and_follow:I

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p3, v3, v5

    .line 86
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/SocialBylineView;->setLabel(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 91
    :sswitch_1
    invoke-virtual {p0}, Lcom/twitter/library/widget/UserSocialView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lbkb;->social_both_follow:I

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p3, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/SocialBylineView;->setLabel(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 95
    :sswitch_2
    invoke-virtual {p0}, Lcom/twitter/library/widget/UserSocialView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lbkb;->social_provides_support:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/SocialBylineView;->setLabel(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 105
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/SocialBylineView;->setVisibility(I)V

    goto :goto_1

    .line 78
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x28 -> :sswitch_0
        0x2d -> :sswitch_2
    .end sparse-switch
.end method

.method public a(IIZ)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v2, p0, Lcom/twitter/library/widget/UserSocialView;->u:Lcom/twitter/library/widget/SocialBylineView;

    .line 119
    iget-object v0, p0, Lcom/twitter/library/widget/UserSocialView;->t:Lcom/twitter/library/widget/ActionButton;

    invoke-virtual {v0}, Lcom/twitter/library/widget/ActionButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 121
    :goto_0
    invoke-static {p2}, Lcom/twitter/model/core/p;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/twitter/library/widget/UserSocialView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lbkb;->social_following:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    :goto_1
    if-lez p1, :cond_3

    if-eqz v0, :cond_3

    .line 129
    invoke-virtual {v2, p1}, Lcom/twitter/library/widget/SocialBylineView;->setIcon(I)V

    .line 130
    invoke-virtual {v2, v0}, Lcom/twitter/library/widget/SocialBylineView;->setLabel(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {v2, v1}, Lcom/twitter/library/widget/SocialBylineView;->setVisibility(I)V

    .line 132
    invoke-virtual {v2, p3}, Lcom/twitter/library/widget/SocialBylineView;->setRenderRTL(Z)V

    .line 136
    :goto_2
    return-void

    :cond_0
    move v0, v1

    .line 119
    goto :goto_0

    .line 123
    :cond_1
    invoke-static {p2}, Lcom/twitter/model/core/p;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {p0}, Lcom/twitter/library/widget/UserSocialView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lbkb;->social_follows_you:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 126
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 134
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Lcom/twitter/library/widget/SocialBylineView;->setVisibility(I)V

    goto :goto_2
.end method

.method public a(Lcom/twitter/model/core/TwitterSocialProof;IZ)V
    .locals 6

    .prologue
    .line 56
    if-eqz p1, :cond_1

    .line 57
    iget v1, p1, Lcom/twitter/model/core/TwitterSocialProof;->b:I

    iget-object v3, p1, Lcom/twitter/model/core/TwitterSocialProof;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/twitter/model/core/TwitterSocialProof;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v4, p1, Lcom/twitter/model/core/TwitterSocialProof;->i:I

    :goto_0
    move-object v0, p0

    move v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/library/widget/UserSocialView;->a(IILjava/lang/String;IZ)V

    .line 62
    :goto_1
    return-void

    .line 57
    :cond_0
    iget v0, p1, Lcom/twitter/model/core/TwitterSocialProof;->i:I

    add-int/lit8 v4, v0, 0x1

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/widget/UserSocialView;->u:Lcom/twitter/library/widget/SocialBylineView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/SocialBylineView;->setVisibility(I)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;IZ)V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/twitter/library/widget/UserSocialView;->u:Lcom/twitter/library/widget/SocialBylineView;

    .line 149
    invoke-static {p1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    if-lez p2, :cond_0

    .line 151
    invoke-virtual {v0, p2}, Lcom/twitter/library/widget/SocialBylineView;->setIcon(I)V

    .line 155
    :goto_0
    invoke-virtual {v0, p1}, Lcom/twitter/library/widget/SocialBylineView;->setLabel(Ljava/lang/CharSequence;)V

    .line 156
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/SocialBylineView;->setVisibility(I)V

    .line 157
    invoke-virtual {v0, p3}, Lcom/twitter/library/widget/SocialBylineView;->setRenderRTL(Z)V

    .line 161
    :goto_1
    return-void

    .line 153
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/SocialBylineView;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 159
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/SocialBylineView;->setVisibility(I)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/twitter/library/widget/UserSocialView;->a(Ljava/lang/String;IZ)V

    .line 145
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 196
    invoke-virtual {p0}, Lcom/twitter/library/widget/UserSocialView;->getImageView()Lcom/twitter/library/media/widget/UserImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/widget/UserImageView;->setSize(I)V

    .line 197
    iget-object v0, p0, Lcom/twitter/library/widget/UserSocialView;->u:Lcom/twitter/library/widget/SocialBylineView;

    invoke-static {v1}, Lcom/twitter/library/media/manager/UserImageRequest;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/SocialBylineView;->setMinIconWidth(I)V

    .line 198
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Lcom/twitter/library/widget/UserView;->onFinishInflate()V

    .line 46
    sget v0, Lbjw;->social_byline:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/UserSocialView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/SocialBylineView;

    iput-object v0, p0, Lcom/twitter/library/widget/UserSocialView;->u:Lcom/twitter/library/widget/SocialBylineView;

    .line 47
    iget v0, p0, Lcom/twitter/library/widget/UserSocialView;->v:F

    iget v1, p0, Lcom/twitter/library/widget/UserSocialView;->w:F

    invoke-direct {p0, v0, v1}, Lcom/twitter/library/widget/UserSocialView;->a(FF)V

    .line 48
    return-void
.end method

.method public setContentSize(F)V
    .locals 1

    .prologue
    .line 169
    iput p1, p0, Lcom/twitter/library/widget/UserSocialView;->v:F

    .line 170
    invoke-static {p1}, Lcom/twitter/library/util/al;->a(F)F

    move-result v0

    .line 171
    iput v0, p0, Lcom/twitter/library/widget/UserSocialView;->w:F

    .line 173
    invoke-direct {p0, p1, v0}, Lcom/twitter/library/widget/UserSocialView;->a(FF)V

    .line 174
    return-void
.end method

.method public setScreenNameColor(I)V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/twitter/library/widget/UserSocialView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    return-void
.end method

.method public setUserImageSize(I)V
    .locals 2

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/twitter/library/widget/UserSocialView;->getImageView()Lcom/twitter/library/media/widget/UserImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/library/media/widget/UserImageView;->setSize(I)V

    .line 202
    iget-object v0, p0, Lcom/twitter/library/widget/UserSocialView;->u:Lcom/twitter/library/widget/SocialBylineView;

    invoke-static {p1}, Lcom/twitter/library/media/manager/UserImageRequest;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/SocialBylineView;->setMinIconWidth(I)V

    .line 203
    return-void
.end method
