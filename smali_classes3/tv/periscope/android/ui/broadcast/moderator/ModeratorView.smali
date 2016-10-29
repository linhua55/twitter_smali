.class public Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;
.super Landroid/widget/LinearLayout;
.source "Twttr"


# instance fields
.field private A:Ltv/periscope/android/ui/broadcast/moderator/p;

.field private a:Landroid/animation/Animator;

.field private b:Landroid/animation/Animator;

.field private c:Landroid/animation/Animator;

.field private d:Landroid/animation/Animator;

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:Z

.field private j:I

.field private k:Landroid/view/View;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/ProgressBar;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Landroid/view/View;

.field private t:Landroid/widget/Button;

.field private u:Landroid/widget/Button;

.field private v:Landroid/widget/Button;

.field private final w:I

.field private final x:I

.field private y:Ltv/periscope/android/ui/broadcast/moderator/n;

.field private z:Ltv/periscope/android/ui/broadcast/moderator/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/16 v3, 0x1f4

    .line 233
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->i:Z

    .line 235
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/n;->ps__moderator_overlay:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 237
    sget v0, Ltv/periscope/android/library/l;->info_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->o:Landroid/view/View;

    .line 238
    sget v0, Ltv/periscope/android/library/l;->info:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->m:Landroid/widget/TextView;

    .line 239
    sget v0, Ltv/periscope/android/library/l;->timer:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->p:Landroid/widget/ProgressBar;

    .line 240
    sget v0, Ltv/periscope/android/library/l;->moderator_out_of_time:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->s:Landroid/view/View;

    .line 241
    sget v0, Ltv/periscope/android/library/l;->learn_more_about_moderation:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->n:Landroid/widget/TextView;

    .line 242
    sget v0, Ltv/periscope/android/library/l;->buttons_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->q:Landroid/view/View;

    .line 243
    sget v0, Ltv/periscope/android/library/l;->negative:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->t:Landroid/widget/Button;

    .line 244
    sget v0, Ltv/periscope/android/library/l;->positive:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->u:Landroid/widget/Button;

    .line 245
    sget v0, Ltv/periscope/android/library/l;->neutral:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->v:Landroid/widget/Button;

    .line 248
    sget v0, Ltv/periscope/android/library/l;->message_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->r:Landroid/view/View;

    .line 249
    sget v0, Ltv/periscope/android/library/l;->message:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->k:Landroid/view/View;

    .line 250
    sget v0, Ltv/periscope/android/library/l;->message_moderate_body:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->l:Landroid/widget/TextView;

    .line 252
    new-instance v0, Ltv/periscope/android/ui/broadcast/moderator/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltv/periscope/android/ui/broadcast/moderator/m;-><init>(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;Ltv/periscope/android/ui/broadcast/moderator/c;)V

    .line 253
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->t:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->u:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->v:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    new-instance v0, Ltv/periscope/android/ui/broadcast/moderator/p;

    invoke-direct {v0, p0}, Ltv/periscope/android/ui/broadcast/moderator/p;-><init>(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->A:Ltv/periscope/android/ui/broadcast/moderator/p;

    .line 260
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 262
    sget v1, Ltv/periscope/android/library/j;->ps__moderator_timer_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->h:F

    .line 264
    invoke-direct {p0, v3}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->b(I)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->a:Landroid/animation/Animator;

    .line 265
    const/16 v1, 0x3e8

    invoke-direct {p0, v1}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->c(I)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->b:Landroid/animation/Animator;

    .line 266
    invoke-direct {p0, v3}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->d(I)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->c:Landroid/animation/Animator;

    .line 267
    invoke-direct {p0, v3}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->e(I)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->d:Landroid/animation/Animator;

    .line 269
    sget v1, Ltv/periscope/android/library/j;->ps__moderator_timer_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->w:I

    .line 270
    sget v1, Ltv/periscope/android/library/j;->ps__moderator_timer_height_small:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->x:I

    .line 272
    sget v1, Ltv/periscope/android/library/j;->ps__moderator_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->e:F

    .line 274
    sget v1, Ltv/periscope/android/library/j;->ps__moderator_button_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Ltv/periscope/android/library/j;->ps__moderator_ui_component_spacing:I

    .line 275
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->f:F

    .line 276
    return-void
.end method

.method static synthetic a(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;Ltv/periscope/android/ui/broadcast/moderator/o;)Ltv/periscope/android/ui/broadcast/moderator/o;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->z:Ltv/periscope/android/ui/broadcast/moderator/o;

    return-object p1
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->a(II)V

    .line 412
    return-void
.end method

.method private a(II)V
    .locals 4

    .prologue
    .line 402
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->A:Ltv/periscope/android/ui/broadcast/moderator/p;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Ltv/periscope/android/ui/broadcast/moderator/p;->sendEmptyMessageDelayed(IJ)Z

    .line 403
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->A:Ltv/periscope/android/ui/broadcast/moderator/p;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/moderator/p;->sendEmptyMessage(I)Z

    .line 404
    return-void
.end method

.method static synthetic a(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;F)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->setCountdownTimerBackgroundAlpha(F)V

    return-void
.end method

.method static synthetic a(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->a(I)V

    return-void
.end method

.method static synthetic a(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->i:Z

    return p1
.end method

.method private b(I)Landroid/animation/Animator;
    .locals 12

    .prologue
    .line 449
    .line 456
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->q:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 457
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->m:Landroid/widget/TextView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 458
    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->q:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    iget v6, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->g:F

    aput v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 460
    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->p:Landroid/widget/ProgressBar;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget v7, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->g:F

    iget v8, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->h:F

    add-float/2addr v7, v8

    aput v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 462
    iget-object v4, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->r:Landroid/view/View;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    iget v8, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->g:F

    iget v9, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->h:F

    add-float/2addr v8, v9

    aput v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 464
    iget-object v5, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->k:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    iget-object v9, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->k:Landroid/view/View;

    .line 465
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v7, v8

    .line 464
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 466
    iget-object v6, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->o:Landroid/view/View;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    iget v10, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->g:F

    iget v11, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->h:F

    add-float/2addr v10, v11

    iget-object v11, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->k:Landroid/view/View;

    .line 467
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    aput v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 466
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 468
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 469
    int-to-long v8, p1

    invoke-virtual {v7, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 470
    const/4 v8, 0x7

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v0, 0x1

    aput-object v1, v8, v0

    const/4 v0, 0x2

    aput-object v2, v8, v0

    const/4 v0, 0x3

    aput-object v3, v8, v0

    const/4 v0, 0x4

    aput-object v5, v8, v0

    const/4 v0, 0x5

    aput-object v4, v8, v0

    const/4 v0, 0x6

    aput-object v6, v8, v0

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 471
    new-instance v0, Ltv/periscope/android/ui/broadcast/moderator/c;

    invoke-direct {v0, p0, v5, v6}, Ltv/periscope/android/ui/broadcast/moderator/c;-><init>(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 500
    return-object v7

    .line 456
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 457
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic b(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Ltv/periscope/android/ui/broadcast/moderator/n;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->y:Ltv/periscope/android/ui/broadcast/moderator/n;

    return-object v0
.end method

.method private c(I)Landroid/animation/Animator;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 504
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->m:Landroid/widget/TextView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v6, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 505
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 506
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->m:Landroid/widget/TextView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v6, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 507
    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 509
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 510
    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v0, v3, v7

    aput-object v1, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 512
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->p:Landroid/widget/ProgressBar;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v6, [F

    fill-array-data v3, :array_2

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 513
    int-to-long v4, p1

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 514
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->p:Landroid/widget/ProgressBar;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_3

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 515
    int-to-long v4, p1

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 517
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 518
    new-array v4, v6, [Landroid/animation/Animator;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 520
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 521
    new-array v1, v6, [Landroid/animation/Animator;

    aput-object v3, v1, v7

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 522
    new-instance v1, Ltv/periscope/android/ui/broadcast/moderator/e;

    invoke-direct {v1, p0}, Ltv/periscope/android/ui/broadcast/moderator/e;-><init>(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 528
    return-object v0

    .line 504
    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    .line 506
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    .line 512
    :array_2
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    .line 514
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method static synthetic c(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->i:Z

    return v0
.end method

.method private d(I)Landroid/animation/Animator;
    .locals 14

    .prologue
    .line 532
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->q:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 533
    new-instance v1, Ltv/periscope/android/view/ab;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->q:Landroid/view/View;

    invoke-direct {v1, v2}, Ltv/periscope/android/view/ab;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 535
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->q:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->g:F

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 536
    new-instance v1, Ltv/periscope/android/ui/broadcast/moderator/f;

    invoke-direct {v1, p0}, Ltv/periscope/android/ui/broadcast/moderator/f;-><init>(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)V

    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 543
    iget v4, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->h:F

    .line 544
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->p:Landroid/widget/ProgressBar;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->g:F

    add-float/2addr v7, v4

    aput v7, v5, v6

    invoke-static {v1, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 545
    new-instance v1, Ltv/periscope/android/ui/broadcast/moderator/g;

    invoke-direct {v1, p0, v4}, Ltv/periscope/android/ui/broadcast/moderator/g;-><init>(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;F)V

    invoke-virtual {v3, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 552
    iget v6, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->h:F

    .line 553
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->r:Landroid/view/View;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    const/4 v8, 0x1

    iget v9, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->g:F

    add-float/2addr v9, v6

    aput v9, v7, v8

    invoke-static {v1, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 554
    new-instance v1, Ltv/periscope/android/ui/broadcast/moderator/h;

    invoke-direct {v1, p0, v6}, Ltv/periscope/android/ui/broadcast/moderator/h;-><init>(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;F)V

    invoke-virtual {v5, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 561
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->k:Landroid/view/View;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->k:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    aput v10, v8, v9

    invoke-static {v1, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 562
    new-instance v1, Ltv/periscope/android/ui/broadcast/moderator/i;

    invoke-direct {v1, p0}, Ltv/periscope/android/ui/broadcast/moderator/i;-><init>(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)V

    invoke-virtual {v7, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 569
    iget v9, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->h:F

    .line 570
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->o:Landroid/view/View;

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->k:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v12, v9

    iget v13, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->g:F

    add-float/2addr v12, v13

    aput v12, v10, v11

    invoke-static {v1, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 571
    new-instance v1, Ltv/periscope/android/ui/broadcast/moderator/j;

    invoke-direct {v1, p0, v9}, Ltv/periscope/android/ui/broadcast/moderator/j;-><init>(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;F)V

    invoke-virtual {v8, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 578
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    .line 579
    int-to-long v12, p1

    invoke-virtual {v10, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 580
    const/4 v1, 0x6

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v0, v1, v11

    const/4 v0, 0x1

    aput-object v2, v1, v0

    const/4 v0, 0x2

    aput-object v3, v1, v0

    const/4 v0, 0x3

    aput-object v7, v1, v0

    const/4 v0, 0x4

    aput-object v5, v1, v0

    const/4 v0, 0x5

    aput-object v8, v1, v0

    invoke-virtual {v10, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 581
    new-instance v0, Ltv/periscope/android/ui/broadcast/moderator/k;

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Ltv/periscope/android/ui/broadcast/moderator/k;-><init>(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;FLandroid/animation/ObjectAnimator;FLandroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;F)V

    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 598
    return-object v10

    .line 532
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic d(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Ltv/periscope/android/ui/broadcast/moderator/p;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->A:Ltv/periscope/android/ui/broadcast/moderator/p;

    return-object v0
.end method

.method private e(I)Landroid/animation/Animator;
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 602
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->d(I)Landroid/animation/Animator;

    move-result-object v0

    .line 603
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->o:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v6, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 604
    new-instance v2, Ltv/periscope/android/view/ab;

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->o:Landroid/view/View;

    invoke-direct {v2, v3}, Ltv/periscope/android/view/ab;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 606
    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->s:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 607
    new-instance v3, Ltv/periscope/android/view/aa;

    iget-object v4, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->s:Landroid/view/View;

    invoke-direct {v3, v4}, Ltv/periscope/android/view/aa;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 609
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 610
    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 611
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    aput-object v0, v4, v6

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 612
    new-instance v0, Ltv/periscope/android/ui/broadcast/moderator/l;

    invoke-direct {v0, p0}, Ltv/periscope/android/ui/broadcast/moderator/l;-><init>(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 623
    return-object v3

    .line 603
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 606
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic e(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->t:Landroid/widget/Button;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 429
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 430
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    .line 431
    sub-int v0, v1, v0

    int-to-float v0, v0

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 433
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 434
    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    .line 436
    const/16 v2, 0xff

    const v3, 0x3e4ccccd    # 0.2f

    add-float/2addr v1, v3

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 437
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v2, 0x102000d

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 439
    :cond_0
    return-void
.end method

.method static synthetic f(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->u:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic g(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->v:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic h(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->p:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic i(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->e()V

    return-void
.end method

.method static synthetic j(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Ltv/periscope/android/ui/broadcast/moderator/o;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->z:Ltv/periscope/android/ui/broadcast/moderator/o;

    return-object v0
.end method

.method static synthetic k(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->o:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->s:Landroid/view/View;

    return-object v0
.end method

.method static synthetic m(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->k:Landroid/view/View;

    return-object v0
.end method

.method static synthetic n(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)F
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->g:F

    return v0
.end method

.method static synthetic o(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)F
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->h:F

    return v0
.end method

.method static synthetic p(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic q(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->q:Landroid/view/View;

    return-object v0
.end method

.method static synthetic r(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->r:Landroid/view/View;

    return-object v0
.end method

.method static synthetic s(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->j:I

    return v0
.end method

.method private setChildrenVisibility(I)V
    .locals 3

    .prologue
    .line 395
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->getChildCount()I

    move-result v1

    .line 396
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 397
    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 396
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    :cond_0
    return-void
.end method

.method private setCountdownTimerBackgroundAlpha(F)V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 443
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_0

    .line 444
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const/high16 v1, 0x1020000

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 446
    :cond_0
    return-void
.end method

.method private setReportType(Ltv/periscope/model/chat/MessageType$ReportType;)V
    .locals 2

    .prologue
    .line 313
    sget-object v0, Ltv/periscope/android/ui/broadcast/moderator/d;->b:[I

    invoke-virtual {p1}, Ltv/periscope/model/chat/MessageType$ReportType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 319
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->t:Landroid/widget/Button;

    sget v1, Ltv/periscope/android/library/p;->ps__moderator_negative:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 322
    :goto_0
    return-void

    .line 315
    :pswitch_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->t:Landroid/widget/Button;

    sget v1, Ltv/periscope/android/library/p;->ps__moderator_negative_spam:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic t(Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->b:Landroid/animation/Animator;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->d()V

    .line 348
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->setVisibility(I)V

    .line 349
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->m:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 357
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->x:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 367
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 415
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 416
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->d:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 417
    const v0, 0x3e4ccccd    # 0.2f

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->setCountdownTimerBackgroundAlpha(F)V

    .line 418
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 419
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 420
    iput-boolean v2, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->i:Z

    .line 421
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->A:Ltv/periscope/android/ui/broadcast/moderator/p;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/moderator/p;->a()V

    .line 422
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->p:Landroid/widget/ProgressBar;

    iget v1, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 423
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->p:Landroid/widget/ProgressBar;

    iget v1, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 424
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->e()V

    .line 425
    invoke-direct {p0, v2}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->setChildrenVisibility(I)V

    .line 426
    return-void
.end method

.method public getButtonsTranslation()F
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->g:F

    return v0
.end method

.method public getInfoContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->o:Landroid/view/View;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 280
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 281
    iget v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->e:F

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->q:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->f:F

    sub-float/2addr v0, v1

    iput v0, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->g:F

    .line 282
    return-void
.end method

.method public setModeratorSelectionListener(Ltv/periscope/android/ui/broadcast/moderator/n;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->y:Ltv/periscope/android/ui/broadcast/moderator/n;

    .line 371
    return-void
.end method
