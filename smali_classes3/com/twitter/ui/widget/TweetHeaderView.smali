.class public Lcom/twitter/ui/widget/TweetHeaderView;
.super Lcom/twitter/ui/widget/TouchableView;
.source "Twttr"


# static fields
.field private static final a:[I


# instance fields
.field private A:Landroid/graphics/drawable/Drawable;

.field private B:Landroid/graphics/drawable/Drawable;

.field private C:I

.field private D:I

.field private E:I

.field private F:F

.field private G:F

.field private H:F

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Z

.field private final b:Z

.field private final c:Landroid/graphics/Rect;

.field private final d:Landroid/graphics/Rect;

.field private final e:Landroid/text/TextPaint;

.field private f:Landroid/view/View$OnClickListener;

.field private g:F

.field private h:I

.field private i:I

.field private j:Landroid/content/res/ColorStateList;

.field private k:Landroid/content/res/ColorStateList;

.field private l:Landroid/content/res/ColorStateList;

.field private m:Landroid/content/res/ColorStateList;

.field private n:Landroid/content/res/ColorStateList;

.field private o:Landroid/content/res/ColorStateList;

.field private p:Lcom/twitter/ui/widget/ax;

.field private q:Landroid/text/StaticLayout;

.field private r:I

.field private s:Landroid/text/StaticLayout;

.field private t:I

.field private u:Landroid/text/StaticLayout;

.field private v:I

.field private w:I

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:Lcom/twitter/ui/widget/aj;

.field private z:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcvr;->state_name_username_pressed:I

    aput v2, v0, v1

    sput-object v0, Lcom/twitter/ui/widget/TweetHeaderView;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/ui/widget/TweetHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/ui/widget/TouchableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-static {}, Lcom/twitter/util/ak;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->b:Z

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->c:Landroid/graphics/Rect;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->d:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->e:Landroid/text/TextPaint;

    .line 86
    iput-boolean v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->M:Z

    .line 109
    sget-object v0, Lcvs;->TweetHeaderView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 110
    invoke-direct {p0, p1, v0}, Lcom/twitter/ui/widget/TweetHeaderView;->a(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 111
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 97
    sget v0, Lcvr;->tweetHeaderViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/ui/widget/TweetHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/ui/widget/TouchableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-static {}, Lcom/twitter/util/ak;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->b:Z

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->c:Landroid/graphics/Rect;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->d:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->e:Landroid/text/TextPaint;

    .line 86
    iput-boolean v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->M:Z

    .line 102
    sget-object v0, Lcvs;->TweetHeaderView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 103
    invoke-direct {p0, p1, v0}, Lcom/twitter/ui/widget/TweetHeaderView;->a(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 104
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    return-void
.end method

.method static synthetic a(Lcom/twitter/ui/widget/TweetHeaderView;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->f:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 2

    .prologue
    .line 115
    invoke-static {p1}, Lcom/twitter/ui/widget/ax;->a(Landroid/content/Context;)Lcom/twitter/ui/widget/ax;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->p:Lcom/twitter/ui/widget/ax;

    .line 117
    sget v0, Lcvs;->TweetHeaderView_nameColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->j:Landroid/content/res/ColorStateList;

    .line 118
    sget v0, Lcvs;->TweetHeaderView_timestampColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->l:Landroid/content/res/ColorStateList;

    .line 119
    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->l:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->k:Landroid/content/res/ColorStateList;

    .line 120
    sget v0, Lcvs;->TweetHeaderView_usernameColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->m:Landroid/content/res/ColorStateList;

    .line 121
    sget v0, Lcvs;->TweetHeaderView_protectedDrawableColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->n:Landroid/content/res/ColorStateList;

    .line 122
    sget v0, Lcvs;->TweetHeaderView_verifiedDrawableColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->o:Landroid/content/res/ColorStateList;

    .line 123
    sget v0, Lcvs;->TweetHeaderView_protectedDrawable:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->B:Landroid/graphics/drawable/Drawable;

    .line 124
    sget v0, Lcvs;->TweetHeaderView_verifiedDrawable:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->A:Landroid/graphics/drawable/Drawable;

    .line 125
    sget v0, Lcvs;->TweetHeaderView_android_lineSpacingMultiplier:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->g:F

    .line 126
    sget v0, Lcvs;->TweetHeaderView_android_lineSpacingExtra:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->h:I

    .line 127
    sget v0, Lcvs;->TweetHeaderView_headerIconSpacing:I

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->i:I

    .line 130
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TweetHeaderView;->drawableStateChanged()V

    .line 131
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->P:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->K:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 170
    iget-boolean v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->b:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/twitter/util/a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->K:Ljava/lang/String;

    .line 171
    invoke-static {v0}, Lcom/twitter/util/v;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u00b7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->L:Ljava/lang/String;

    .line 179
    :goto_0
    return-void

    .line 174
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->L:Ljava/lang/String;

    goto :goto_0

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->K:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->L:Ljava/lang/String;

    goto :goto_0
.end method

.method private f()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->s:Landroid/text/StaticLayout;

    .line 188
    iput-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->q:Landroid/text/StaticLayout;

    .line 189
    iput-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->u:Landroid/text/StaticLayout;

    .line 190
    return-void
.end method


# virtual methods
.method public a(FFF)V
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->F:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->G:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->H:F

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_1

    .line 233
    :cond_0
    iput p1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->F:F

    .line 234
    iput p2, p0, Lcom/twitter/ui/widget/TweetHeaderView;->G:F

    .line 235
    iput p3, p0, Lcom/twitter/ui/widget/TweetHeaderView;->H:F

    .line 236
    invoke-direct {p0}, Lcom/twitter/ui/widget/TweetHeaderView;->f()V

    .line 237
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TweetHeaderView;->requestLayout()V

    .line 238
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TweetHeaderView;->invalidate()V

    .line 240
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 4
    .param p4    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0}, Lcom/twitter/ui/widget/TweetHeaderView;->f()V

    .line 137
    iput-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->x:Landroid/graphics/drawable/Drawable;

    .line 138
    iget-object v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->d:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 139
    if-eqz p5, :cond_2

    .line 140
    iget-object v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->A:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->z:Landroid/graphics/drawable/Drawable;

    .line 147
    :goto_0
    invoke-static {p1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->I:Ljava/lang/String;

    .line 148
    invoke-static {p2}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->J:Ljava/lang/String;

    .line 149
    invoke-static {p3}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 150
    iput-object p3, p0, Lcom/twitter/ui/widget/TweetHeaderView;->K:Ljava/lang/String;

    .line 154
    :goto_2
    invoke-direct {p0}, Lcom/twitter/ui/widget/TweetHeaderView;->e()V

    .line 155
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TweetHeaderView;->b()V

    .line 157
    if-lez p4, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TweetHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->x:Landroid/graphics/drawable/Drawable;

    .line 159
    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->x:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/twitter/ui/widget/TweetHeaderView;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 162
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TweetHeaderView;->invalidate()V

    .line 163
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TweetHeaderView;->requestLayout()V

    .line 164
    return-void

    .line 141
    :cond_2
    if-eqz p6, :cond_3

    .line 142
    iget-object v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->B:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->z:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 144
    :cond_3
    iput-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->z:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 148
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 152
    :cond_5
    iput-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->K:Ljava/lang/String;

    goto :goto_2
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->P:Z

    .line 183
    invoke-direct {p0}, Lcom/twitter/ui/widget/TweetHeaderView;->e()V

    .line 184
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->O:Z

    .line 228
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->x:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->E:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 211
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/twitter/ui/widget/TweetHeaderView;->setTimestampColor(Landroid/content/res/ColorStateList;)V

    .line 220
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 264
    invoke-super {p0}, Lcom/twitter/ui/widget/TouchableView;->drawableStateChanged()V

    .line 265
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TweetHeaderView;->getDrawableState()[I

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->j:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v0, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->C:I

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->k:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    .line 271
    iget-object v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v0, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->E:I

    .line 273
    :cond_1
    iget-object v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->m:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    .line 274
    iget-object v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v0, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->D:I

    .line 276
    :cond_2
    iget-object v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->B:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->n:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3

    .line 277
    iget-object v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 278
    iget-object v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->B:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/twitter/ui/widget/TweetHeaderView;->n:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v0, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 280
    :cond_3
    iget-object v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->A:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->o:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_4

    .line 281
    iget-object v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 282
    iget-object v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->A:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/twitter/ui/widget/TweetHeaderView;->o:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v0, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 285
    :cond_4
    iget-object v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 286
    iget-object v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 288
    :cond_5
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    const/4 v5, 0x0

    const/4 v2, -0x1

    .line 459
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TweetHeaderView;->getWidth()I

    move-result v0

    .line 462
    iget-boolean v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->b:Z

    if-eqz v1, :cond_d

    .line 463
    iget-object v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->z:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    .line 464
    iget-object v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->z:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int v1, v0, v1

    .line 465
    iget v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->i:I

    sub-int v0, v1, v0

    .line 470
    :goto_0
    iget-object v3, p0, Lcom/twitter/ui/widget/TweetHeaderView;->q:Landroid/text/StaticLayout;

    if-eqz v3, :cond_8

    .line 471
    iget-object v3, p0, Lcom/twitter/ui/widget/TweetHeaderView;->q:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getEllipsizedWidth()I

    move-result v3

    sub-int v3, v0, v3

    .line 472
    iget-boolean v4, p0, Lcom/twitter/ui/widget/TweetHeaderView;->O:Z

    if-nez v4, :cond_0

    .line 473
    iget v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->i:I

    sub-int v0, v3, v0

    .line 479
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/twitter/ui/widget/TweetHeaderView;->s:Landroid/text/StaticLayout;

    if-eqz v4, :cond_9

    .line 480
    iget-object v4, p0, Lcom/twitter/ui/widget/TweetHeaderView;->s:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getEllipsizedWidth()I

    move-result v4

    sub-int v4, v0, v4

    .line 481
    iget v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->i:I

    sub-int v0, v4, v0

    .line 486
    :goto_2
    iget-object v6, p0, Lcom/twitter/ui/widget/TweetHeaderView;->u:Landroid/text/StaticLayout;

    if-eqz v6, :cond_c

    .line 487
    iget-boolean v6, p0, Lcom/twitter/ui/widget/TweetHeaderView;->P:Z

    if-eqz v6, :cond_a

    .line 488
    iget-object v6, p0, Lcom/twitter/ui/widget/TweetHeaderView;->u:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getWidth()I

    move-result v6

    sub-int/2addr v0, v6

    .line 489
    iget-object v6, p0, Lcom/twitter/ui/widget/TweetHeaderView;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    iget-object v2, p0, Lcom/twitter/ui/widget/TweetHeaderView;->x:Landroid/graphics/drawable/Drawable;

    .line 490
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v6, p0, Lcom/twitter/ui/widget/TweetHeaderView;->i:I

    add-int/2addr v2, v6

    neg-int v2, v2

    :cond_1
    move v11, v1

    move v1, v3

    move v3, v11

    move v12, v0

    move v0, v4

    move v4, v12

    .line 538
    :goto_3
    iget-object v6, p0, Lcom/twitter/ui/widget/TweetHeaderView;->s:Landroid/text/StaticLayout;

    if-eqz v6, :cond_2

    .line 539
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 540
    int-to-float v6, v0

    iget v7, p0, Lcom/twitter/ui/widget/TweetHeaderView;->t:I

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 541
    iget-object v6, p0, Lcom/twitter/ui/widget/TweetHeaderView;->e:Landroid/text/TextPaint;

    iget v7, p0, Lcom/twitter/ui/widget/TweetHeaderView;->F:F

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 542
    iget-object v6, p0, Lcom/twitter/ui/widget/TweetHeaderView;->e:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/twitter/ui/widget/TweetHeaderView;->p:Lcom/twitter/ui/widget/ax;

    iget-object v7, v7, Lcom/twitter/ui/widget/ax;->c:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 543
    iget-object v6, p0, Lcom/twitter/ui/widget/TweetHeaderView;->e:Landroid/text/TextPaint;

    iget v7, p0, Lcom/twitter/ui/widget/TweetHeaderView;->C:I

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setColor(I)V

    .line 544
    iget-object v6, p0, Lcom/twitter/ui/widget/TweetHeaderView;->s:Landroid/text/StaticLayout;

    invoke-virtual {v6, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 545
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 547
    iget-object v6, p0, Lcom/twitter/ui/widget/TweetHeaderView;->d:Landroid/graphics/Rect;

    iget v7, p0, Lcom/twitter/ui/widget/TweetHeaderView;->t:I

    iget-object v8, p0, Lcom/twitter/ui/widget/TweetHeaderView;->s:Landroid/text/StaticLayout;

    invoke-virtual {v8}, Landroid/text/StaticLayout;->getEllipsizedWidth()I

    move-result v8

    add-int/2addr v8, v0

    iget v9, p0, Lcom/twitter/ui/widget/TweetHeaderView;->t:I

    iget-object v10, p0, Lcom/twitter/ui/widget/TweetHeaderView;->s:Landroid/text/StaticLayout;

    .line 548
    invoke-virtual {v10}, Landroid/text/StaticLayout;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    .line 547
    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 551
    :cond_2
    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->e:Landroid/text/TextPaint;

    iget-object v6, p0, Lcom/twitter/ui/widget/TweetHeaderView;->p:Lcom/twitter/ui/widget/ax;

    iget-object v6, v6, Lcom/twitter/ui/widget/ax;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 554
    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->q:Landroid/text/StaticLayout;

    if-eqz v0, :cond_3

    .line 555
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 556
    int-to-float v0, v1

    iget v6, p0, Lcom/twitter/ui/widget/TweetHeaderView;->r:I

    int-to-float v6, v6

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 557
    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->e:Landroid/text/TextPaint;

    iget v6, p0, Lcom/twitter/ui/widget/TweetHeaderView;->G:F

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 559
    iget-boolean v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->N:Z

    if-eqz v0, :cond_12

    .line 560
    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->e:Landroid/text/TextPaint;

    iget v6, p0, Lcom/twitter/ui/widget/TweetHeaderView;->E:I

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 564
    :goto_4
    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->q:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 565
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 567
    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->d:Landroid/graphics/Rect;

    iget v6, p0, Lcom/twitter/ui/widget/TweetHeaderView;->r:I

    iget-object v7, p0, Lcom/twitter/ui/widget/TweetHeaderView;->q:Landroid/text/StaticLayout;

    .line 568
    invoke-virtual {v7}, Landroid/text/StaticLayout;->getEllipsizedWidth()I

    move-result v7

    add-int/2addr v7, v1

    iget v8, p0, Lcom/twitter/ui/widget/TweetHeaderView;->r:I

    iget-object v9, p0, Lcom/twitter/ui/widget/TweetHeaderView;->q:Landroid/text/StaticLayout;

    .line 569
    invoke-virtual {v9}, Landroid/text/StaticLayout;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 567
    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/graphics/Rect;->union(IIII)V

    .line 573
    :cond_3
    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->z:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 574
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 575
    int-to-float v0, v3

    iget v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->w:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 576
    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->z:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->z:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v3, p0, Lcom/twitter/ui/widget/TweetHeaderView;->z:Landroid/graphics/drawable/Drawable;

    .line 577
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 576
    invoke-virtual {v0, v5, v5, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 578
    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->z:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 579
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 583
    :cond_4
    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->u:Landroid/text/StaticLayout;

    if-eqz v0, :cond_6

    .line 584
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 585
    int-to-float v0, v4

    iget v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->v:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 586
    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->e:Landroid/text/TextPaint;

    iget v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->H:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 587
    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->e:Landroid/text/TextPaint;

    iget v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->E:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 588
    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->u:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 590
    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 591
    int-to-float v0, v2

    iget-object v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->u:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/twitter/ui/widget/TweetHeaderView;->x:Landroid/graphics/drawable/Drawable;

    .line 592
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 591
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 593
    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 596
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 598
    :cond_6
    return-void

    :cond_7
    move v1, v2

    .line 467
    goto/16 :goto_0

    :cond_8
    move v3, v2

    .line 476
    goto/16 :goto_1

    :cond_9
    move v4, v2

    .line 483
    goto/16 :goto_2

    .line 493
    :cond_a
    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->u:Landroid/text/StaticLayout;

    .line 494
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/twitter/ui/widget/TweetHeaderView;->i:I

    add-int/2addr v2, v0

    :cond_b
    move v0, v4

    move v4, v5

    move v11, v3

    move v3, v1

    move v1, v11

    goto/16 :goto_3

    :cond_c
    move v0, v4

    move v4, v2

    move v11, v3

    move v3, v1

    move v1, v11

    .line 498
    goto/16 :goto_3

    .line 502
    :cond_d
    iget-object v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->s:Landroid/text/StaticLayout;

    if-eqz v1, :cond_15

    iget-boolean v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->O:Z

    if-nez v1, :cond_15

    .line 503
    iget-object v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->s:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getEllipsizedWidth()I

    move-result v1

    iget v3, p0, Lcom/twitter/ui/widget/TweetHeaderView;->i:I

    add-int/2addr v1, v3

    add-int/2addr v1, v5

    .line 506
    :goto_5
    iget-object v3, p0, Lcom/twitter/ui/widget/TweetHeaderView;->q:Landroid/text/StaticLayout;

    if-eqz v3, :cond_14

    .line 507
    iget-object v3, p0, Lcom/twitter/ui/widget/TweetHeaderView;->q:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getEllipsizedWidth()I

    move-result v3

    iget v4, p0, Lcom/twitter/ui/widget/TweetHeaderView;->i:I

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    .line 510
    :goto_6
    iget-object v4, p0, Lcom/twitter/ui/widget/TweetHeaderView;->z:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_13

    .line 511
    iget-object v4, p0, Lcom/twitter/ui/widget/TweetHeaderView;->z:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget v6, p0, Lcom/twitter/ui/widget/TweetHeaderView;->i:I

    add-int/2addr v4, v6

    add-int/2addr v4, v3

    .line 514
    :goto_7
    iget-object v6, p0, Lcom/twitter/ui/widget/TweetHeaderView;->u:Landroid/text/StaticLayout;

    if-eqz v6, :cond_11

    .line 515
    iget-boolean v6, p0, Lcom/twitter/ui/widget/TweetHeaderView;->P:Z

    if-eqz v6, :cond_f

    .line 517
    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->u:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getEllipsizedWidth()I

    move-result v0

    iget v6, p0, Lcom/twitter/ui/widget/TweetHeaderView;->i:I

    add-int/2addr v0, v6

    .line 518
    iget-object v6, p0, Lcom/twitter/ui/widget/TweetHeaderView;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_e

    move v2, v0

    move v0, v5

    .line 519
    goto/16 :goto_3

    :cond_e
    move v0, v5

    .line 521
    goto/16 :goto_3

    .line 524
    :cond_f
    iget-object v4, p0, Lcom/twitter/ui/widget/TweetHeaderView;->u:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getWidth()I

    move-result v4

    sub-int v4, v0, v4

    .line 525
    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    .line 526
    iget v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->i:I

    iget-object v2, p0, Lcom/twitter/ui/widget/TweetHeaderView;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v0, v2

    neg-int v2, v0

    move v0, v5

    goto/16 :goto_3

    :cond_10
    move v0, v5

    .line 528
    goto/16 :goto_3

    :cond_11
    move v4, v2

    move v0, v5

    .line 533
    goto/16 :goto_3

    .line 562
    :cond_12
    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->e:Landroid/text/TextPaint;

    iget v6, p0, Lcom/twitter/ui/widget/TweetHeaderView;->D:I

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setColor(I)V

    goto/16 :goto_4

    :cond_13
    move v4, v3

    goto :goto_7

    :cond_14
    move v3, v1

    goto :goto_6

    :cond_15
    move v1, v5

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 20

    .prologue
    .line 292
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 297
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->L:Ljava/lang/String;

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->M:Z

    if-eqz v1, :cond_9

    .line 298
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->e:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/twitter/ui/widget/TweetHeaderView;->H:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 299
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->e:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/ui/widget/TweetHeaderView;->p:Lcom/twitter/ui/widget/ax;

    iget-object v2, v2, Lcom/twitter/ui/widget/ax;->a:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 300
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->u:Landroid/text/StaticLayout;

    if-nez v1, :cond_0

    .line 301
    new-instance v1, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/ui/widget/TweetHeaderView;->L:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/ui/widget/TweetHeaderView;->e:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/ui/widget/TweetHeaderView;->L:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/ui/widget/TweetHeaderView;->e:Landroid/text/TextPaint;

    .line 302
    invoke-static {v4, v5}, Lcom/twitter/util/ui/r;->a(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->u:Landroid/text/StaticLayout;

    .line 305
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->u:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/twitter/ui/widget/TweetHeaderView;->i:I

    add-int/2addr v1, v2

    sub-int v3, v15, v1

    .line 306
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->e:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/ui/widget/TweetHeaderView;->L:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/ui/widget/TweetHeaderView;->L:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/ui/widget/TweetHeaderView;->c:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->u:Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/ui/widget/TweetHeaderView;->c:Landroid/graphics/Rect;

    invoke-static {v1, v2}, Lcom/twitter/util/ui/i;->a(Landroid/text/Layout;Landroid/graphics/Rect;)I

    move-result v1

    neg-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->v:I

    .line 308
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->c:Landroid/graphics/Rect;

    invoke-static {v1}, Lcom/twitter/util/ui/i;->a(Landroid/graphics/Rect;)I

    move-result v2

    .line 309
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->u:Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/ui/widget/TweetHeaderView;->c:Landroid/graphics/Rect;

    invoke-static {v1, v4}, Lcom/twitter/util/ui/i;->b(Landroid/text/Layout;Landroid/graphics/Rect;)I

    move-result v1

    .line 311
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/ui/widget/TweetHeaderView;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1b

    .line 312
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/ui/widget/TweetHeaderView;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/twitter/ui/widget/TweetHeaderView;->i:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    move v13, v1

    move v14, v2

    move v1, v3

    .line 319
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/ui/widget/TweetHeaderView;->z:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1a

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/ui/widget/TweetHeaderView;->z:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/twitter/ui/widget/TweetHeaderView;->i:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    move/from16 v16, v1

    .line 325
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->I:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 326
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->e:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/twitter/ui/widget/TweetHeaderView;->F:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 327
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->e:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/ui/widget/TweetHeaderView;->p:Lcom/twitter/ui/widget/ax;

    iget-object v2, v2, Lcom/twitter/ui/widget/ax;->c:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 328
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->s:Landroid/text/StaticLayout;

    if-nez v1, :cond_1

    .line 329
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->I:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/ui/widget/TweetHeaderView;->e:Landroid/text/TextPaint;

    invoke-static {v1, v2}, Lcom/twitter/util/ui/r;->a(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v6

    .line 330
    move/from16 v0, v16

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 331
    new-instance v1, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/ui/widget/TweetHeaderView;->I:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/ui/widget/TweetHeaderView;->I:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/ui/widget/TweetHeaderView;->e:Landroid/text/TextPaint;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/twitter/ui/widget/TweetHeaderView;->g:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/twitter/ui/widget/TweetHeaderView;->h:I

    int-to-float v9, v9

    const/4 v10, 0x0

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-direct/range {v1 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->s:Landroid/text/StaticLayout;

    .line 335
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->e:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/ui/widget/TweetHeaderView;->I:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/ui/widget/TweetHeaderView;->I:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/ui/widget/TweetHeaderView;->c:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->s:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getEllipsizedWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/twitter/ui/widget/TweetHeaderView;->i:I

    add-int/2addr v1, v2

    sub-int v16, v16, v1

    .line 337
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->c:Landroid/graphics/Rect;

    invoke-static {v1}, Lcom/twitter/util/ui/i;->a(Landroid/graphics/Rect;)I

    move-result v3

    .line 338
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->s:Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/ui/widget/TweetHeaderView;->c:Landroid/graphics/Rect;

    invoke-static {v1, v2}, Lcom/twitter/util/ui/i;->b(Landroid/text/Layout;Landroid/graphics/Rect;)I

    move-result v2

    .line 339
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->s:Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/ui/widget/TweetHeaderView;->c:Landroid/graphics/Rect;

    invoke-static {v1, v4}, Lcom/twitter/util/ui/i;->a(Landroid/text/Layout;Landroid/graphics/Rect;)I

    move-result v1

    .line 342
    neg-int v4, v1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/twitter/ui/widget/TweetHeaderView;->t:I

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v1

    move/from16 v1, v16

    move/from16 v16, v19

    .line 351
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/twitter/ui/widget/TweetHeaderView;->O:Z

    if-eqz v2, :cond_2

    move v1, v15

    .line 355
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/ui/widget/TweetHeaderView;->J:Ljava/lang/String;

    .line 356
    if-eqz v2, :cond_e

    if-lez v1, :cond_e

    .line 357
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/ui/widget/TweetHeaderView;->e:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/twitter/ui/widget/TweetHeaderView;->G:F

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 358
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/ui/widget/TweetHeaderView;->e:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/ui/widget/TweetHeaderView;->p:Lcom/twitter/ui/widget/ax;

    iget-object v4, v4, Lcom/twitter/ui/widget/ax;->a:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 360
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/ui/widget/TweetHeaderView;->q:Landroid/text/StaticLayout;

    if-nez v3, :cond_3

    .line 361
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/ui/widget/TweetHeaderView;->e:Landroid/text/TextPaint;

    invoke-static {v2, v3}, Lcom/twitter/util/ui/r;->a(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v6

    .line 362
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 363
    new-instance v1, Landroid/text/StaticLayout;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/ui/widget/TweetHeaderView;->e:Landroid/text/TextPaint;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-direct/range {v1 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->q:Landroid/text/StaticLayout;

    .line 367
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->e:Landroid/text/TextPaint;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/ui/widget/TweetHeaderView;->c:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->q:Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/ui/widget/TweetHeaderView;->c:Landroid/graphics/Rect;

    invoke-static {v1, v2}, Lcom/twitter/util/ui/i;->b(Landroid/text/Layout;Landroid/graphics/Rect;)I

    move-result v3

    .line 369
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->q:Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/ui/widget/TweetHeaderView;->c:Landroid/graphics/Rect;

    invoke-static {v1, v2}, Lcom/twitter/util/ui/i;->a(Landroid/text/Layout;Landroid/graphics/Rect;)I

    move-result v1

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/ui/widget/TweetHeaderView;->c:Landroid/graphics/Rect;

    invoke-static {v2}, Lcom/twitter/util/ui/i;->a(Landroid/graphics/Rect;)I

    move-result v2

    .line 371
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/twitter/ui/widget/TweetHeaderView;->O:Z

    if-eqz v4, :cond_c

    .line 372
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/ui/widget/TweetHeaderView;->s:Landroid/text/StaticLayout;

    if-eqz v4, :cond_b

    .line 374
    move-object/from16 v0, p0

    iget v4, v0, Lcom/twitter/ui/widget/TweetHeaderView;->t:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/ui/widget/TweetHeaderView;->s:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/twitter/ui/widget/TweetHeaderView;->r:I

    .line 400
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/ui/widget/TweetHeaderView;->u:Landroid/text/StaticLayout;

    if-eqz v4, :cond_6

    .line 401
    const/4 v4, 0x0

    .line 402
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/ui/widget/TweetHeaderView;->s:Landroid/text/StaticLayout;

    if-eqz v5, :cond_f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/ui/widget/TweetHeaderView;->q:Landroid/text/StaticLayout;

    if-eqz v5, :cond_f

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/twitter/ui/widget/TweetHeaderView;->O:Z

    if-nez v5, :cond_f

    .line 404
    move/from16 v0, v18

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr v4, v14

    .line 411
    :cond_5
    :goto_4
    if-lez v4, :cond_12

    .line 412
    move-object/from16 v0, p0

    iget v5, v0, Lcom/twitter/ui/widget/TweetHeaderView;->v:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/twitter/ui/widget/TweetHeaderView;->v:I

    .line 418
    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/ui/widget/TweetHeaderView;->z:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_7

    .line 419
    const/4 v4, 0x0

    .line 420
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/twitter/ui/widget/TweetHeaderView;->w:I

    .line 421
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/ui/widget/TweetHeaderView;->s:Landroid/text/StaticLayout;

    if-eqz v5, :cond_13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/ui/widget/TweetHeaderView;->q:Landroid/text/StaticLayout;

    if-eqz v5, :cond_13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/ui/widget/TweetHeaderView;->u:Landroid/text/StaticLayout;

    if-eqz v5, :cond_13

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/twitter/ui/widget/TweetHeaderView;->O:Z

    if-nez v5, :cond_13

    .line 423
    move-object/from16 v0, p0

    iget v4, v0, Lcom/twitter/ui/widget/TweetHeaderView;->r:I

    add-int/2addr v1, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/ui/widget/TweetHeaderView;->z:Landroid/graphics/drawable/Drawable;

    .line 424
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 430
    :goto_6
    if-lez v1, :cond_15

    .line 431
    move-object/from16 v0, p0

    iget v2, v0, Lcom/twitter/ui/widget/TweetHeaderView;->w:I

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->w:I

    .line 441
    :cond_7
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->s:Landroid/text/StaticLayout;

    if-eqz v1, :cond_8

    if-nez v18, :cond_16

    :cond_8
    const/4 v1, 0x0

    .line 443
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/ui/widget/TweetHeaderView;->q:Landroid/text/StaticLayout;

    if-nez v2, :cond_17

    const/4 v2, 0x0

    .line 445
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/ui/widget/TweetHeaderView;->u:Landroid/text/StaticLayout;

    if-nez v3, :cond_18

    const/4 v3, 0x0

    .line 447
    :goto_a
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 448
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/ui/widget/TweetHeaderView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v1}, Lcom/twitter/ui/widget/TweetHeaderView;->setMeasuredDimension(II)V

    .line 449
    return-void

    .line 315
    :cond_9
    const/4 v1, 0x0

    .line 316
    const/4 v2, 0x0

    move v13, v1

    move v14, v2

    move v1, v15

    goto/16 :goto_0

    .line 344
    :cond_a
    const/4 v3, 0x0

    .line 345
    const/4 v2, 0x0

    .line 346
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->t:I

    .line 347
    const/4 v1, 0x0

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v1

    move/from16 v1, v16

    move/from16 v16, v19

    goto/16 :goto_2

    .line 377
    :cond_b
    neg-int v4, v1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/twitter/ui/widget/TweetHeaderView;->r:I

    goto/16 :goto_3

    .line 382
    :cond_c
    sub-int v4, v18, v2

    .line 383
    neg-int v5, v1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/twitter/ui/widget/TweetHeaderView;->r:I

    .line 384
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/ui/widget/TweetHeaderView;->s:Landroid/text/StaticLayout;

    if-eqz v5, :cond_4

    .line 385
    if-lez v4, :cond_d

    .line 386
    move-object/from16 v0, p0

    iget v5, v0, Lcom/twitter/ui/widget/TweetHeaderView;->r:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/twitter/ui/widget/TweetHeaderView;->r:I

    goto/16 :goto_3

    .line 388
    :cond_d
    move-object/from16 v0, p0

    iget v5, v0, Lcom/twitter/ui/widget/TweetHeaderView;->t:I

    sub-int v4, v5, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/twitter/ui/widget/TweetHeaderView;->t:I

    goto/16 :goto_3

    .line 393
    :cond_e
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->r:I

    .line 394
    const/4 v3, 0x0

    .line 395
    const/4 v2, 0x0

    .line 396
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 406
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/ui/widget/TweetHeaderView;->s:Landroid/text/StaticLayout;

    if-nez v5, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/ui/widget/TweetHeaderView;->q:Landroid/text/StaticLayout;

    if-eqz v5, :cond_5

    .line 408
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/ui/widget/TweetHeaderView;->s:Landroid/text/StaticLayout;

    if-eqz v4, :cond_11

    move/from16 v4, v18

    :goto_b
    sub-int/2addr v4, v14

    goto/16 :goto_4

    :cond_11
    move v4, v2

    goto :goto_b

    .line 414
    :cond_12
    move-object/from16 v0, p0

    iget v5, v0, Lcom/twitter/ui/widget/TweetHeaderView;->t:I

    sub-int/2addr v5, v4

    move-object/from16 v0, p0

    iput v5, v0, Lcom/twitter/ui/widget/TweetHeaderView;->t:I

    .line 415
    move-object/from16 v0, p0

    iget v5, v0, Lcom/twitter/ui/widget/TweetHeaderView;->r:I

    sub-int v4, v5, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/twitter/ui/widget/TweetHeaderView;->r:I

    goto/16 :goto_5

    .line 425
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->s:Landroid/text/StaticLayout;

    if-nez v1, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->q:Landroid/text/StaticLayout;

    if-eqz v1, :cond_19

    .line 427
    :cond_14
    move-object/from16 v0, p0

    iget v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->t:I

    add-int v1, v1, v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/ui/widget/TweetHeaderView;->z:Landroid/graphics/drawable/Drawable;

    .line 428
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, v18, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    goto/16 :goto_6

    .line 433
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/twitter/ui/widget/TweetHeaderView;->t:I

    sub-int/2addr v2, v1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/twitter/ui/widget/TweetHeaderView;->t:I

    .line 434
    move-object/from16 v0, p0

    iget v2, v0, Lcom/twitter/ui/widget/TweetHeaderView;->r:I

    sub-int/2addr v2, v1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/twitter/ui/widget/TweetHeaderView;->r:I

    .line 435
    move-object/from16 v0, p0

    iget v2, v0, Lcom/twitter/ui/widget/TweetHeaderView;->v:I

    sub-int v1, v2, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->v:I

    goto/16 :goto_7

    .line 441
    :cond_16
    move-object/from16 v0, p0

    iget v1, v0, Lcom/twitter/ui/widget/TweetHeaderView;->t:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/ui/widget/TweetHeaderView;->s:Landroid/text/StaticLayout;

    .line 442
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int v1, v1, v17

    goto/16 :goto_8

    .line 443
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lcom/twitter/ui/widget/TweetHeaderView;->r:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/ui/widget/TweetHeaderView;->q:Landroid/text/StaticLayout;

    .line 444
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v2, v3

    goto/16 :goto_9

    .line 445
    :cond_18
    move-object/from16 v0, p0

    iget v3, v0, Lcom/twitter/ui/widget/TweetHeaderView;->v:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/ui/widget/TweetHeaderView;->u:Landroid/text/StaticLayout;

    .line 446
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v13

    goto/16 :goto_a

    :cond_19
    move v1, v4

    goto/16 :goto_6

    :cond_1a
    move/from16 v16, v1

    goto/16 :goto_1

    :cond_1b
    move v13, v1

    move v14, v2

    move v1, v3

    goto/16 :goto_0
.end method

.method public setOnAuthorClick(Landroid/view/View$OnClickListener;)V
    .locals 8

    .prologue
    .line 243
    iput-object p1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->f:Landroid/view/View$OnClickListener;

    .line 244
    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->f:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->y:Lcom/twitter/ui/widget/aj;

    invoke-virtual {p0, v0}, Lcom/twitter/ui/widget/TweetHeaderView;->b(Lcom/twitter/ui/widget/aj;)V

    .line 260
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->y:Lcom/twitter/ui/widget/aj;

    if-nez v0, :cond_1

    .line 248
    new-instance v0, Lcom/twitter/ui/widget/aj;

    const-wide/16 v2, 0x2

    const-wide/16 v4, 0x1

    new-instance v6, Lcom/twitter/ui/widget/am;

    invoke-direct {v6, p0}, Lcom/twitter/ui/widget/am;-><init>(Lcom/twitter/ui/widget/TweetHeaderView;)V

    sget-object v7, Lcom/twitter/ui/widget/TweetHeaderView;->a:[I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/twitter/ui/widget/aj;-><init>(Lcom/twitter/ui/widget/TouchableView;JJLjava/lang/Runnable;[I)V

    iput-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->y:Lcom/twitter/ui/widget/aj;

    .line 256
    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->y:Lcom/twitter/ui/widget/aj;

    iget-object v1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/aj;->a(Landroid/graphics/Rect;)V

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->y:Lcom/twitter/ui/widget/aj;

    invoke-virtual {p0, v0}, Lcom/twitter/ui/widget/TweetHeaderView;->a(Lcom/twitter/ui/widget/aj;)V

    goto :goto_0
.end method

.method public setShowTimestamp(Z)V
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->M:Z

    if-eq p1, v0, :cond_0

    .line 194
    iput-boolean p1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->M:Z

    .line 195
    invoke-direct {p0}, Lcom/twitter/ui/widget/TweetHeaderView;->f()V

    .line 196
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TweetHeaderView;->requestLayout()V

    .line 197
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TweetHeaderView;->invalidate()V

    .line 199
    :cond_0
    return-void
.end method

.method public setTimestampBadgeColor(I)V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/twitter/ui/widget/TweetHeaderView;->x:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 205
    :cond_0
    return-void
.end method

.method public setTimestampColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->k:Landroid/content/res/ColorStateList;

    .line 215
    invoke-virtual {p0}, Lcom/twitter/ui/widget/TweetHeaderView;->refreshDrawableState()V

    .line 216
    return-void
.end method

.method public setUseTimestampColorForUsername(Z)V
    .locals 0

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/twitter/ui/widget/TweetHeaderView;->N:Z

    .line 224
    return-void
.end method
