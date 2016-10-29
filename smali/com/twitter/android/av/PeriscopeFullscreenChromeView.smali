.class public Lcom/twitter/android/av/PeriscopeFullscreenChromeView;
.super Lcom/twitter/android/av/GalleryVideoChromeView;
.source "Twttr"

# interfaces
.implements Ltv/periscope/android/player/c;


# instance fields
.field private A:Landroid/view/ViewGroup;

.field private B:Lcom/twitter/android/periscope/c;

.field private C:Landroid/view/ViewGroup;

.field private D:Lcom/twitter/android/av/bc;

.field private v:Landroid/view/View;

.field private w:Lcom/twitter/library/media/widget/UserImageView;

.field private x:Ltv/periscope/android/ui/broadcast/ChatRoomView;

.field private y:Z

.field private z:Lcom/twitter/android/periscope/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/twitter/android/av/GalleryVideoChromeView;-><init>(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/av/GalleryVideoChromeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method private U()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->A:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->A:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->removeView(Landroid/view/View;)V

    .line 245
    :cond_0
    return-void
.end method

.method private V()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 298
    iget-boolean v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->y:Z

    .line 299
    iput-boolean v1, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->y:Z

    .line 300
    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->I()V

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->A:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 306
    invoke-virtual {p0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040273

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->A:Landroid/view/ViewGroup;

    .line 307
    iget-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->A:Landroid/view/ViewGroup;

    const v2, 0x7f1305d4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->C:Landroid/view/ViewGroup;

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->B:Lcom/twitter/android/periscope/c;

    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->B:Lcom/twitter/android/periscope/c;

    new-instance v2, Lcom/twitter/android/av/bb;

    invoke-direct {v2, p0}, Lcom/twitter/android/av/bb;-><init>(Lcom/twitter/android/av/PeriscopeFullscreenChromeView;)V

    invoke-interface {v0, v2}, Lcom/twitter/android/periscope/c;->a(Lcom/twitter/android/periscope/d;)V

    .line 318
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->A:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 319
    :goto_0
    if-eqz v0, :cond_3

    .line 320
    invoke-direct {p0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->W()V

    .line 321
    iget-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->A:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->addView(Landroid/view/View;)V

    .line 323
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 318
    goto :goto_0
.end method

.method private W()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->C:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 328
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 329
    iget-object v1, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->C:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 330
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 331
    iget-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->C:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/av/PeriscopeFullscreenChromeView;)Lcom/twitter/android/av/bc;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->D:Lcom/twitter/android/av/bc;

    return-object v0
.end method

.method private a(Lcom/twitter/library/media/widget/UserImageView;)V
    .locals 4

    .prologue
    .line 69
    invoke-static {}, Lcba;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/twitter/library/media/widget/UserImageView;->setVisibility(I)V

    .line 86
    :goto_0
    return-void

    .line 74
    :cond_0
    const v0, 0x7f0f036d

    const v1, 0x7f0f036c

    const/high16 v2, 0x7f120000

    sget-object v3, Lcom/twitter/media/ui/image/config/CommonRoundingStrategy;->c:Lcom/twitter/media/ui/image/config/CommonRoundingStrategy;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/twitter/android/profiles/as;->a(Lcom/twitter/library/media/widget/UserImageView;IIILcom/twitter/media/ui/image/config/g;)V

    .line 78
    new-instance v0, Lcom/twitter/android/av/ba;

    invoke-direct {v0, p0}, Lcom/twitter/android/av/ba;-><init>(Lcom/twitter/android/av/PeriscopeFullscreenChromeView;)V

    invoke-virtual {p1, v0}, Lcom/twitter/library/media/widget/UserImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/android/av/PeriscopeFullscreenChromeView;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->C:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method protected E()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public J()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->w:Lcom/twitter/library/media/widget/UserImageView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcba;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->w:Lcom/twitter/library/media/widget/UserImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/widget/UserImageView;->setVisibility(I)V

    .line 145
    :cond_0
    return-void
.end method

.method public K()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->w:Lcom/twitter/library/media/widget/UserImageView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcba;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->w:Lcom/twitter/library/media/widget/UserImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/widget/UserImageView;->setVisibility(I)V

    .line 151
    :cond_0
    return-void
.end method

.method L()V
    .locals 2

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->y:Z

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->getChatRoomView()Ltv/periscope/android/ui/broadcast/ChatRoomView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->setHeartsMarginFactor(I)V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->getChatRoomView()Ltv/periscope/android/ui/broadcast/ChatRoomView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->setHeartsMarginFactor(I)V

    goto :goto_0
.end method

.method public M()V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method public N()V
    .locals 0

    .prologue
    .line 283
    return-void
.end method

.method public O()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->z:Lcom/twitter/android/periscope/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/periscope/g;->a(Z)V

    .line 338
    invoke-direct {p0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->U()V

    .line 339
    return-void
.end method

.method public P()V
    .locals 0

    .prologue
    .line 348
    return-void
.end method

.method public Q()V
    .locals 0

    .prologue
    .line 351
    return-void
.end method

.method public R()V
    .locals 0

    .prologue
    .line 354
    return-void
.end method

.method public S()V
    .locals 0

    .prologue
    .line 357
    return-void
.end method

.method public T()V
    .locals 0

    .prologue
    .line 360
    return-void
.end method

.method public a(F)V
    .locals 0

    .prologue
    .line 342
    return-void
.end method

.method public a(I)V
    .locals 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->n:Lcom/twitter/android/av/ExternalActionButton;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->n:Lcom/twitter/android/av/ExternalActionButton;

    invoke-virtual {v0}, Lcom/twitter/android/av/ExternalActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    .line 129
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 131
    :cond_0
    return-void
.end method

.method public a(IF)V
    .locals 4

    .prologue
    .line 162
    iget-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->w:Lcom/twitter/library/media/widget/UserImageView;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/UserImageView;

    .line 163
    invoke-virtual {v0}, Lcom/twitter/library/media/widget/UserImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v1, p1

    .line 164
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 165
    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    .line 166
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 167
    return-void
.end method

.method public a(II)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x96

    .line 107
    invoke-virtual {p0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->getChatRoomView()Ltv/periscope/android/ui/broadcast/ChatRoomView;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    mul-int/lit8 v2, p2, -0x1

    int-to-float v2, v2

    .line 109
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 110
    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 112
    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->getRightAlignedViews()[Landroid/view/View;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 113
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    mul-int/lit8 v4, p1, -0x1

    int-to-float v4, v4

    .line 114
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 115
    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 116
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    return-void
.end method

.method protected a(IIII)V
    .locals 4

    .prologue
    .line 171
    .line 173
    iget-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->n:Lcom/twitter/android/av/ExternalActionButton;

    invoke-virtual {v0}, Lcom/twitter/android/av/ExternalActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 174
    if-eqz v0, :cond_1

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 175
    :goto_0
    add-int/2addr v0, p2

    .line 176
    iget-object v1, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->n:Lcom/twitter/android/av/ExternalActionButton;

    invoke-virtual {v1}, Lcom/twitter/android/av/ExternalActionButton;->getHeight()I

    move-result v1

    add-int/2addr v1, v0

    .line 177
    sub-int v2, p3, p1

    iget-object v3, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->n:Lcom/twitter/android/av/ExternalActionButton;

    invoke-virtual {v3}, Lcom/twitter/android/av/ExternalActionButton;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 178
    if-lez v2, :cond_0

    .line 179
    add-int/2addr p1, v2

    .line 180
    sub-int/2addr p3, v2

    .line 182
    :cond_0
    iget-object v2, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->n:Lcom/twitter/android/av/ExternalActionButton;

    invoke-virtual {v2, p1, v0, p3, v1}, Lcom/twitter/android/av/ExternalActionButton;->layout(IIII)V

    .line 183
    return-void

    .line 174
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->U()V

    .line 219
    invoke-super {p0, p1}, Lcom/twitter/android/av/GalleryVideoChromeView;->a(Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)V

    .line 220
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 280
    return-void
.end method

.method public a(ZJ)V
    .locals 2

    .prologue
    .line 224
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/av/GalleryVideoChromeView;->a(ZJ)V

    .line 225
    invoke-virtual {p0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->getChatRoomView()Ltv/periscope/android/ui/broadcast/ChatRoomView;

    move-result-object v0

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->c()V

    .line 226
    return-void
.end method

.method protected b(Lcom/twitter/model/av/a;)Lcom/twitter/library/av/model/j;
    .locals 2

    .prologue
    .line 213
    new-instance v0, Lcom/twitter/android/av/az;

    check-cast p1, Lcom/twitter/library/av/model/g;

    iget-boolean v1, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->y:Z

    invoke-direct {v0, p1, v1}, Lcom/twitter/android/av/az;-><init>(Lcom/twitter/library/av/model/g;Z)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->z:Lcom/twitter/android/periscope/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/periscope/g;->a(Z)V

    .line 292
    invoke-direct {p0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->V()V

    .line 294
    :cond_0
    return-void
.end method

.method public b(IJ)Z
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 345
    return-void
.end method

.method public getChatRoomView()Ltv/periscope/android/ui/broadcast/ChatRoomView;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->x:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/broadcast/ChatRoomView;

    return-object v0
.end method

.method public getPreview()Landroid/view/TextureView;
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return-object v0
.end method

.method protected k()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->v:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->v:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->v:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->addView(Landroid/view/View;I)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->n:Lcom/twitter/android/av/ExternalActionButton;

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->n:Lcom/twitter/android/av/ExternalActionButton;

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->addView(Landroid/view/View;)V

    .line 96
    :cond_1
    return-void
.end method

.method public setAppCardViewProvider(Lcom/twitter/android/periscope/c;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->B:Lcom/twitter/android/periscope/c;

    .line 367
    return-void
.end method

.method public setBroadcastProgress(Lcom/twitter/android/periscope/g;)V
    .locals 1

    .prologue
    .line 370
    iput-object p1, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->z:Lcom/twitter/android/periscope/g;

    .line 371
    iget-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->z:Lcom/twitter/android/periscope/g;

    invoke-virtual {v0}, Lcom/twitter/android/periscope/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    invoke-direct {p0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->V()V

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->U()V

    goto :goto_0
.end method

.method public setIsLive(Z)V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->z:Lcom/twitter/android/periscope/g;

    invoke-virtual {v0}, Lcom/twitter/android/periscope/g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-boolean v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->y:Z

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    .line 194
    :goto_0
    iput-boolean p1, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->y:Z

    .line 195
    invoke-virtual {p0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->L()V

    .line 196
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->I()V

    .line 200
    :cond_0
    return-void

    .line 193
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPlayPauseAlpha(F)V
    .locals 0

    .prologue
    .line 363
    return-void
.end method

.method public setPlayPauseClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method public setProfileClickListener(Lcom/twitter/android/av/bc;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->D:Lcom/twitter/android/av/bc;

    .line 135
    return-void
.end method

.method public setProfileUser(Lcom/twitter/model/core/TwitterUser;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->w:Lcom/twitter/library/media/widget/UserImageView;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/UserImageView;

    invoke-virtual {v0, p1}, Lcom/twitter/library/media/widget/UserImageView;->a(Lcom/twitter/model/core/TwitterUser;)Z

    .line 139
    return-void
.end method

.method public setThumbImageUrlLoader(Ldmy;)V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method protected setupInternalViews(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/twitter/android/av/GalleryVideoChromeView;->setupInternalViews(Landroid/content/Context;)V

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040274

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->v:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->v:Landroid/view/View;

    const v1, 0x7f1305d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/broadcast/ChatRoomView;

    iput-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->x:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    .line 64
    iget-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->v:Landroid/view/View;

    const v1, 0x7f1305d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/UserImageView;

    iput-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->w:Lcom/twitter/library/media/widget/UserImageView;

    .line 65
    iget-object v0, p0, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->w:Lcom/twitter/library/media/widget/UserImageView;

    invoke-direct {p0, v0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->a(Lcom/twitter/library/media/widget/UserImageView;)V

    .line 66
    return-void
.end method

.method public w()V
    .locals 1

    .prologue
    .line 236
    invoke-super {p0}, Lcom/twitter/android/av/GalleryVideoChromeView;->w()V

    .line 237
    invoke-virtual {p0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->getChatRoomView()Ltv/periscope/android/ui/broadcast/ChatRoomView;

    move-result-object v0

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->c()V

    .line 238
    invoke-virtual {p0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->O()V

    .line 239
    return-void
.end method

.method public z()V
    .locals 0

    .prologue
    .line 230
    invoke-super {p0}, Lcom/twitter/android/av/GalleryVideoChromeView;->z()V

    .line 231
    invoke-virtual {p0}, Lcom/twitter/android/av/PeriscopeFullscreenChromeView;->O()V

    .line 232
    return-void
.end method
