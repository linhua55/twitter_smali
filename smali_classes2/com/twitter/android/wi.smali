.class Lcom/twitter/android/wi;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final a:Landroid/view/animation/Interpolator;

.field private static final b:Landroid/view/animation/Interpolator;


# instance fields
.field private final c:Landroid/view/View;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/animation/AnimatorSet;

.field private f:Landroid/animation/AnimatorSet;

.field private g:Landroid/animation/Animator;

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private final o:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private final p:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/high16 v3, 0x3e800000    # 0.25f

    .line 35
    new-instance v0, Lcwu;

    const/high16 v1, 0x43b10000    # 354.0f

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-direct {v0, v1, v2}, Lcwu;-><init>(FF)V

    sput-object v0, Lcom/twitter/android/wi;->a:Landroid/view/animation/Interpolator;

    .line 36
    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v3, v0, v3, v1}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/wi;->b:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/twitter/android/wi;->c:Landroid/view/View;

    .line 65
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    const v1, 0x7f10004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/wi;->h:I

    .line 67
    const v1, 0x7f10004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/wi;->i:I

    .line 68
    const v1, 0x7f10004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/wi;->j:I

    .line 69
    const v1, 0x7f10004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/wi;->k:I

    .line 70
    const v1, 0x7f10002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/wi;->l:I

    .line 71
    const v1, 0x7f100030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/wi;->m:I

    .line 72
    const v0, 0x7f12006d

    invoke-static {p2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/wi;->n:I

    .line 73
    const v0, 0x7f12016c

    invoke-static {p2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/wi;->o:I

    .line 74
    const v0, 0x7f12008d

    invoke-static {p2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/wi;->p:I

    .line 76
    iget-object v0, p0, Lcom/twitter/android/wi;->c:Landroid/view/View;

    const v1, 0x7f13030c

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/wi;->c:Landroid/view/View;

    const v4, 0x7f13030d

    .line 78
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/twitter/android/wi;->c:Landroid/view/View;

    const v4, 0x7f13030e

    .line 79
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    .line 76
    invoke-static {v0, v1}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/wi;->d:Ljava/util/List;

    .line 80
    return-void
.end method

.method private a(Landroid/view/View;J)Landroid/animation/Animator;
    .locals 6

    .prologue
    .line 297
    iget v4, p0, Lcom/twitter/android/wi;->h:I

    const/high16 v5, 0x42480000    # 50.0f

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/wi;->a(Landroid/view/View;JIF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/View;JIF)Landroid/animation/Animator;
    .locals 4

    .prologue
    .line 306
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p5, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 307
    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 308
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 309
    sget-object v1, Lcom/twitter/android/wi;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 310
    new-instance v1, Lcom/twitter/android/wn;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/wn;-><init>(Lcom/twitter/android/wi;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 316
    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/wi;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/twitter/android/wi;->q:Z

    return v0
.end method

.method static synthetic b(Lcom/twitter/android/wi;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/twitter/android/wi;->o:I

    return v0
.end method

.method private b(Landroid/view/View;)Landroid/animation/Animator;
    .locals 4

    .prologue
    .line 243
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    .line 244
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 245
    iget v1, p0, Lcom/twitter/android/wi;->k:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 246
    sget-object v1, Lcom/twitter/android/wi;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 247
    new-instance v1, Lcom/twitter/android/wl;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/wl;-><init>(Lcom/twitter/android/wi;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 256
    return-object v0

    .line 243
    :array_0
    .array-data 4
        0x0
        0x43960000    # 300.0f
    .end array-data
.end method

.method private b(Landroid/view/View;J)Landroid/animation/Animator;
    .locals 10

    .prologue
    const/high16 v3, 0x3fc00000    # 1.5f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 325
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v1, v8, [F

    aput v3, v1, v7

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 326
    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v8, [F

    aput v3, v2, v7

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 327
    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v8, [F

    aput v5, v3, v7

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 328
    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v8, [F

    aput v5, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 329
    const-string/jumbo v4, "colorFilter"

    new-array v5, v9, [I

    iget v6, p0, Lcom/twitter/android/wi;->o:I

    aput v6, v5, v7

    iget v6, p0, Lcom/twitter/android/wi;->p:I

    aput v6, v5, v8

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 331
    new-instance v5, Landroid/animation/ArgbEvaluator;

    invoke-direct {v5}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 333
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v5, v7

    aput-object v3, v5, v8

    aput-object v4, v5, v9

    invoke-static {p1, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 334
    new-array v3, v9, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v7

    aput-object v1, v3, v8

    invoke-static {p1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 335
    new-instance v1, Lcom/twitter/android/wo;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/wo;-><init>(Lcom/twitter/android/wi;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 343
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 344
    invoke-virtual {v1, p2, p3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 345
    iget v3, p0, Lcom/twitter/android/wi;->i:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 346
    new-array v3, v9, [Landroid/animation/Animator;

    aput-object v0, v3, v7

    aput-object v2, v3, v8

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 347
    return-object v1
.end method

.method private c(Landroid/view/View;)Landroid/animation/Animator;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 264
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 265
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    .line 266
    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 267
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v4, [F

    fill-array-data v3, :array_1

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 268
    new-array v3, v4, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 269
    iget v1, p0, Lcom/twitter/android/wi;->k:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 270
    sget-object v1, Lcom/twitter/android/wi;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 271
    new-instance v1, Lcom/twitter/android/wm;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/wm;-><init>(Lcom/twitter/android/wi;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 281
    return-object v0

    .line 265
    nop

    :array_0
    .array-data 4
        0x0
        -0x3e600000    # -20.0f
    .end array-data

    .line 267
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic c(Lcom/twitter/android/wi;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/twitter/android/wi;->l()V

    return-void
.end method

.method private d(Landroid/view/View;)Landroid/animation/Animator;
    .locals 6

    .prologue
    .line 289
    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/twitter/android/wi;->j:I

    const/high16 v5, 0x43480000    # 200.0f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/wi;->a(Landroid/view/View;JIF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/wi;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/twitter/android/wi;->k()V

    return-void
.end method

.method static synthetic e(Lcom/twitter/android/wi;)Landroid/view/View;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/twitter/android/wi;->c:Landroid/view/View;

    return-object v0
.end method

.method private f()Landroid/animation/AnimatorSet;
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/twitter/android/wi;->e:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 188
    iget-object v1, p0, Lcom/twitter/android/wi;->c:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/twitter/android/wi;->d(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 189
    invoke-direct {p0}, Lcom/twitter/android/wi;->g()Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-direct {p0}, Lcom/twitter/android/wi;->h()Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 190
    iput-object v0, p0, Lcom/twitter/android/wi;->e:Landroid/animation/AnimatorSet;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/wi;->e:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method private g()Landroid/animation/AnimatorSet;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 202
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 203
    const/4 v0, 0x3

    new-array v2, v0, [Landroid/animation/Animator;

    iget-object v0, p0, Lcom/twitter/android/wi;->d:Ljava/util/List;

    .line 204
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-wide/16 v4, 0x0

    invoke-direct {p0, v0, v4, v5}, Lcom/twitter/android/wi;->a(Landroid/view/View;J)Landroid/animation/Animator;

    move-result-object v0

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/twitter/android/wi;->d:Ljava/util/List;

    .line 205
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v3, p0, Lcom/twitter/android/wi;->h:I

    div-int/lit8 v3, v3, 0x2

    int-to-long v4, v3

    invoke-direct {p0, v0, v4, v5}, Lcom/twitter/android/wi;->a(Landroid/view/View;J)Landroid/animation/Animator;

    move-result-object v0

    aput-object v0, v2, v6

    iget-object v0, p0, Lcom/twitter/android/wi;->d:Ljava/util/List;

    .line 206
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v3, p0, Lcom/twitter/android/wi;->h:I

    int-to-long v4, v3

    invoke-direct {p0, v0, v4, v5}, Lcom/twitter/android/wi;->a(Landroid/view/View;J)Landroid/animation/Animator;

    move-result-object v0

    aput-object v0, v2, v7

    .line 203
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 208
    return-object v1
.end method

.method private h()Landroid/animation/AnimatorSet;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 217
    iget-object v0, p0, Lcom/twitter/android/wi;->f:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 219
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 220
    const/4 v0, 0x3

    new-array v2, v0, [Landroid/animation/Animator;

    iget-object v0, p0, Lcom/twitter/android/wi;->d:Ljava/util/List;

    .line 221
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-wide/16 v4, 0x0

    invoke-direct {p0, v0, v4, v5}, Lcom/twitter/android/wi;->b(Landroid/view/View;J)Landroid/animation/Animator;

    move-result-object v0

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/twitter/android/wi;->d:Ljava/util/List;

    .line 222
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v3, p0, Lcom/twitter/android/wi;->i:I

    div-int/lit8 v3, v3, 0x2

    int-to-long v4, v3

    invoke-direct {p0, v0, v4, v5}, Lcom/twitter/android/wi;->b(Landroid/view/View;J)Landroid/animation/Animator;

    move-result-object v0

    aput-object v0, v2, v6

    iget-object v0, p0, Lcom/twitter/android/wi;->d:Ljava/util/List;

    .line 223
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v3, p0, Lcom/twitter/android/wi;->i:I

    int-to-long v4, v3

    invoke-direct {p0, v0, v4, v5}, Lcom/twitter/android/wi;->b(Landroid/view/View;J)Landroid/animation/Animator;

    move-result-object v0

    aput-object v0, v2, v7

    .line 220
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 224
    new-instance v0, Lcom/twitter/android/wk;

    invoke-direct {v0, p0}, Lcom/twitter/android/wk;-><init>(Lcom/twitter/android/wi;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 233
    iput-object v1, p0, Lcom/twitter/android/wi;->f:Landroid/animation/AnimatorSet;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/wi;->f:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method private i()Landroid/animation/Animator;
    .locals 4

    .prologue
    .line 356
    iget-object v0, p0, Lcom/twitter/android/wi;->g:Landroid/animation/Animator;

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/twitter/android/wi;->c:Landroid/view/View;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    .line 358
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 359
    iget v1, p0, Lcom/twitter/android/wi;->k:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 360
    sget-object v1, Lcom/twitter/android/wi;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 361
    new-instance v1, Lcom/twitter/android/wp;

    invoke-direct {v1, p0}, Lcom/twitter/android/wp;-><init>(Lcom/twitter/android/wi;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 368
    iput-object v0, p0, Lcom/twitter/android/wi;->g:Landroid/animation/Animator;

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/wi;->g:Landroid/animation/Animator;

    return-object v0

    .line 357
    :array_0
    .array-data 4
        0x0
        0x43960000    # 300.0f
    .end array-data
.end method

.method private j()Landroid/animation/Animator;
    .locals 4

    .prologue
    .line 379
    iget-object v0, p0, Lcom/twitter/android/wi;->c:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 380
    iget v1, p0, Lcom/twitter/android/wi;->k:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 381
    new-instance v1, Lcom/twitter/android/wq;

    invoke-direct {v1, p0}, Lcom/twitter/android/wq;-><init>(Lcom/twitter/android/wi;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 389
    return-object v0

    .line 379
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private k()V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/twitter/android/wi;->c:Landroid/view/View;

    const v1, 0x7f13030b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 394
    iget-object v0, p0, Lcom/twitter/android/wi;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 395
    iget-object v0, p0, Lcom/twitter/android/wi;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 396
    return-void
.end method

.method private l()V
    .locals 5

    .prologue
    .line 399
    iget-object v0, p0, Lcom/twitter/android/wi;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 400
    check-cast v0, Landroid/widget/ImageView;

    .line 401
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/twitter/android/wi;->n:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 402
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 404
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 6

    .prologue
    const/4 v3, 0x2

    .line 161
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 162
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 164
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 165
    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 166
    iget v0, p0, Lcom/twitter/android/wi;->m:I

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 167
    iget v0, p0, Lcom/twitter/android/wi;->l:I

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 169
    new-instance v0, Lcom/twitter/android/wj;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/wj;-><init>(Lcom/twitter/android/wi;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 176
    return-object v2

    .line 161
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 162
    :array_1
    .array-data 4
        0x42200000    # 40.0f
        0x0
    .end array-data
.end method

.method public a()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/wi;->q:Z

    .line 87
    invoke-direct {p0}, Lcom/twitter/android/wi;->f()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 88
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 129
    invoke-direct {p0, v0}, Lcom/twitter/android/wi;->d(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 139
    invoke-direct {p0, v0}, Lcom/twitter/android/wi;->b(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 142
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 143
    invoke-direct {p0, v0}, Lcom/twitter/android/wi;->c(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_1

    .line 145
    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/wi;->q:Z

    .line 95
    invoke-direct {p0}, Lcom/twitter/android/wi;->i()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 96
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/wi;->q:Z

    .line 103
    invoke-direct {p0}, Lcom/twitter/android/wi;->j()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 104
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 110
    iget-object v0, p0, Lcom/twitter/android/wi;->c:Landroid/view/View;

    const v1, 0x7f13030b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move v1, v2

    .line 111
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 112
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/wi;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 116
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 119
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/wi;->q:Z

    .line 120
    invoke-direct {p0}, Lcom/twitter/android/wi;->h()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 121
    iget-object v0, p0, Lcom/twitter/android/wi;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 122
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/twitter/android/wi;->f:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/wi;->q:Z

    .line 154
    :cond_0
    return-void
.end method
