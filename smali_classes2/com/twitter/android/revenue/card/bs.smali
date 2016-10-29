.class public Lcom/twitter/android/revenue/card/bs;
.super Lcom/twitter/android/revenue/card/a;
.source "Twttr"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected b:I

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Lcom/twitter/media/ui/image/MediaImageView;

.field protected f:Landroid/widget/TextView;

.field protected g:Lcom/twitter/ui/widget/TwitterButton;

.field protected h:Landroid/view/View;

.field protected final r:Lcom/twitter/library/util/y;

.field protected s:Z

.field protected t:Landroid/widget/TextView;

.field protected u:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, "promo_image"

    invoke-static {v0}, Lcom/twitter/util/collection/r;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/revenue/card/bs;->a:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;)V
    .locals 6

    .prologue
    .line 67
    const v5, 0x7f04020e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/revenue/card/bs;-><init>(Landroid/content/Context;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;I)V

    .line 69
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;I)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/android/revenue/card/a;-><init>(Landroid/content/Context;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;)V

    .line 74
    new-instance v0, Lcom/twitter/android/revenue/card/bt;

    invoke-direct {v0, p0}, Lcom/twitter/android/revenue/card/bt;-><init>(Lcom/twitter/android/revenue/card/bs;)V

    iput-object v0, p0, Lcom/twitter/android/revenue/card/bs;->r:Lcom/twitter/library/util/y;

    .line 80
    iput p5, p0, Lcom/twitter/android/revenue/card/bs;->b:I

    .line 81
    invoke-virtual {p0, p1}, Lcom/twitter/android/revenue/card/bs;->a(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/twitter/android/revenue/card/bs;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/android/revenue/card/aq;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->d:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/revenue/card/bs;->a(Landroid/view/View;Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 259
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/revenue/card/bs;->d:Ljava/lang/String;

    invoke-static {v1}, Laaw;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->d:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/revenue/card/bs;->a(Landroid/view/View;Landroid/view/MotionEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_1
    iget-object v1, p0, Lcom/twitter/android/revenue/card/bs;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/android/revenue/card/bs;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/twitter/android/revenue/z;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/twitter/android/revenue/card/bs;->d:Ljava/lang/String;

    .line 254
    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/twitter/android/revenue/card/bs;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->d:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/revenue/card/bs;->a(Landroid/view/View;Landroid/view/MotionEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/revenue/card/bs;->a(Landroid/view/View;Landroid/view/MotionEvent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/revenue/card/bs;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/revenue/card/bs;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 292
    invoke-static {p0}, Lcom/twitter/library/client/am;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "cct_unwrap_card_url"

    .line 293
    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 292
    :goto_0
    return v0

    .line 293
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcln;)F
    .locals 3

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v0, 0x40200000    # 2.5f

    .line 141
    iget-boolean v2, p0, Lcom/twitter/android/revenue/card/bs;->s:Z

    if-eqz v2, :cond_1

    .line 142
    invoke-virtual {p1, v1}, Lcln;->a(F)F

    move-result v0

    .line 144
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, v0}, Lcln;->a(F)F

    move-result v2

    cmpl-float v2, v2, v0

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Lcom/twitter/android/revenue/card/a;->a()V

    .line 115
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->e:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->e:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0}, Lcom/twitter/media/ui/image/MediaImageView;->j()Z

    .line 118
    :cond_0
    return-void
.end method

.method public a(JLclm;)V
    .locals 3

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/twitter/android/revenue/card/bs;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/revenue/card/bs;->c:Ljava/lang/String;

    .line 151
    const-string/jumbo v0, "website_dest_url"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/revenue/card/bs;->d:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->o:Lcom/twitter/library/card/CardContext;

    invoke-static {v0}, Lcom/twitter/android/revenue/card/aq;->a(Lcom/twitter/library/card/CardContext;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/revenue/card/bs;->d:Ljava/lang/String;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->o:Lcom/twitter/library/card/CardContext;

    invoke-static {v0}, Lcom/twitter/android/revenue/card/be;->a(Lcom/twitter/library/card/CardContext;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/revenue/card/bs;->d:Ljava/lang/String;

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->o:Lcom/twitter/library/card/CardContext;

    invoke-static {v0}, Laaw;->a(Lcom/twitter/library/card/CardContext;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/revenue/card/bs;->d:Ljava/lang/String;

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/android/revenue/card/bs;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    const-string/jumbo v0, "app_url_resolved"

    invoke-static {v0, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/twitter/android/revenue/card/bs;->i:Landroid/content/Context;

    .line 172
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/twitter/android/client/OpenUriHelper;->b(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 173
    iput-object v0, p0, Lcom/twitter/android/revenue/card/bs;->d:Ljava/lang/String;

    .line 177
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->d_:Lcom/twitter/android/card/i;

    const-string/jumbo v1, "_card_data"

    invoke-static {v1, p3}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twitter/android/card/i;->a(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, p3}, Lcom/twitter/android/revenue/card/bs;->b(Lclm;)V

    .line 181
    invoke-virtual {p0, p3}, Lcom/twitter/android/revenue/card/bs;->c(Lclm;)V

    .line 183
    invoke-virtual {p0, p3}, Lcom/twitter/android/revenue/card/bs;->d(Lclm;)V

    .line 185
    invoke-virtual {p0}, Lcom/twitter/android/revenue/card/bs;->i()V

    .line 187
    invoke-virtual {p0, p3}, Lcom/twitter/android/revenue/card/bs;->a(Lclm;)V

    .line 188
    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->p:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    invoke-static {p1, v0}, Lcom/twitter/android/revenue/y;->a(Landroid/content/Context;Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/revenue/card/bs;->s:Z

    .line 86
    iget-boolean v0, p0, Lcom/twitter/android/revenue/card/bs;->s:Z

    if-eqz v0, :cond_0

    .line 87
    const v0, 0x7f04023a

    iput v0, p0, Lcom/twitter/android/revenue/card/bs;->b:I

    .line 90
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04021b

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/revenue/card/bs;->q:Landroid/view/View;

    .line 92
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->q:Landroid/view/View;

    const v1, 0x7f130510

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 93
    iget v1, p0, Lcom/twitter/android/revenue/card/bs;->b:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 94
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->q:Landroid/view/View;

    const v1, 0x7f130511

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/revenue/card/bs;->u:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->r:Lcom/twitter/library/util/y;

    iget-object v1, p0, Lcom/twitter/android/revenue/card/bs;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/twitter/library/util/y;->a(Landroid/view/View;)V

    .line 99
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->q:Landroid/view/View;

    const v1, 0x7f130210

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    iput-object v0, p0, Lcom/twitter/android/revenue/card/bs;->e:Lcom/twitter/media/ui/image/MediaImageView;

    .line 100
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->e:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->e:Lcom/twitter/media/ui/image/MediaImageView;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setAspectRatio(F)V

    .line 102
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->e:Lcom/twitter/media/ui/image/MediaImageView;

    const-string/jumbo v1, "card"

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setImageType(Ljava/lang/String;)V

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->q:Landroid/view/View;

    const v1, 0x7f130507

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/revenue/card/bs;->t:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->q:Landroid/view/View;

    const v1, 0x7f130213

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterButton;

    iput-object v0, p0, Lcom/twitter/android/revenue/card/bs;->g:Lcom/twitter/ui/widget/TwitterButton;

    .line 107
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->q:Landroid/view/View;

    const v1, 0x7f13050e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/revenue/card/bs;->f:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->q:Landroid/view/View;

    const v1, 0x7f130212

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/revenue/card/bs;->h:Landroid/view/View;

    .line 109
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 268
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->p:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    invoke-static {v0}, Lcom/twitter/library/widget/renderablecontent/DisplayMode;->a(Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 270
    const v1, 0x7f0f0113

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v1, v0

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 272
    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 275
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 276
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 280
    :cond_0
    return-void
.end method

.method protected a(Landroid/view/View;Landroid/view/MotionEvent;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/twitter/android/revenue/card/bs;->e()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/twitter/library/scribe/NativeCardUserAction;->a(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;I)Lcom/twitter/library/scribe/NativeCardUserAction;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/twitter/android/revenue/card/bs;->n:Lcom/twitter/android/card/CardActionHelper;

    invoke-virtual {v1, p3, v0}, Lcom/twitter/android/card/CardActionHelper;->a(Ljava/lang/String;Lcom/twitter/library/scribe/NativeCardUserAction;)V

    .line 286
    return-void
.end method

.method a(Lclm;)V
    .locals 4

    .prologue
    .line 191
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 192
    const-string/jumbo v0, "vanity_url"

    invoke-static {v0, p1}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/twitter/android/revenue/card/bs;->t:Landroid/widget/TextView;

    const/4 v2, 0x0

    sget v3, Lcom/twitter/library/util/al;->a:F

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 194
    if-nez v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->t:Landroid/widget/TextView;

    const v1, 0x7f0a09af

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 199
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->t:Landroid/widget/TextView;

    const-string/jumbo v1, "vanity_url"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/revenue/card/bs;->r:Lcom/twitter/library/util/y;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 201
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->t:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/twitter/android/revenue/card/bs;->a(Landroid/view/View;)V

    .line 203
    :cond_0
    return-void

    .line 197
    :cond_1
    iget-object v1, p0, Lcom/twitter/android/revenue/card/bs;->t:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->e:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->e:Lcom/twitter/media/ui/image/MediaImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 125
    :cond_0
    return-void
.end method

.method b(Lclm;)V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->e:Lcom/twitter/media/ui/image/MediaImageView;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/twitter/android/revenue/card/bs;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcln;->a(Ljava/util/List;Lclm;)Lcln;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_0

    .line 209
    iget-object v1, p0, Lcom/twitter/android/revenue/card/bs;->e:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {p0, v0}, Lcom/twitter/android/revenue/card/bs;->a(Lcln;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/twitter/media/ui/image/MediaImageView;->setAspectRatio(F)V

    .line 210
    iget-object v1, p0, Lcom/twitter/android/revenue/card/bs;->e:Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v0, v0, Lcln;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;)Lcom/twitter/media/request/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 211
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->e:Lcom/twitter/media/ui/image/MediaImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setFromMemoryOnly(Z)V

    .line 212
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->e:Lcom/twitter/media/ui/image/MediaImageView;

    const-string/jumbo v1, "promo_image"

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setTag(Ljava/lang/Object;)V

    .line 213
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->e:Lcom/twitter/media/ui/image/MediaImageView;

    iget-object v1, p0, Lcom/twitter/android/revenue/card/bs;->r:Lcom/twitter/library/util/y;

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 216
    :cond_0
    return-void
.end method

.method c(Lclm;)V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 220
    const-string/jumbo v0, "title"

    invoke-static {v0, p1}, Lcom/twitter/library/card/bj;->a(Ljava/lang/String;Lclm;)Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/twitter/android/revenue/card/bs;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->f:Landroid/widget/TextView;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/revenue/card/bs;->r:Lcom/twitter/library/util/y;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 225
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    sget v2, Lcom/twitter/library/util/al;->a:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 226
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/twitter/android/revenue/card/bs;->a(Landroid/view/View;)V

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    sget-object v0, Lcom/twitter/android/revenue/card/bs;->a:Ljava/util/List;

    return-object v0
.end method

.method d(Lclm;)V
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->g:Lcom/twitter/ui/widget/TwitterButton;

    if-eqz v0, :cond_0

    .line 235
    iget-object v1, p0, Lcom/twitter/android/revenue/card/bs;->g:Lcom/twitter/ui/widget/TwitterButton;

    invoke-virtual {p0}, Lcom/twitter/android/revenue/card/bs;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->g:Lcom/twitter/ui/widget/TwitterButton;

    invoke-static {p1}, Lcom/twitter/android/revenue/x;->a(Lclm;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setText(I)V

    .line 237
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->g:Lcom/twitter/ui/widget/TwitterButton;

    const-string/jumbo v1, "button"

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setTag(Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->g:Lcom/twitter/ui/widget/TwitterButton;

    new-instance v1, Lcom/twitter/android/revenue/card/bu;

    iget-object v2, p0, Lcom/twitter/android/revenue/card/bs;->g:Lcom/twitter/ui/widget/TwitterButton;

    invoke-direct {v1, p0, v2}, Lcom/twitter/android/revenue/card/bu;-><init>(Lcom/twitter/android/revenue/card/bs;Lcom/twitter/ui/widget/TwitterButton;)V

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 245
    :cond_0
    return-void

    .line 235
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const-string/jumbo v0, "website_url"

    return-object v0
.end method

.method protected h()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method i()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bs;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/twitter/android/revenue/card/bs;->r:Lcom/twitter/library/util/y;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 265
    :cond_0
    return-void
.end method
