.class public Lcom/twitter/library/widget/BaseUserView;
.super Landroid/widget/RelativeLayout;
.source "Twttr"

# interfaces
.implements Lcom/twitter/media/ui/image/g;


# instance fields
.field protected final b:I

.field protected final c:I

.field protected final d:I

.field protected final e:I

.field protected final e_:I

.field protected f:J

.field protected g:Ljava/lang/String;

.field protected h:Landroid/widget/TextView;

.field protected i:Landroid/widget/TextView;

.field protected j:Landroid/widget/TextView;

.field protected k:Landroid/widget/TextView;

.field protected l:Landroid/widget/TextView;

.field protected m:Lcom/twitter/library/media/widget/UserImageView;

.field protected n:Landroid/widget/ImageView;

.field protected o:Landroid/widget/ImageView;

.field protected p:Landroid/widget/ImageView;

.field protected q:Landroid/view/View;

.field private final r:I

.field private final s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/library/widget/BaseUserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 60
    sget v0, Lbjs;->userViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/library/widget/BaseUserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    sget-object v0, Lbkc;->UserView:[I

    .line 66
    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    sget v1, Lbkc;->UserView_promotedDrawable:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/library/widget/BaseUserView;->r:I

    .line 68
    sget v1, Lbkc;->UserView_politicalDrawable:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/library/widget/BaseUserView;->s:I

    .line 69
    sget v1, Lbkc;->UserView_actionButtonPadding:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 70
    sget v2, Lbkc;->UserView_actionButtonPaddingLeft:I

    .line 71
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/twitter/library/widget/BaseUserView;->e_:I

    .line 72
    sget v2, Lbkc;->UserView_actionButtonPaddingTop:I

    .line 73
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/twitter/library/widget/BaseUserView;->b:I

    .line 74
    sget v2, Lbkc;->UserView_actionButtonPaddingRight:I

    .line 75
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/twitter/library/widget/BaseUserView;->c:I

    .line 76
    sget v2, Lbkc;->UserView_actionButtonPaddingBottom:I

    .line 77
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/library/widget/BaseUserView;->d:I

    .line 78
    sget v1, Lbkc;->UserView_profileTextColor:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/library/widget/BaseUserView;->e:I

    .line 79
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    return-void
.end method

.method public static a(Lcss;ZLandroid/widget/TextView;II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 227
    if-eqz p0, :cond_3

    .line 228
    invoke-virtual {p0}, Lcss;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 251
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcss;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    :goto_1
    if-eqz p1, :cond_2

    .line 240
    invoke-virtual {p2, v1, v1, p3, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 244
    :goto_2
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move p3, p4

    .line 236
    goto :goto_1

    .line 242
    :cond_2
    invoke-virtual {p2, p3, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_2

    .line 248
    :cond_3
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->l:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    return-void
.end method

.method public a(Lcss;Z)V
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->j:Landroid/widget/TextView;

    iget v1, p0, Lcom/twitter/library/widget/BaseUserView;->s:I

    iget v2, p0, Lcom/twitter/library/widget/BaseUserView;->r:I

    invoke-static {p1, p2, v0, v1, v2}, Lcom/twitter/library/widget/BaseUserView;->a(Lcss;ZLandroid/widget/TextView;II)V

    .line 223
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/twitter/model/core/bm;)V
    .locals 3

    .prologue
    .line 141
    iget-object v1, p0, Lcom/twitter/library/widget/BaseUserView;->l:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    if-eqz p2, :cond_2

    iget-object v0, p2, Lcom/twitter/model/core/bm;->c:Lcom/twitter/model/core/j;

    invoke-virtual {v0}, Lcom/twitter/model/core/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/twitter/model/core/bm;->e:Lcom/twitter/model/core/j;

    invoke-virtual {v0}, Lcom/twitter/model/core/j;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->l:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/twitter/library/view/o;->a(Ljava/lang/CharSequence;)Lcom/twitter/library/view/o;

    move-result-object v1

    .line 144
    invoke-virtual {v1, p2}, Lcom/twitter/library/view/o;->a(Lcom/twitter/model/core/bm;)Lcom/twitter/library/view/o;

    move-result-object v1

    iget v2, p0, Lcom/twitter/library/widget/BaseUserView;->e:I

    .line 145
    invoke-virtual {v1, v2}, Lcom/twitter/library/view/o;->a(I)Lcom/twitter/library/view/o;

    move-result-object v1

    .line 146
    invoke-virtual {v1}, Lcom/twitter/library/view/o;->a()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :goto_1
    return-void

    .line 141
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 129
    iput-object p1, p0, Lcom/twitter/library/widget/BaseUserView;->g:Ljava/lang/String;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {p2}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/twitter/library/widget/BaseUserView;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/twitter/library/widget/BaseUserView;->h:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v1, p0, Lcom/twitter/library/widget/BaseUserView;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 158
    iget-object v1, p0, Lcom/twitter/library/widget/BaseUserView;->l:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    return-void

    .line 158
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public aP_()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->m:Lcom/twitter/library/media/widget/UserImageView;

    invoke-virtual {v0}, Lcom/twitter/library/media/widget/UserImageView;->aP_()V

    .line 117
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->n:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isActivated()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->m:Lcom/twitter/library/media/widget/UserImageView;

    invoke-virtual {v0}, Lcom/twitter/library/media/widget/UserImageView;->f()V

    .line 122
    return-void
.end method

.method public getBestName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getImageView()Lcom/twitter/library/media/widget/UserImageView;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->m:Lcom/twitter/library/media/widget/UserImageView;

    return-object v0
.end method

.method public getPromotedContent()Lcss;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcss;

    .line 261
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 265
    iget-wide v0, p0, Lcom/twitter/library/widget/BaseUserView;->f:J

    return-wide v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 85
    sget v0, Lbjw;->screenname_item:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/BaseUserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->i:Landroid/widget/TextView;

    .line 86
    sget v0, Lbjw;->protected_item:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/BaseUserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->o:Landroid/widget/ImageView;

    .line 87
    sget v0, Lbjw;->verified_item:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/BaseUserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->p:Landroid/widget/ImageView;

    .line 88
    sget v0, Lbjw;->name_item:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/BaseUserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->h:Landroid/widget/TextView;

    .line 89
    sget v0, Lbjw;->user_image:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/BaseUserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/UserImageView;

    iput-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->m:Lcom/twitter/library/media/widget/UserImageView;

    .line 90
    sget v0, Lbjw;->extra_info:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/BaseUserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->k:Landroid/widget/TextView;

    .line 91
    sget v0, Lbjw;->promoted:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/BaseUserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->j:Landroid/widget/TextView;

    .line 92
    sget v0, Lbjw;->profile_description_item:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/BaseUserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->l:Landroid/widget/TextView;

    .line 93
    sget v0, Lbjw;->muted_item:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/BaseUserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->n:Landroid/widget/ImageView;

    .line 94
    sget v0, Lbjw;->follows_you:I

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/BaseUserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->q:Landroid/view/View;

    .line 95
    return-void
.end method

.method public setExtraInfo(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 213
    invoke-static {p1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->k:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setFollowsYou(Z)V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->q:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 187
    iget-object v1, p0, Lcom/twitter/library/widget/BaseUserView;->q:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 189
    :cond_0
    return-void

    .line 187
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setMuted(Z)V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 201
    if-eqz p1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->n:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->n:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setProfileDescriptionMaxLines(I)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->l:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 169
    iget-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 171
    :cond_0
    return-void
.end method

.method public setProfileDescriptionTextSize(F)V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->l:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 164
    return-void
.end method

.method public setProtected(Z)V
    .locals 2

    .prologue
    .line 178
    if-eqz p1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->o:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->o:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setUser(Lcom/twitter/model/core/TwitterUser;)V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->m:Lcom/twitter/library/media/widget/UserImageView;

    invoke-virtual {v0, p1}, Lcom/twitter/library/media/widget/UserImageView;->a(Lcom/twitter/model/core/TwitterUser;)Z

    .line 103
    iget-wide v0, p1, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-virtual {p0, v0, v1}, Lcom/twitter/library/widget/BaseUserView;->setUserId(J)V

    .line 104
    iget-object v0, p1, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/twitter/library/widget/BaseUserView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-boolean v0, p1, Lcom/twitter/model/core/TwitterUser;->n:Z

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/BaseUserView;->setVerified(Z)V

    .line 106
    iget-boolean v0, p1, Lcom/twitter/model/core/TwitterUser;->m:Z

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/BaseUserView;->setProtected(Z)V

    .line 107
    iget v0, p1, Lcom/twitter/model/core/TwitterUser;->T:I

    invoke-static {v0}, Lcom/twitter/model/core/p;->c(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twitter/library/widget/BaseUserView;->setFollowsYou(Z)V

    .line 108
    return-void
.end method

.method public setUserId(J)V
    .locals 1

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/twitter/library/widget/BaseUserView;->f:J

    .line 99
    return-void
.end method

.method public setUserImageUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->m:Lcom/twitter/library/media/widget/UserImageView;

    invoke-virtual {v0, p1}, Lcom/twitter/library/media/widget/UserImageView;->a(Ljava/lang/String;)Z

    .line 112
    return-void
.end method

.method public setVerified(Z)V
    .locals 2

    .prologue
    .line 192
    if-eqz p1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->p:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/widget/BaseUserView;->p:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
