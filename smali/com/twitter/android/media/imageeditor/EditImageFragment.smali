.class public Lcom/twitter/android/media/imageeditor/EditImageFragment;
.super Lcom/twitter/library/client/AbsFragment;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final a:Lcom/twitter/android/media/imageeditor/ab;

.field private static final q:[I

.field private static final r:[I


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/view/View;

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:Lcom/twitter/model/media/EditableImage;

.field private H:Z

.field private I:I

.field b:I

.field c:I

.field d:I

.field e:F

.field f:Z

.field g:Lcom/twitter/android/media/imageeditor/z;

.field h:Lcom/twitter/android/media/imageeditor/n;

.field i:Lcom/twitter/android/media/widget/FilterFilmstripView;

.field j:Landroid/widget/ImageButton;

.field k:Landroid/view/View;

.field l:Lcom/twitter/media/ui/image/MediaImageView;

.field m:Lcom/twitter/android/media/stickers/data/a;

.field n:Landroid/view/View;

.field o:Landroid/view/View;

.field p:Lcom/twitter/android/composer/ComposerType;

.field private final s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/twitter/model/media/EditableImage;",
            "Lcom/twitter/android/media/imageeditor/aa;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/twitter/media/filters/Filters;

.field private u:Ljava/lang/String;

.field private v:Landroid/widget/ImageButton;

.field private w:Lcom/twitter/android/media/imageeditor/x;

.field private x:Lcom/twitter/android/media/imageeditor/ad;

.field private y:Lcom/twitter/android/media/imageeditor/y;

.field private z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/twitter/android/media/imageeditor/ab;

    invoke-direct {v0}, Lcom/twitter/android/media/imageeditor/ab;-><init>()V

    sput-object v0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->a:Lcom/twitter/android/media/imageeditor/ab;

    .line 143
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->q:[I

    .line 153
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->r:[I

    return-void

    .line 143
    nop

    :array_0
    .array-data 4
        0x7f13032c
        0x7f13032b
        0x7f13032d
        0x7f13032e
        0x7f130333
        0x7f130330
        0x7f130331
        0x7f130332
    .end array-data

    .line 153
    :array_1
    .array-data 4
        0x7f130333
        0x7f130330
        0x7f130331
        0x7f130332
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/twitter/library/client/AbsFragment;-><init>()V

    .line 160
    const/4 v0, 0x1

    iput v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->b:I

    .line 177
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->s:Ljava/util/Map;

    return-void
.end method

.method public static a(Lcom/twitter/android/media/imageeditor/x;Lcom/twitter/android/media/imageeditor/y;Landroid/view/View;Lcom/twitter/android/widget/RevealClipFrameLayout;Lcom/twitter/model/media/EditableImage;ILjava/lang/String;)Lcom/twitter/android/media/imageeditor/EditImageFragment;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 215
    invoke-interface {p0}, Lcom/twitter/android/media/imageeditor/x;->getInitialPosition()I

    move-result v1

    .line 216
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 217
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a041f

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 219
    const/4 v0, 0x0

    .line 270
    :goto_0
    return-object v0

    .line 221
    :cond_0
    invoke-virtual {p3, v0}, Lcom/twitter/android/widget/RevealClipFrameLayout;->setVisibility(I)V

    .line 223
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Lcom/twitter/android/widget/RevealClipFrameLayout;->setAlpha(F)V

    .line 224
    new-instance v2, Lcom/twitter/android/media/imageeditor/m;

    invoke-direct {v2}, Lcom/twitter/android/media/imageeditor/m;-><init>()V

    .line 225
    if-eqz p6, :cond_1

    .line 226
    invoke-virtual {v2, p6}, Lcom/twitter/android/media/imageeditor/m;->a(Ljava/lang/String;)Lcom/twitter/android/media/imageeditor/m;

    .line 230
    :cond_1
    invoke-static {v0}, Lcbd;->a(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    if-ne p5, v3, :cond_2

    .line 231
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v3

    .line 232
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "sticker_selector_tooltip"

    .line 234
    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    .line 232
    invoke-static {v4, v5, v6, v7}, Lcom/twitter/android/util/t;->a(Landroid/content/Context;Ljava/lang/String;J)Lcom/twitter/android/util/t;

    move-result-object v3

    .line 235
    invoke-virtual {v3}, Lcom/twitter/android/util/t;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    move p5, v0

    .line 241
    :cond_2
    invoke-virtual {v2, v1}, Lcom/twitter/android/media/imageeditor/m;->a(I)Lcom/twitter/android/media/imageeditor/m;

    move-result-object v0

    .line 242
    invoke-virtual {v0, p5}, Lcom/twitter/android/media/imageeditor/m;->b(I)Lcom/twitter/android/media/imageeditor/m;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/m;->a()Lcom/twitter/android/media/imageeditor/EditImageFragment;

    move-result-object v0

    .line 245
    invoke-virtual {v0, p1}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->a(Lcom/twitter/android/media/imageeditor/y;)V

    .line 246
    invoke-virtual {v0, p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->a(Lcom/twitter/android/media/imageeditor/x;)V

    .line 248
    invoke-direct {v0, p4}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->a(Lcom/twitter/model/media/EditableImage;)V

    .line 250
    invoke-interface {p0, v1}, Lcom/twitter/android/media/imageeditor/x;->a(I)Lcom/twitter/util/concurrent/j;

    move-result-object v1

    .line 251
    new-instance v2, Lcom/twitter/android/media/imageeditor/b;

    invoke-direct {v2, v1, v0, p2, p3}, Lcom/twitter/android/media/imageeditor/b;-><init>(Lcom/twitter/util/concurrent/j;Lcom/twitter/android/media/imageeditor/EditImageFragment;Landroid/view/View;Lcom/twitter/android/widget/RevealClipFrameLayout;)V

    invoke-virtual {v0, v2}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->a(Lcom/twitter/android/media/imageeditor/z;)V

    .line 269
    invoke-virtual {v0, v1}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->a(Lcom/twitter/util/concurrent/j;)V

    goto :goto_0
.end method

.method public static a(Lcom/twitter/android/media/imageeditor/x;Lcom/twitter/android/media/imageeditor/y;Landroid/view/View;Lcom/twitter/android/widget/RevealClipFrameLayout;Lcom/twitter/model/media/EditableImage;Ljava/lang/String;)Lcom/twitter/android/media/imageeditor/EditImageFragment;
    .locals 7

    .prologue
    .line 203
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->a(Lcom/twitter/android/media/imageeditor/x;Lcom/twitter/android/media/imageeditor/y;Landroid/view/View;Lcom/twitter/android/widget/RevealClipFrameLayout;Lcom/twitter/model/media/EditableImage;ILjava/lang/String;)Lcom/twitter/android/media/imageeditor/EditImageFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/media/imageeditor/EditImageFragment;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/view/View;Lcom/twitter/model/media/EditableImage;Lcom/twitter/android/widget/RevealClipFrameLayout;Lcom/twitter/android/media/imageeditor/EditImageFragment;)V
    .locals 11

    .prologue
    .line 279
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 280
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 281
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    .line 282
    invoke-virtual {p2, v0}, Lcom/twitter/android/widget/RevealClipFrameLayout;->getLocationInWindow([I)V

    .line 283
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x0

    aget v4, v0, v4

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 284
    const/4 v2, 0x1

    const/4 v3, 0x1

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v0, v0, v4

    sub-int v0, v3, v0

    aput v0, v1, v2

    .line 287
    new-instance v2, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/twitter/android/widget/RevealClipFrameLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p2}, Lcom/twitter/android/widget/RevealClipFrameLayout;->getMeasuredHeight()I

    move-result v5

    invoke-direct {v2, v0, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 288
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p1, Lcom/twitter/model/media/EditableImage;->k:Lcom/twitter/media/model/MediaFile;

    check-cast v0, Lcom/twitter/media/model/ImageFile;

    iget-object v0, v0, Lcom/twitter/media/model/ImageFile;->e:Lcom/twitter/util/math/Size;

    invoke-virtual {v0}, Lcom/twitter/util/math/Size;->a()I

    move-result v6

    iget-object v0, p1, Lcom/twitter/model/media/EditableImage;->k:Lcom/twitter/media/model/MediaFile;

    check-cast v0, Lcom/twitter/media/model/ImageFile;

    iget-object v0, v0, Lcom/twitter/media/model/ImageFile;->e:Lcom/twitter/util/math/Size;

    .line 289
    invoke-virtual {v0}, Lcom/twitter/util/math/Size;->b()I

    move-result v0

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 290
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 291
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 293
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 294
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 296
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/twitter/android/widget/RevealClipFrameLayout;->setPivotX(F)V

    .line 297
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/twitter/android/widget/RevealClipFrameLayout;->setPivotY(F)V

    .line 300
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 301
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 303
    invoke-virtual {p1}, Lcom/twitter/model/media/EditableImage;->bo_()F

    move-result v0

    .line 304
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    .line 305
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/twitter/android/widget/RevealClipFrameLayout;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v3

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 308
    :goto_0
    const-string/jumbo v4, "clipX"

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 309
    const-string/jumbo v5, "clipY"

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v2, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 310
    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v5, v6, v4

    invoke-static {p2, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 313
    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v0, v6, v7

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v6, v7

    invoke-static {p2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 314
    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v0, v7, v8

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    invoke-static {p2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 315
    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v1, v10

    int-to-float v10, v10

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    mul-float/2addr v3, v0

    sub-float v3, v10, v3

    aput v3, v8, v9

    const/4 v3, 0x1

    const/4 v9, 0x0

    aput v9, v8, v3

    invoke-static {p2, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 317
    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/4 v10, 0x1

    aget v1, v1, v10

    int-to-float v1, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    aput v0, v8, v9

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, v8, v0

    invoke-static {p2, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 320
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 321
    const/4 v2, 0x5

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v5, v2, v7

    const/4 v5, 0x1

    aput-object v6, v2, v5

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v0, 0x4

    aput-object v4, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 323
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 324
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 326
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    invoke-static {p2, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 327
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 328
    new-instance v2, Lcom/twitter/android/media/imageeditor/d;

    invoke-direct {v2, p3}, Lcom/twitter/android/media/imageeditor/d;-><init>(Lcom/twitter/android/media/imageeditor/EditImageFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 336
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 337
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 338
    return-void

    .line 306
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/twitter/android/widget/RevealClipFrameLayout;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v4, v2

    int-to-float v4, v4

    div-float/2addr v0, v4

    goto/16 :goto_0

    .line 279
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 281
    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 326
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lcom/twitter/android/media/imageeditor/EditImageFragment;Lcom/twitter/android/media/imageeditor/af;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->a(Lcom/twitter/android/media/imageeditor/af;)V

    return-void
.end method

.method private a(Lcom/twitter/android/media/imageeditor/af;)V
    .locals 2

    .prologue
    .line 707
    invoke-virtual {p1}, Lcom/twitter/android/media/imageeditor/af;->a()Lcom/twitter/model/media/EditableImage;

    move-result-object v0

    .line 708
    invoke-virtual {p1}, Lcom/twitter/android/media/imageeditor/af;->h()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/model/media/EditableImage;->h:Ljava/util/List;

    .line 709
    return-void
.end method

.method private a(Lcom/twitter/model/media/EditableImage;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->G:Lcom/twitter/model/media/EditableImage;

    .line 615
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/media/imageeditor/EditImageFragment;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/twitter/android/media/imageeditor/EditImageFragment;)I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->I:I

    return v0
.end method

.method private b(Lcom/twitter/model/media/EditableImage;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 712
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->y:Lcom/twitter/android/media/imageeditor/y;

    if-nez v0, :cond_0

    .line 729
    :goto_0
    return-void

    .line 715
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/widget/GalleryGridFragment;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 716
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->y:Lcom/twitter/android/media/imageeditor/y;

    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->t:Lcom/twitter/media/filters/Filters;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->t:Lcom/twitter/media/filters/Filters;

    iget v2, p1, Lcom/twitter/model/media/EditableImage;->c:I

    .line 719
    invoke-virtual {v0, v2}, Lcom/twitter/media/filters/Filters;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 716
    :goto_1
    invoke-interface {v1, p1, v0}, Lcom/twitter/android/media/imageeditor/y;->a(Lcom/twitter/model/media/EditableImage;Ljava/lang/String;)V

    goto :goto_0

    .line 719
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 722
    :cond_2
    new-instance v0, Lcom/twitter/android/runtimepermissions/b;

    .line 723
    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0652

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 724
    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    const-string/jumbo v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v4, v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/runtimepermissions/b;-><init>(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;)V

    const-string/jumbo v1, ":%s::"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->u:Ljava/lang/String;

    aput-object v3, v2, v6

    .line 725
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/runtimepermissions/b;->f(Ljava/lang/String;)Lcom/twitter/android/runtimepermissions/b;

    move-result-object v0

    .line 726
    invoke-virtual {v0}, Lcom/twitter/android/runtimepermissions/b;->a()Landroid/content/Intent;

    move-result-object v0

    .line 727
    invoke-virtual {p0, v0, v5}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 988
    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 989
    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 990
    const-string/jumbo v2, "sticker_edit_tooltip"

    .line 991
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    .line 990
    invoke-static {v0, v2, v4, v5}, Lcom/twitter/android/util/t;->a(Landroid/content/Context;Ljava/lang/String;J)Lcom/twitter/android/util/t;

    move-result-object v1

    .line 992
    invoke-virtual {v1}, Lcom/twitter/android/util/t;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 993
    invoke-static {v0, p1}, Lcom/twitter/ui/widget/Tooltip;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    const v2, 0x7f0a0882

    .line 994
    invoke-virtual {v0, v2}, Lcom/twitter/ui/widget/ad;->a(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    const v2, 0x7f0d0307

    .line 995
    invoke-virtual {v0, v2}, Lcom/twitter/ui/widget/ad;->b(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    const v2, 0x7f130326

    .line 996
    invoke-virtual {v0, v2}, Lcom/twitter/ui/widget/ad;->d(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    .line 997
    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "sticker_edit_tooltip"

    invoke-virtual {v0, v2, v3}, Lcom/twitter/ui/widget/ad;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Lcom/twitter/ui/widget/Tooltip;

    .line 998
    invoke-virtual {v1}, Lcom/twitter/android/util/t;->b()V

    .line 999
    const/4 v0, 0x1

    .line 1001
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/twitter/android/media/imageeditor/EditImageFragment;)I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->E:I

    return v0
.end method

.method static synthetic d(Lcom/twitter/android/media/imageeditor/EditImageFragment;)I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->F:I

    return v0
.end method

.method static synthetic e(Lcom/twitter/android/media/imageeditor/EditImageFragment;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->v:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic f(Lcom/twitter/android/media/imageeditor/EditImageFragment;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->k()V

    return-void
.end method

.method static synthetic g(Lcom/twitter/android/media/imageeditor/EditImageFragment;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->s:Ljava/util/Map;

    return-object v0
.end method

.method private g(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 841
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->h:Lcom/twitter/android/media/imageeditor/n;

    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/n;->c()Lcom/twitter/android/media/imageeditor/af;

    move-result-object v0

    .line 842
    if-nez v0, :cond_0

    .line 878
    :goto_0
    return-void

    .line 845
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->k:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 846
    invoke-virtual {v0, p1}, Lcom/twitter/android/media/imageeditor/af;->a(Z)V

    .line 848
    if-nez p1, :cond_1

    .line 849
    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 850
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v2, v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v4

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->u:Ljava/lang/String;

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v3, "image_attachment"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v3, "crop"

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v3, "success"

    aput-object v3, v0, v1

    .line 851
    invoke-virtual {v2, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 852
    iget v1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->b:I

    packed-switch v1, :pswitch_data_0

    .line 873
    :goto_1
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 876
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 877
    invoke-direct {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->k()V

    goto :goto_0

    .line 854
    :pswitch_0
    const-string/jumbo v1, "free_aspect"

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->f(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    goto :goto_1

    .line 858
    :pswitch_1
    const-string/jumbo v1, "original_aspect"

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->f(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    goto :goto_1

    .line 862
    :pswitch_2
    const-string/jumbo v1, "wide_aspect"

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->f(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    goto :goto_1

    .line 866
    :pswitch_3
    const-string/jumbo v1, "square_aspect"

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->f(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    goto :goto_1

    .line 852
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic h(Lcom/twitter/android/media/imageeditor/EditImageFragment;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->m()V

    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    .line 732
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 733
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/media/EditableImage;

    .line 734
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/media/imageeditor/aa;

    .line 735
    iget v3, v0, Lcom/twitter/android/media/imageeditor/aa;->a:I

    iput v3, v1, Lcom/twitter/model/media/EditableImage;->c:I

    .line 736
    iget-object v3, v0, Lcom/twitter/android/media/imageeditor/aa;->b:Lcom/twitter/util/math/c;

    iput-object v3, v1, Lcom/twitter/model/media/EditableImage;->f:Lcom/twitter/util/math/c;

    .line 737
    iget-boolean v3, v0, Lcom/twitter/android/media/imageeditor/aa;->c:Z

    iput-boolean v3, v1, Lcom/twitter/model/media/EditableImage;->b:Z

    .line 738
    iget v0, v0, Lcom/twitter/android/media/imageeditor/aa;->d:I

    iput v0, v1, Lcom/twitter/model/media/EditableImage;->e:I

    goto :goto_0

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->y:Lcom/twitter/android/media/imageeditor/y;

    if-eqz v0, :cond_1

    .line 741
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->y:Lcom/twitter/android/media/imageeditor/y;

    invoke-interface {v0}, Lcom/twitter/android/media/imageeditor/y;->c()V

    .line 743
    :cond_1
    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    .line 747
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->u:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "editor"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "filters"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "click"

    aput-object v3, v1, v2

    .line 748
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 750
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 751
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    const v0, 0x7f0a0717

    .line 881
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->h:Lcom/twitter/android/media/imageeditor/n;

    invoke-virtual {v1}, Lcom/twitter/android/media/imageeditor/n;->c()Lcom/twitter/android/media/imageeditor/af;

    move-result-object v1

    .line 882
    if-nez v1, :cond_1

    .line 906
    :cond_0
    :goto_0
    return-void

    .line 888
    :cond_1
    invoke-virtual {v1}, Lcom/twitter/android/media/imageeditor/af;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 889
    const v1, 0x7f0a0650

    .line 890
    const v0, 0x7f0a032c

    .line 902
    :goto_1
    iget-object v2, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->z:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 903
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->A:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 904
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->A:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 891
    :cond_2
    invoke-virtual {v1}, Lcom/twitter/android/media/imageeditor/af;->n()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 892
    const v1, 0x7f0a064e

    .line 893
    const v0, 0x7f0a0082

    goto :goto_1

    .line 894
    :cond_3
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->i:Lcom/twitter/android/media/widget/FilterFilmstripView;

    invoke-virtual {v1}, Lcom/twitter/android/media/widget/FilterFilmstripView;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 895
    const v1, 0x7f0a064f

    .line 896
    goto :goto_1

    .line 898
    :cond_4
    const v1, 0x7f0a0359

    .line 899
    goto :goto_1
.end method

.method private l()V
    .locals 2

    .prologue
    .line 909
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->h:Lcom/twitter/android/media/imageeditor/n;

    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/n;->c()Lcom/twitter/android/media/imageeditor/af;

    move-result-object v0

    .line 910
    if-nez v0, :cond_0

    .line 915
    :goto_0
    return-void

    .line 913
    :cond_0
    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/af;->u()Z

    move-result v0

    .line 914
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->v:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->E:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->F:I

    goto :goto_1
.end method

.method private m()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 939
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->h:Lcom/twitter/android/media/imageeditor/n;

    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/n;->c()Lcom/twitter/android/media/imageeditor/af;

    move-result-object v2

    .line 940
    if-nez v2, :cond_0

    .line 955
    :goto_0
    return-void

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->p:Lcom/twitter/android/composer/ComposerType;

    sget-object v3, Lcom/twitter/android/composer/ComposerType;->c:Lcom/twitter/android/composer/ComposerType;

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcbd;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 944
    invoke-direct {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 945
    invoke-virtual {p0, v1, v1}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->a(ZZ)V

    .line 948
    :cond_1
    invoke-virtual {v2}, Lcom/twitter/android/media/imageeditor/af;->a()Lcom/twitter/model/media/EditableImage;

    move-result-object v0

    .line 949
    iget-object v3, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->i:Lcom/twitter/android/media/widget/FilterFilmstripView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/twitter/android/media/widget/FilterFilmstripView;->setFilterListener(Lcom/twitter/android/media/widget/z;)V

    .line 950
    iget-object v3, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->i:Lcom/twitter/android/media/widget/FilterFilmstripView;

    iget-object v4, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->t:Lcom/twitter/media/filters/Filters;

    invoke-virtual {v0}, Lcom/twitter/model/media/EditableImage;->e()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, v0, Lcom/twitter/model/media/EditableImage;->e:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/twitter/android/media/widget/FilterFilmstripView;->a(Lcom/twitter/media/filters/Filters;Ljava/lang/String;I)V

    .line 951
    iget-object v3, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->i:Lcom/twitter/android/media/widget/FilterFilmstripView;

    iget v4, v0, Lcom/twitter/model/media/EditableImage;->c:I

    invoke-virtual {v3, v4}, Lcom/twitter/android/media/widget/FilterFilmstripView;->setSelectedFilter(I)V

    .line 952
    iget-object v3, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->i:Lcom/twitter/android/media/widget/FilterFilmstripView;

    iget v0, v0, Lcom/twitter/model/media/EditableImage;->d:F

    invoke-virtual {v3, v0}, Lcom/twitter/android/media/widget/FilterFilmstripView;->setIntensity(F)V

    .line 953
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->i:Lcom/twitter/android/media/widget/FilterFilmstripView;

    invoke-virtual {v0, v2}, Lcom/twitter/android/media/widget/FilterFilmstripView;->setFilterListener(Lcom/twitter/android/media/widget/z;)V

    .line 954
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->i:Lcom/twitter/android/media/widget/FilterFilmstripView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/media/widget/FilterFilmstripView;->a(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 943
    goto :goto_1
.end method

.method private n()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 959
    iget v1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->c:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 984
    :cond_0
    :goto_0
    return v0

    .line 962
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 963
    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 964
    const-string/jumbo v3, "sticker_selector_tooltip"

    .line 965
    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    .line 964
    invoke-static {v1, v3, v4, v5}, Lcom/twitter/android/util/t;->a(Landroid/content/Context;Ljava/lang/String;J)Lcom/twitter/android/util/t;

    move-result-object v2

    .line 966
    invoke-virtual {v2}, Lcom/twitter/android/util/t;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 967
    const v0, 0x7f13032e

    invoke-static {v1, v0}, Lcom/twitter/ui/widget/Tooltip;->a(Landroid/content/Context;I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    const v1, 0x7f0a0887

    .line 968
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/ad;->a(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    const v1, 0x7f0d0308

    .line 969
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/ad;->b(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    const v1, 0x7f130326

    .line 970
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/ad;->d(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/media/imageeditor/l;

    invoke-direct {v1, p0}, Lcom/twitter/android/media/imageeditor/l;-><init>(Lcom/twitter/android/media/imageeditor/EditImageFragment;)V

    .line 971
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/ad;->a(Lcom/twitter/ui/widget/af;)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    .line 980
    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v3, "sticker_selector_tooltip"

    invoke-virtual {v0, v1, v3}, Lcom/twitter/ui/widget/ad;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Lcom/twitter/ui/widget/Tooltip;

    .line 981
    invoke-virtual {v2}, Lcom/twitter/android/util/t;->b()V

    .line 982
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 386
    const v0, 0x7f0400d9

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 490
    invoke-super {p0}, Lcom/twitter/library/client/AbsFragment;->a()V

    .line 491
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->h:Lcom/twitter/android/media/imageeditor/n;

    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/n;->c()Lcom/twitter/android/media/imageeditor/af;

    move-result-object v0

    .line 492
    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/af;->r()V

    .line 495
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/android/media/imageeditor/x;)V
    .locals 1

    .prologue
    .line 341
    iput-object p1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->w:Lcom/twitter/android/media/imageeditor/x;

    .line 342
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->h:Lcom/twitter/android/media/imageeditor/n;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->h:Lcom/twitter/android/media/imageeditor/n;

    invoke-virtual {v0, p1}, Lcom/twitter/android/media/imageeditor/n;->a(Lcom/twitter/android/media/imageeditor/x;)V

    .line 345
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/android/media/imageeditor/y;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->y:Lcom/twitter/android/media/imageeditor/y;

    .line 472
    return-void
.end method

.method public a(Lcom/twitter/android/media/imageeditor/z;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->g:Lcom/twitter/android/media/imageeditor/z;

    .line 476
    return-void
.end method

.method a(Lcom/twitter/media/filters/Filters;)V
    .locals 1

    .prologue
    .line 923
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->x:Lcom/twitter/android/media/imageeditor/ad;

    .line 924
    iget-boolean v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->f:Z

    if-eqz v0, :cond_1

    .line 925
    if-eqz p1, :cond_0

    .line 926
    invoke-virtual {p1}, Lcom/twitter/media/filters/Filters;->b()V

    .line 936
    :cond_0
    :goto_0
    return-void

    .line 930
    :cond_1
    if-nez p1, :cond_2

    .line 931
    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->h()V

    goto :goto_0

    .line 934
    :cond_2
    iput-object p1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->t:Lcom/twitter/media/filters/Filters;

    .line 935
    invoke-direct {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->m()V

    goto :goto_0
.end method

.method a(Z)V
    .locals 4

    .prologue
    .line 618
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->a(ZZ)V

    .line 619
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->n:Landroid/view/View;

    .line 620
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 621
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    .line 622
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/media/imageeditor/f;

    invoke-direct {v1, p0}, Lcom/twitter/android/media/imageeditor/f;-><init>(Lcom/twitter/android/media/imageeditor/EditImageFragment;)V

    .line 623
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 630
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 631
    return-void
.end method

.method public a(ZZ)V
    .locals 4

    .prologue
    const/16 v3, 0xfa

    .line 754
    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 755
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->i:Lcom/twitter/android/media/widget/FilterFilmstripView;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/media/widget/FilterFilmstripView;->a(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 756
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 757
    if-eqz p1, :cond_2

    .line 758
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->j:Landroid/widget/ImageButton;

    iget v2, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->C:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 759
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->h:Lcom/twitter/android/media/imageeditor/n;

    invoke-virtual {v1}, Lcom/twitter/android/media/imageeditor/n;->c()Lcom/twitter/android/media/imageeditor/af;

    move-result-object v1

    .line 760
    if-eqz v1, :cond_0

    .line 761
    invoke-virtual {v1}, Lcom/twitter/android/media/imageeditor/af;->f()V

    .line 763
    :cond_0
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 768
    :goto_0
    invoke-direct {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->k()V

    .line 770
    :cond_1
    return-void

    .line 765
    :cond_2
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->j:Landroid/widget/ImageButton;

    iget v2, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->D:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 766
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    goto :goto_0
.end method

.method public b()Lcom/twitter/android/media/imageeditor/x;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->w:Lcom/twitter/android/media/imageeditor/x;

    return-object v0
.end method

.method b(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 634
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 635
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->n:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 636
    if-eqz p1, :cond_0

    .line 637
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 639
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->n:Landroid/view/View;

    new-instance v1, Lcom/twitter/android/media/imageeditor/g;

    invoke-direct {v1, p0}, Lcom/twitter/android/media/imageeditor/g;-><init>(Lcom/twitter/android/media/imageeditor/EditImageFragment;)V

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 660
    :goto_0
    return-void

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 658
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->n:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method c()V
    .locals 4

    .prologue
    .line 663
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->o:Landroid/view/View;

    .line 664
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 665
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    .line 666
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/media/imageeditor/i;

    invoke-direct {v1, p0}, Lcom/twitter/android/media/imageeditor/i;-><init>(Lcom/twitter/android/media/imageeditor/EditImageFragment;)V

    .line 667
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 674
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 675
    return-void
.end method

.method c(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 678
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 679
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->o:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 680
    if-eqz p1, :cond_0

    .line 681
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 683
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->o:Landroid/view/View;

    new-instance v1, Lcom/twitter/android/media/imageeditor/j;

    invoke-direct {v1, p0}, Lcom/twitter/android/media/imageeditor/j;-><init>(Lcom/twitter/android/media/imageeditor/EditImageFragment;)V

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 704
    :goto_0
    return-void

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 702
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->o:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method d(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 791
    invoke-virtual {p0, v2, p1}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->a(ZZ)V

    .line 792
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->h:Lcom/twitter/android/media/imageeditor/n;

    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/n;->c()Lcom/twitter/android/media/imageeditor/af;

    move-result-object v0

    .line 793
    if-eqz v0, :cond_0

    .line 794
    invoke-direct {p0, v0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->a(Lcom/twitter/android/media/imageeditor/af;)V

    .line 795
    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/af;->j()V

    .line 797
    :cond_0
    iget v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->e:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 798
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 800
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->n:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 801
    invoke-direct {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->k()V

    .line 802
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->h:Lcom/twitter/android/media/imageeditor/n;

    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/n;->c()Lcom/twitter/android/media/imageeditor/af;

    move-result-object v0

    .line 481
    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/af;->q()V

    .line 483
    invoke-direct {p0, v0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->a(Lcom/twitter/android/media/imageeditor/af;)V

    .line 485
    :cond_0
    invoke-super {p0}, Lcom/twitter/library/client/AbsFragment;->e()V

    .line 486
    return-void
.end method

.method e(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 826
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->h:Lcom/twitter/android/media/imageeditor/n;

    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/n;->c()Lcom/twitter/android/media/imageeditor/af;

    move-result-object v0

    .line 827
    if-nez v0, :cond_0

    .line 838
    :goto_0
    return-void

    .line 830
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->o:Landroid/view/View;

    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02006c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 831
    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/af;->d()V

    .line 832
    invoke-virtual {p0, v4}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->b(Z)V

    .line 833
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 834
    if-eqz p1, :cond_1

    .line 835
    invoke-virtual {p0, v5, v5}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->a(ZZ)V

    .line 837
    :cond_1
    invoke-direct {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->k()V

    goto :goto_0
.end method

.method public f()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 773
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->h:Lcom/twitter/android/media/imageeditor/n;

    if-eqz v0, :cond_2

    .line 774
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->h:Lcom/twitter/android/media/imageeditor/n;

    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/n;->c()Lcom/twitter/android/media/imageeditor/af;

    move-result-object v0

    .line 775
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/af;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 776
    invoke-direct {p0, v2}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->g(Z)V

    .line 788
    :goto_0
    return-void

    .line 779
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/af;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 780
    invoke-virtual {p0, v2}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->e(Z)V

    goto :goto_0

    .line 783
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->y:Lcom/twitter/android/media/imageeditor/y;

    if-eqz v0, :cond_2

    .line 784
    invoke-direct {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->i()V

    .line 787
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->B:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method f(Z)V
    .locals 5

    .prologue
    .line 1005
    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 1006
    if-eqz v1, :cond_0

    .line 1007
    sget-object v2, Lcom/twitter/android/media/imageeditor/EditImageFragment;->r:[I

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v2, v0

    .line 1008
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1007
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1011
    :cond_0
    return-void
.end method

.method g()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 805
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->h:Lcom/twitter/android/media/imageeditor/n;

    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/n;->c()Lcom/twitter/android/media/imageeditor/af;

    move-result-object v0

    .line 806
    if-nez v0, :cond_0

    .line 823
    :goto_0
    return-void

    .line 809
    :cond_0
    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/af;->i()I

    move-result v1

    invoke-static {}, Lcom/twitter/android/media/stickers/i;->a()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 811
    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0651

    .line 812
    invoke-virtual {p0, v1}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 810
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 814
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 818
    :cond_1
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->o:Landroid/view/View;

    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 819
    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/af;->c()V

    .line 820
    invoke-virtual {p0, v4, v4}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->a(ZZ)V

    .line 821
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->n:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 822
    invoke-direct {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->k()V

    goto :goto_0
.end method

.method h()V
    .locals 3

    .prologue
    .line 918
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Filters failed to load"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 919
    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a0420

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 920
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 455
    invoke-super {p0, p1}, Lcom/twitter/library/client/AbsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 459
    new-instance v0, Lcom/twitter/android/media/imageeditor/ae;

    invoke-direct {v0, p0}, Lcom/twitter/android/media/imageeditor/ae;-><init>(Lcom/twitter/android/media/imageeditor/EditImageFragment;)V

    iput-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->x:Lcom/twitter/android/media/imageeditor/ad;

    .line 460
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->x:Lcom/twitter/android/media/imageeditor/ad;

    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/twitter/android/media/imageeditor/ad;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 462
    if-eqz p1, :cond_1

    const-string/jumbo v0, "is_cropping"

    .line 463
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 465
    :goto_0
    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {p0, v1}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->d(Z)V

    .line 468
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 463
    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1015
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1016
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-static {p3}, Lcom/twitter/android/runtimepermissions/PermissionRequestActivity;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->h:Lcom/twitter/android/media/imageeditor/n;

    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/n;->c()Lcom/twitter/android/media/imageeditor/af;

    move-result-object v0

    .line 1018
    if-eqz v0, :cond_0

    .line 1019
    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/af;->a()Lcom/twitter/model/media/EditableImage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->b(Lcom/twitter/model/media/EditableImage;)V

    .line 1023
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 536
    iget-object v2, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->h:Lcom/twitter/android/media/imageeditor/n;

    invoke-virtual {v2}, Lcom/twitter/android/media/imageeditor/n;->c()Lcom/twitter/android/media/imageeditor/af;

    move-result-object v2

    .line 537
    if-nez v2, :cond_1

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 541
    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 543
    :sswitch_0
    invoke-virtual {v2}, Lcom/twitter/android/media/imageeditor/af;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 544
    invoke-virtual {p0, v0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->e(Z)V

    goto :goto_0

    .line 545
    :cond_2
    invoke-virtual {v2}, Lcom/twitter/android/media/imageeditor/af;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 546
    invoke-direct {p0, v2}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->a(Lcom/twitter/android/media/imageeditor/af;)V

    .line 547
    invoke-virtual {v2}, Lcom/twitter/android/media/imageeditor/af;->a()Lcom/twitter/model/media/EditableImage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->b(Lcom/twitter/model/media/EditableImage;)V

    goto :goto_0

    .line 548
    :cond_3
    invoke-virtual {v2}, Lcom/twitter/android/media/imageeditor/af;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    invoke-direct {p0, v0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->g(Z)V

    .line 550
    iget-boolean v1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->H:Z

    if-eqz v1, :cond_4

    .line 551
    invoke-direct {p0, v2}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->a(Lcom/twitter/android/media/imageeditor/af;)V

    .line 552
    invoke-virtual {v2}, Lcom/twitter/android/media/imageeditor/af;->a()Lcom/twitter/model/media/EditableImage;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->b(Lcom/twitter/model/media/EditableImage;)V

    .line 554
    :cond_4
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->B:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 559
    :sswitch_1
    invoke-virtual {v2}, Lcom/twitter/android/media/imageeditor/af;->e()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 560
    invoke-virtual {p0, v0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->e(Z)V

    goto :goto_0

    .line 561
    :cond_5
    invoke-virtual {v2}, Lcom/twitter/android/media/imageeditor/af;->n()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 562
    invoke-direct {p0, v1}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->g(Z)V

    .line 563
    iget-boolean v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->H:Z

    if-eqz v0, :cond_0

    .line 564
    invoke-direct {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->i()V

    goto :goto_0

    .line 567
    :cond_6
    invoke-direct {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->i()V

    goto :goto_0

    .line 572
    :sswitch_2
    invoke-direct {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->l()V

    goto :goto_0

    .line 576
    :sswitch_3
    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->g()V

    goto :goto_0

    .line 580
    :sswitch_4
    invoke-direct {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->j()V

    .line 581
    iget-object v2, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->i:Lcom/twitter/android/media/widget/FilterFilmstripView;

    invoke-virtual {v2}, Lcom/twitter/android/media/widget/FilterFilmstripView;->b()Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    :cond_7
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->a(ZZ)V

    goto :goto_0

    .line 585
    :sswitch_5
    invoke-virtual {p0, v0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->d(Z)V

    goto :goto_0

    .line 589
    :sswitch_6
    const/16 v0, -0x5a

    invoke-virtual {v2, v0}, Lcom/twitter/android/media/imageeditor/af;->a(I)V

    goto/16 :goto_0

    .line 593
    :sswitch_7
    invoke-virtual {v2}, Lcom/twitter/android/media/imageeditor/af;->k()V

    .line 594
    iput v1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->b:I

    goto/16 :goto_0

    .line 598
    :sswitch_8
    const v0, 0x3fe38e39

    invoke-virtual {v2, v0}, Lcom/twitter/android/media/imageeditor/af;->a(F)V

    .line 599
    const/4 v0, 0x3

    iput v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->b:I

    goto/16 :goto_0

    .line 603
    :sswitch_9
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v2, v0}, Lcom/twitter/android/media/imageeditor/af;->a(F)V

    .line 604
    const/4 v0, 0x4

    iput v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->b:I

    goto/16 :goto_0

    .line 541
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f130152 -> :sswitch_0
        0x7f13032b -> :sswitch_2
        0x7f13032c -> :sswitch_4
        0x7f13032d -> :sswitch_5
        0x7f13032e -> :sswitch_3
        0x7f130330 -> :sswitch_7
        0x7f130331 -> :sswitch_8
        0x7f130332 -> :sswitch_9
        0x7f130333 -> :sswitch_6
        0x7f130335 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 354
    invoke-super {p0, p1}, Lcom/twitter/library/client/AbsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 355
    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->q()Lcom/twitter/app/common/base/f;

    move-result-object v1

    .line 356
    const-string/jumbo v0, "scribe_section"

    invoke-virtual {v1, v0}, Lcom/twitter/app/common/base/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->u:Ljava/lang/String;

    .line 357
    const-string/jumbo v0, "lock_to_initial"

    invoke-virtual {v1, v0, v2}, Lcom/twitter/app/common/base/f;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->H:Z

    .line 358
    const-string/jumbo v0, "initial_position"

    invoke-virtual {v1, v0}, Lcom/twitter/app/common/base/f;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->d:I

    .line 359
    const-string/jumbo v0, "composer_type"

    invoke-virtual {v1, v0}, Lcom/twitter/app/common/base/f;->h(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/composer/ComposerType;

    iput-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->p:Lcom/twitter/android/composer/ComposerType;

    .line 360
    const-string/jumbo v0, "force_crop_ratio"

    invoke-virtual {v1, v0}, Lcom/twitter/app/common/base/f;->d(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->e:F

    .line 362
    if-nez p1, :cond_1

    .line 364
    const-string/jumbo v0, "initial_type"

    invoke-virtual {v1, v0}, Lcom/twitter/app/common/base/f;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->c:I

    .line 365
    iput v2, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->I:I

    .line 372
    :goto_0
    const-string/jumbo v0, "sticker_catalog_repo"

    invoke-virtual {p0, v0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->a_(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/media/stickers/data/a;

    .line 373
    if-eqz v0, :cond_2

    .line 374
    :goto_1
    iput-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->m:Lcom/twitter/android/media/stickers/data/a;

    .line 375
    const-string/jumbo v0, "sticker_catalog_repo"

    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->m:Lcom/twitter/android/media/stickers/data/a;

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    new-instance v0, Lcom/twitter/android/media/imageeditor/n;

    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/media/imageeditor/n;-><init>(Lcom/twitter/android/media/imageeditor/EditImageFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->h:Lcom/twitter/android/media/imageeditor/n;

    .line 378
    if-eqz p1, :cond_0

    .line 379
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->h:Lcom/twitter/android/media/imageeditor/n;

    invoke-virtual {v0, p1}, Lcom/twitter/android/media/imageeditor/n;->b(Landroid/os/Bundle;)V

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->h:Lcom/twitter/android/media/imageeditor/n;

    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->w:Lcom/twitter/android/media/imageeditor/x;

    invoke-virtual {v0, v1}, Lcom/twitter/android/media/imageeditor/n;->a(Lcom/twitter/android/media/imageeditor/x;)V

    .line 382
    return-void

    .line 368
    :cond_1
    const-string/jumbo v0, "editor_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->c:I

    .line 369
    const-string/jumbo v0, "sticker_tab_position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->I:I

    goto :goto_0

    .line 373
    :cond_2
    new-instance v0, Lcom/twitter/android/media/stickers/data/a;

    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 374
    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    new-instance v4, Lcem;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcem;-><init>(I)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/media/stickers/data/a;-><init>(Landroid/content/Context;JLcem;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->f:Z

    .line 500
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->x:Lcom/twitter/android/media/imageeditor/ad;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->x:Lcom/twitter/android/media/imageeditor/ad;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/media/imageeditor/ad;->cancel(Z)Z

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->t:Lcom/twitter/media/filters/Filters;

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->t:Lcom/twitter/media/filters/Filters;

    invoke-virtual {v0}, Lcom/twitter/media/filters/Filters;->b()V

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->h:Lcom/twitter/android/media/imageeditor/n;

    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/n;->b()V

    .line 508
    sget-object v0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->a:Lcom/twitter/android/media/imageeditor/ab;

    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/ab;->a()V

    .line 509
    invoke-super {p0}, Lcom/twitter/library/client/AbsFragment;->onDestroy()V

    .line 510
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 514
    invoke-super {p0, p1}, Lcom/twitter/library/client/AbsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 515
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->h:Lcom/twitter/android/media/imageeditor/n;

    invoke-virtual {v0, p1}, Lcom/twitter/android/media/imageeditor/n;->a(Landroid/os/Bundle;)V

    .line 517
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->h:Lcom/twitter/android/media/imageeditor/n;

    invoke-virtual {v0}, Lcom/twitter/android/media/imageeditor/n;->c()Lcom/twitter/android/media/imageeditor/af;

    move-result-object v1

    .line 518
    if-eqz v1, :cond_0

    .line 520
    invoke-virtual {v1}, Lcom/twitter/android/media/imageeditor/af;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    const/4 v0, 0x2

    .line 529
    :goto_0
    const-string/jumbo v2, "sticker_tab_position"

    invoke-virtual {v1}, Lcom/twitter/android/media/imageeditor/af;->g()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 530
    const-string/jumbo v1, "editor_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 532
    :cond_0
    return-void

    .line 522
    :cond_1
    invoke-virtual {v1}, Lcom/twitter/android/media/imageeditor/af;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 523
    const/4 v0, 0x3

    goto :goto_0

    .line 524
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->i:Lcom/twitter/android/media/widget/FilterFilmstripView;

    invoke-virtual {v0}, Lcom/twitter/android/media/widget/FilterFilmstripView;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 525
    const/4 v0, 0x1

    goto :goto_0

    .line 527
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 391
    invoke-super {p0, p1, p2}, Lcom/twitter/library/client/AbsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 392
    const v0, 0x7f0203a0

    iput v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->F:I

    .line 393
    const v0, 0x7f0203a1

    iput v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->E:I

    .line 394
    const v0, 0x7f020396

    iput v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->D:I

    .line 395
    const v0, 0x7f020397

    iput v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->C:I

    .line 397
    const v0, 0x7f13032c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->j:Landroid/widget/ImageButton;

    .line 398
    const v0, 0x7f13032b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->v:Landroid/widget/ImageButton;

    .line 399
    const v0, 0x7f130328

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/MediaImageView;

    iput-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->l:Lcom/twitter/media/ui/image/MediaImageView;

    .line 400
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->G:Lcom/twitter/model/media/EditableImage;

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->l:Lcom/twitter/media/ui/image/MediaImageView;

    new-instance v1, Lcom/twitter/android/media/imageeditor/e;

    invoke-direct {v1, p0}, Lcom/twitter/android/media/imageeditor/e;-><init>(Lcom/twitter/android/media/imageeditor/EditImageFragment;)V

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->setOnImageLoadedListener(Lcom/twitter/media/ui/image/f;)V

    .line 409
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->l:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {p0}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->G:Lcom/twitter/model/media/EditableImage;

    invoke-static {v1, v3}, Lcom/twitter/library/media/util/w;->a(Landroid/content/Context;Lcom/twitter/model/media/EditableMedia;)Lcom/twitter/media/request/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 414
    :cond_0
    :goto_0
    const v0, 0x7f130327

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/view/LockableViewPager;

    .line 415
    invoke-virtual {v0, v2}, Lcom/twitter/ui/view/LockableViewPager;->setPagingEnabled(Z)V

    .line 417
    const v1, 0x7f130329

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/media/widget/FilterFilmstripView;

    iput-object v1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->i:Lcom/twitter/android/media/widget/FilterFilmstripView;

    .line 419
    const v1, 0x7f130154

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->z:Landroid/widget/TextView;

    .line 421
    const v1, 0x7f13032f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->k:Landroid/view/View;

    .line 423
    const v1, 0x7f13032a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->n:Landroid/view/View;

    .line 424
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->n:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .line 425
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 427
    const v1, 0x7f130334

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->o:Landroid/view/View;

    .line 429
    sget-object v3, Lcom/twitter/android/media/imageeditor/EditImageFragment;->q:[I

    array-length v4, v3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_2

    aget v5, v3, v1

    .line 430
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->g:Lcom/twitter/android/media/imageeditor/z;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->g:Lcom/twitter/android/media/imageeditor/z;

    invoke-interface {v0}, Lcom/twitter/android/media/imageeditor/z;->a()V

    goto :goto_0

    .line 433
    :cond_2
    const v1, 0x7f130152

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->A:Landroid/widget/TextView;

    .line 434
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->A:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    const v1, 0x7f130335

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->B:Landroid/view/View;

    .line 436
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->B:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    invoke-virtual {p0, v2}, Lcom/twitter/android/media/imageeditor/EditImageFragment;->f(Z)V

    .line 440
    const v1, 0x7f130336

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 441
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->z:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->h:Lcom/twitter/android/media/imageeditor/n;

    invoke-virtual {v0, v1}, Lcom/twitter/ui/view/LockableViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 444
    iget-object v1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->h:Lcom/twitter/android/media/imageeditor/n;

    invoke-virtual {v0, v1}, Lcom/twitter/ui/view/LockableViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 445
    iget v1, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/twitter/ui/view/LockableViewPager;->setCurrentItem(IZ)V

    .line 446
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/twitter/ui/view/LockableViewPager;->setOffscreenPageLimit(I)V

    .line 448
    iget-object v0, p0, Lcom/twitter/android/media/imageeditor/EditImageFragment;->p:Lcom/twitter/android/composer/ComposerType;

    sget-object v1, Lcom/twitter/android/composer/ComposerType;->c:Lcom/twitter/android/composer/ComposerType;

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcbd;->a(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 449
    const v0, 0x7f13032e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 451
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 448
    goto :goto_2
.end method
