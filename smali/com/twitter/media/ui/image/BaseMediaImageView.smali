.class public abstract Lcom/twitter/media/ui/image/BaseMediaImageView;
.super Lcom/twitter/media/ui/image/AspectRatioFrameLayout;
.source "Twttr"

# interfaces
.implements Lcom/twitter/media/request/c;
.implements Lcom/twitter/media/ui/image/g;
.implements Lcom/twitter/media/ui/image/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/media/ui/image/BaseMediaImageView",
        "<TT;>;>",
        "Lcom/twitter/media/ui/image/AspectRatioFrameLayout;",
        "Lcom/twitter/media/request/c;",
        "Lcom/twitter/media/ui/image/g;",
        "Lcom/twitter/media/ui/image/r;"
    }
.end annotation


# static fields
.field private static final a:Lcom/twitter/media/request/process/a;

.field protected static final b:Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;

.field private static j:Lcom/twitter/media/request/ImageRequester$Factory;


# instance fields
.field protected d:Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;

.field protected e:Landroid/graphics/drawable/Drawable;

.field protected f:Landroid/widget/ImageView$ScaleType;

.field g:Lcom/twitter/media/request/b;

.field h:Z

.field i:F

.field private final k:Lcom/twitter/media/request/ImageRequester;

.field private l:Lcom/twitter/media/request/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/media/request/i",
            "<",
            "Lcom/twitter/media/request/ImageResponse;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Z

.field private o:Lcom/twitter/media/request/a;

.field private p:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private q:Z

.field private r:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private s:Lcom/twitter/media/ui/image/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/media/ui/image/f",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final t:Lrx/subjects/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/e",
            "<",
            "Lcom/twitter/media/request/ImageResponse;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lcom/twitter/media/ui/image/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/media/ui/image/e",
            "<TT;>;"
        }
    .end annotation
.end field

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;->a:Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;

    sput-object v0, Lcom/twitter/media/ui/image/BaseMediaImageView;->b:Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;

    .line 72
    new-instance v0, Lcom/twitter/media/ui/image/a;

    invoke-direct {v0}, Lcom/twitter/media/ui/image/a;-><init>()V

    sput-object v0, Lcom/twitter/media/ui/image/BaseMediaImageView;->a:Lcom/twitter/media/request/process/a;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/twitter/media/ui/image/BaseMediaImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/twitter/media/request/ImageRequester;)V

    .line 131
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/twitter/media/request/ImageRequester;)V
    .locals 6

    .prologue
    .line 138
    sget-object v5, Lcom/twitter/media/ui/image/BaseMediaImageView;->b:Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/media/ui/image/BaseMediaImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/twitter/media/request/ImageRequester;Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;)V

    .line 139
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/twitter/media/request/ImageRequester;Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 147
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/media/ui/image/AspectRatioFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    sget-object v0, Lcom/twitter/media/ui/image/BaseMediaImageView;->b:Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;

    iput-object v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->d:Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;

    .line 93
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->f:Landroid/widget/ImageView$ScaleType;

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->q:Z

    .line 118
    invoke-static {}, Lrx/subjects/e;->q()Lrx/subjects/e;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->t:Lrx/subjects/e;

    .line 149
    sget-object v0, Lcom/twitter/media/ui/k;->BaseMediaImageView:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 150
    sget v1, Lcom/twitter/media/ui/k;->BaseMediaImageView_defaultDrawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->e:Landroid/graphics/drawable/Drawable;

    .line 151
    sget v1, Lcom/twitter/media/ui/k;->BaseMediaImageView_errorDrawable:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->r:I

    .line 152
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    sget-object v1, Lcom/twitter/media/request/ImageRequester;->a:Lcom/twitter/media/request/ImageRequester;

    iput-object v1, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->k:Lcom/twitter/media/request/ImageRequester;

    .line 159
    :goto_0
    sget v1, Lcom/twitter/media/ui/k;->BaseMediaImageView_updateOnResize:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->m:Z

    .line 160
    sget v1, Lcom/twitter/media/ui/k;->BaseMediaImageView_scaleType:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 161
    invoke-static {}, Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;->values()[Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;

    move-result-object v2

    .line 162
    if-ltz v1, :cond_0

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object p5, v2, v1

    :cond_0
    iput-object p5, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->d:Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;

    .line 164
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 165
    return-void

    .line 155
    :cond_1
    if-eqz p4, :cond_2

    :goto_1
    iput-object p4, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->k:Lcom/twitter/media/request/ImageRequester;

    .line 157
    iget-object v1, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->k:Lcom/twitter/media/request/ImageRequester;

    sget v2, Lcom/twitter/media/ui/k;->BaseMediaImageView_imageType:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/twitter/media/request/ImageRequester;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_2
    invoke-static {p1}, Lcom/twitter/media/ui/image/BaseMediaImageView;->a(Landroid/content/Context;)Lcom/twitter/media/request/ImageRequester;

    move-result-object p4

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;)Lcom/twitter/media/request/ImageRequester;
    .locals 2

    .prologue
    .line 572
    sget-object v0, Lcom/twitter/media/ui/image/BaseMediaImageView;->j:Lcom/twitter/media/request/ImageRequester$Factory;

    if-nez v0, :cond_0

    .line 573
    invoke-static {}, Lddi;->a()Lddi;

    move-result-object v0

    const-class v1, Lcom/twitter/media/request/ImageRequester$Factory;

    invoke-virtual {v0, v1}, Lddi;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/request/ImageRequester$Factory;

    sput-object v0, Lcom/twitter/media/ui/image/BaseMediaImageView;->j:Lcom/twitter/media/request/ImageRequester$Factory;

    .line 574
    sget-object v0, Lcom/twitter/media/ui/image/BaseMediaImageView;->j:Lcom/twitter/media/request/ImageRequester$Factory;

    if-nez v0, :cond_0

    .line 575
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "A default ImageRequester.Factory is not available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_0
    sget-object v0, Lcom/twitter/media/ui/image/BaseMediaImageView;->j:Lcom/twitter/media/request/ImageRequester$Factory;

    invoke-interface {v0, p0}, Lcom/twitter/media/request/ImageRequester$Factory;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/request/ImageRequester;

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/media/ui/image/BaseMediaImageView;)Lcom/twitter/media/request/a;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->o:Lcom/twitter/media/request/a;

    return-object v0
.end method

.method private c(Lcom/twitter/media/request/ImageResponse;)Z
    .locals 2

    .prologue
    .line 392
    invoke-virtual {p1}, Lcom/twitter/media/request/ImageResponse;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/request/a;

    .line 393
    invoke-virtual {v0}, Lcom/twitter/media/request/a;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 394
    invoke-virtual {v0}, Lcom/twitter/media/request/a;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    invoke-virtual {v0}, Lcom/twitter/media/request/a;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->i:F

    const/high16 v1, 0x3e800000    # 0.25f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 393
    :goto_0
    return v0

    .line 395
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Lcom/twitter/media/request/ImageResponse;)V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->l:Lcom/twitter/media/request/i;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->l:Lcom/twitter/media/request/i;

    invoke-interface {v0, p1}, Lcom/twitter/media/request/i;->a(Lcom/twitter/media/request/ResourceResponse;)V

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->s:Lcom/twitter/media/ui/image/f;

    if-eqz v0, :cond_1

    .line 404
    iget-object v1, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->s:Lcom/twitter/media/ui/image/f;

    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/BaseMediaImageView;

    invoke-interface {v1, v0, p1}, Lcom/twitter/media/ui/image/f;->a(Lcom/twitter/media/ui/image/BaseMediaImageView;Lcom/twitter/media/request/ImageResponse;)V

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->t:Lrx/subjects/e;

    invoke-virtual {v0, p1}, Lrx/subjects/e;->b_(Ljava/lang/Object;)V

    .line 408
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->n()V

    .line 409
    return-void
.end method

.method public static setImageRequesterFactory(Lcom/twitter/media/request/ImageRequester$Factory;)V
    .locals 0

    .prologue
    .line 567
    sput-object p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->j:Lcom/twitter/media/request/ImageRequester$Factory;

    .line 568
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/media/request/b;)Lcom/twitter/media/request/a;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 484
    if-eqz p1, :cond_1

    .line 485
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->getImageSize()Lcom/twitter/util/math/Size;

    move-result-object v0

    iget v1, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->i:F

    invoke-virtual {v0, v1}, Lcom/twitter/util/math/Size;->a(F)Lcom/twitter/util/math/Size;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/media/request/b;->a(Lcom/twitter/util/math/Size;)Lcom/twitter/media/request/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->n:Z

    .line 486
    invoke-virtual {v0, v1}, Lcom/twitter/media/request/b;->d(Z)Lcom/twitter/media/request/h;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/request/b;

    iget-object v1, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->d:Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;

    iget-object v1, v1, Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;->decoderScaleType:Lcom/twitter/media/decoder/ImageDecoder$ScaleType;

    .line 487
    invoke-virtual {v0, v1}, Lcom/twitter/media/request/b;->a(Lcom/twitter/media/decoder/ImageDecoder$ScaleType;)Lcom/twitter/media/request/b;

    .line 488
    iget-object v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->u:Lcom/twitter/media/ui/image/e;

    if-eqz v0, :cond_0

    .line 489
    iget-object v1, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->u:Lcom/twitter/media/ui/image/e;

    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/BaseMediaImageView;

    invoke-interface {v1, v0}, Lcom/twitter/media/ui/image/e;->a(Lcom/twitter/media/ui/image/BaseMediaImageView;)Lcom/twitter/util/math/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/media/request/b;->a(Lcom/twitter/util/math/c;)Lcom/twitter/media/request/b;

    .line 491
    :cond_0
    invoke-virtual {p1}, Lcom/twitter/media/request/b;->a()Lcom/twitter/media/request/a;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Lcom/twitter/media/request/a;->B()Lcom/twitter/media/request/i;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->l:Lcom/twitter/media/request/i;

    .line 493
    invoke-virtual {v0, p0}, Lcom/twitter/media/request/a;->a(Lcom/twitter/media/request/i;)V

    .line 497
    :goto_0
    return-object v0

    .line 496
    :cond_1
    iput-object v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->l:Lcom/twitter/media/request/i;

    goto :goto_0
.end method

.method protected a(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 465
    return-void
.end method

.method protected abstract a(Landroid/graphics/drawable/Drawable;)V
.end method

.method protected a(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .prologue
    .line 472
    invoke-virtual {p0, p1}, Lcom/twitter/media/ui/image/BaseMediaImageView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 473
    return-void
.end method

.method public a(Lcom/twitter/media/request/ImageResponse;)V
    .locals 3

    .prologue
    .line 308
    invoke-virtual {p1}, Lcom/twitter/media/request/ImageResponse;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/request/a;

    .line 309
    invoke-virtual {p1}, Lcom/twitter/media/request/ImageResponse;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/twitter/media/ui/image/BaseMediaImageView;->c(Lcom/twitter/media/request/ImageResponse;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    new-instance v1, Lcom/twitter/media/ui/image/b;

    invoke-direct {v1, p0, v0}, Lcom/twitter/media/ui/image/b;-><init>(Lcom/twitter/media/ui/image/BaseMediaImageView;Lcom/twitter/media/request/a;)V

    invoke-virtual {p0, v1}, Lcom/twitter/media/ui/image/BaseMediaImageView;->post(Ljava/lang/Runnable;)Z

    .line 346
    :goto_0
    return-void

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 327
    invoke-virtual {v0}, Lcom/twitter/media/request/a;->q()Lcom/twitter/media/request/process/a;

    move-result-object v0

    sget-object v2, Lcom/twitter/media/ui/image/BaseMediaImageView;->a:Lcom/twitter/media/request/process/a;

    invoke-static {v0, v2}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/request/process/a;

    .line 328
    invoke-interface {v0, v1, p1}, Lcom/twitter/media/request/process/a;->a(Landroid/content/Context;Lcom/twitter/media/request/ImageResponse;)Lcom/twitter/util/concurrent/j;

    move-result-object v0

    .line 329
    iput-object v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->p:Ljava/util/concurrent/Future;

    .line 330
    new-instance v1, Lcom/twitter/media/ui/image/c;

    invoke-direct {v1, p0, p1, v0}, Lcom/twitter/media/ui/image/c;-><init>(Lcom/twitter/media/ui/image/BaseMediaImageView;Lcom/twitter/media/request/ImageResponse;Lcom/twitter/util/concurrent/j;)V

    invoke-interface {v0, v1}, Lcom/twitter/util/concurrent/j;->a(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/j;

    goto :goto_0
.end method

.method protected a(Lcom/twitter/media/request/ImageResponse;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 367
    iput-boolean v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->h:Z

    .line 368
    iput-boolean v1, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->q:Z

    .line 369
    iput-boolean v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->v:Z

    .line 370
    if-eqz p2, :cond_0

    .line 371
    invoke-virtual {p1}, Lcom/twitter/media/request/ImageResponse;->f()Lcom/twitter/media/request/ResourceResponse$ResourceSource;

    move-result-object v2

    sget-object v3, Lcom/twitter/media/request/ResourceResponse$ResourceSource;->b:Lcom/twitter/media/request/ResourceResponse$ResourceSource;

    if-ne v2, v3, :cond_1

    :goto_0
    invoke-virtual {p0, p2, v0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->a(Landroid/graphics/drawable/Drawable;Z)V

    .line 373
    :cond_0
    invoke-direct {p0, p1}, Lcom/twitter/media/ui/image/BaseMediaImageView;->d(Lcom/twitter/media/request/ImageResponse;)V

    .line 374
    return-void

    :cond_1
    move v0, v1

    .line 371
    goto :goto_0
.end method

.method a(Lcom/twitter/media/request/ImageResponse;Lcom/twitter/util/concurrent/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/media/request/ImageResponse;",
            "Lcom/twitter/util/concurrent/j",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 349
    invoke-virtual {p1}, Lcom/twitter/media/request/ImageResponse;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/request/a;

    iget-object v1, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->o:Lcom/twitter/media/request/a;

    invoke-virtual {v0, v1}, Lcom/twitter/media/request/a;->a(Lcom/twitter/media/request/g;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iput-object v2, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->p:Ljava/util/concurrent/Future;

    .line 354
    iput-object v2, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->o:Lcom/twitter/media/request/a;

    .line 355
    invoke-interface {p2}, Lcom/twitter/util/concurrent/j;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    :try_start_0
    invoke-interface {p2}, Lcom/twitter/util/concurrent/j;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 360
    invoke-virtual {p0, p1, v0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->a(Lcom/twitter/media/request/ImageResponse;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    :goto_1
    invoke-virtual {p0, p1}, Lcom/twitter/media/ui/image/BaseMediaImageView;->b(Lcom/twitter/media/request/ImageResponse;)V

    goto :goto_0

    .line 361
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public bridge synthetic a(Lcom/twitter/media/request/ResourceResponse;)V
    .locals 0

    .prologue
    .line 50
    check-cast p1, Lcom/twitter/media/request/ImageResponse;

    invoke-virtual {p0, p1}, Lcom/twitter/media/ui/image/BaseMediaImageView;->a(Lcom/twitter/media/request/ImageResponse;)V

    return-void
.end method

.method protected a(Lcom/twitter/media/request/a;)Z
    .locals 1

    .prologue
    .line 516
    iget-boolean v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->h:Z

    return v0
.end method

.method public a(Lcom/twitter/media/request/b;Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 181
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v0

    .line 184
    :cond_1
    iput-object p1, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->g:Lcom/twitter/media/request/b;

    .line 185
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->i:F

    .line 186
    if-nez p1, :cond_2

    .line 187
    iput-boolean v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->h:Z

    .line 188
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->j()Z

    .line 189
    if-eqz p2, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->l()V

    goto :goto_0

    .line 195
    :cond_2
    iget-object v1, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->k:Lcom/twitter/media/request/ImageRequester;

    invoke-virtual {p0, p1}, Lcom/twitter/media/ui/image/BaseMediaImageView;->a(Lcom/twitter/media/request/b;)Lcom/twitter/media/request/a;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/twitter/media/request/ImageRequester;->a(Lcom/twitter/media/request/a;)Z

    move-result v1

    .line 196
    if-eqz v1, :cond_3

    .line 197
    iput-boolean v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->h:Z

    .line 198
    if-eqz p2, :cond_3

    .line 199
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->l()V

    .line 202
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->aP_()V

    move v0, v1

    .line 203
    goto :goto_0
.end method

.method public aP_()V
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->v:Z

    if-nez v0, :cond_0

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->h:Z

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->o()V

    .line 289
    return-void
.end method

.method protected b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 468
    invoke-virtual {p0, p1}, Lcom/twitter/media/ui/image/BaseMediaImageView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 469
    return-void
.end method

.method protected b(Lcom/twitter/media/request/ImageResponse;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 378
    iget-boolean v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->n:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->h:Z

    .line 379
    iget-boolean v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->h:Z

    if-eqz v0, :cond_0

    .line 380
    iput-boolean v1, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->q:Z

    .line 381
    iput-boolean v1, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->v:Z

    .line 382
    iget v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->r:I

    if-eqz v0, :cond_2

    .line 383
    iget v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->r:I

    invoke-virtual {p0, v0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->a(I)V

    .line 387
    :goto_1
    invoke-direct {p0, p1}, Lcom/twitter/media/ui/image/BaseMediaImageView;->d(Lcom/twitter/media/request/ImageResponse;)V

    .line 389
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 378
    goto :goto_0

    .line 385
    :cond_2
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->l()V

    goto :goto_1
.end method

.method public b(Lcom/twitter/media/request/b;)Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->a(Lcom/twitter/media/request/b;Z)Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 0

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->l()V

    .line 294
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->j()Z

    .line 295
    return-void
.end method

.method public getDefaultDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageRequest()Lcom/twitter/media/request/a;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->k:Lcom/twitter/media/request/ImageRequester;

    invoke-interface {v0}, Lcom/twitter/media/request/ImageRequester;->a()Lcom/twitter/media/request/a;

    move-result-object v0

    return-object v0
.end method

.method public getImageRequester()Lcom/twitter/media/request/ImageRequester;
    .locals 1

    .prologue
    .line 554
    invoke-static {}, Lcom/twitter/util/h;->d()V

    .line 555
    iget-object v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->k:Lcom/twitter/media/request/ImageRequester;

    return-object v0
.end method

.method public abstract getImageSize()Lcom/twitter/util/math/Size;
.end method

.method public abstract getImageViewAnimator()Landroid/view/ViewPropertyAnimator;
.end method

.method protected final getRequestBuilder()Lcom/twitter/media/request/b;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->g:Lcom/twitter/media/request/b;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->v:Z

    return v0
.end method

.method public i()Lrx/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/o",
            "<",
            "Lcom/twitter/media/request/ImageResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->t:Lrx/subjects/e;

    return-object v0
.end method

.method public j()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 298
    iget-object v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->p:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->p:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 300
    iput-object v2, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->p:Ljava/util/concurrent/Future;

    .line 302
    :cond_0
    iput-object v2, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->o:Lcom/twitter/media/request/a;

    .line 303
    iget-object v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->k:Lcom/twitter/media/request/ImageRequester;

    invoke-interface {v0}, Lcom/twitter/media/request/ImageRequester;->c()Z

    move-result v0

    return v0
.end method

.method public k()V
    .locals 3

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 443
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 444
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 443
    invoke-virtual {p0, v0, v1}, Lcom/twitter/media/ui/image/BaseMediaImageView;->measure(II)V

    .line 445
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/twitter/media/ui/image/BaseMediaImageView;->layout(IIII)V

    .line 446
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->requestLayout()V

    .line 447
    return-void
.end method

.method protected l()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 476
    iget-object v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->b(Landroid/graphics/drawable/Drawable;)V

    .line 477
    iput-boolean v1, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->v:Z

    .line 478
    iput-boolean v1, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->h:Z

    .line 479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->q:Z

    .line 480
    return-void
.end method

.method protected m()V
    .locals 0

    .prologue
    .line 506
    return-void
.end method

.method protected n()V
    .locals 0

    .prologue
    .line 513
    return-void
.end method

.method o()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 520
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->getImageSize()Lcom/twitter/util/math/Size;

    move-result-object v3

    .line 524
    invoke-virtual {v3}, Lcom/twitter/util/math/Size;->e()Z

    move-result v2

    if-nez v2, :cond_0

    .line 527
    iget-object v2, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->k:Lcom/twitter/media/request/ImageRequester;

    invoke-interface {v2}, Lcom/twitter/media/request/ImageRequester;->a()Lcom/twitter/media/request/a;

    move-result-object v4

    .line 528
    if-eqz v4, :cond_0

    .line 532
    invoke-virtual {p0, v4}, Lcom/twitter/media/ui/image/BaseMediaImageView;->a(Lcom/twitter/media/request/a;)Z

    move-result v2

    .line 533
    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->k:Lcom/twitter/media/request/ImageRequester;

    invoke-interface {v2}, Lcom/twitter/media/request/ImageRequester;->b()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    move v2, v0

    .line 534
    :goto_1
    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->m:Z

    if-eqz v2, :cond_0

    invoke-virtual {v4}, Lcom/twitter/media/request/a;->e()Lcom/twitter/util/math/Size;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/twitter/util/math/Size;->d(Lcom/twitter/util/math/Size;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 538
    :cond_3
    iget-object v2, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->g:Lcom/twitter/media/request/b;

    invoke-virtual {p0, v2}, Lcom/twitter/media/ui/image/BaseMediaImageView;->a(Lcom/twitter/media/request/b;)Lcom/twitter/media/request/a;

    move-result-object v2

    .line 539
    iget-object v3, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->o:Lcom/twitter/media/request/a;

    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 540
    iget-object v3, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->p:Ljava/util/concurrent/Future;

    if-eqz v3, :cond_4

    .line 541
    iget-object v3, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->p:Ljava/util/concurrent/Future;

    invoke-interface {v3, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 542
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->p:Ljava/util/concurrent/Future;

    .line 544
    :cond_4
    iput-object v2, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->o:Lcom/twitter/media/request/a;

    .line 546
    :cond_5
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->m()V

    .line 547
    iget-object v3, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->k:Lcom/twitter/media/request/ImageRequester;

    invoke-interface {v3, v2}, Lcom/twitter/media/request/ImageRequester;->a(Lcom/twitter/media/request/a;)Z

    .line 548
    iget-object v2, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->k:Lcom/twitter/media/request/ImageRequester;

    iget-boolean v3, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->v:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->n:Z

    if-nez v3, :cond_7

    :goto_2
    invoke-interface {v2, v0}, Lcom/twitter/media/request/ImageRequester;->a(Z)V

    goto :goto_0

    :cond_6
    move v2, v1

    .line 533
    goto :goto_1

    :cond_7
    move v0, v1

    .line 548
    goto :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 451
    invoke-super {p0}, Lcom/twitter/media/ui/image/AspectRatioFrameLayout;->onDetachedFromWindow()V

    .line 452
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->f()V

    .line 453
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->k()V

    .line 454
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 434
    invoke-super/range {p0 .. p5}, Lcom/twitter/media/ui/image/AspectRatioFrameLayout;->onLayout(ZIIII)V

    .line 435
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->o()V

    .line 436
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x2

    .line 419
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 420
    iget v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v4, :cond_3

    move v0, v1

    .line 421
    :goto_0
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v4, :cond_4

    .line 422
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_5

    .line 423
    :cond_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->c:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_5

    .line 424
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-eqz v0, :cond_5

    .line 425
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-eqz v0, :cond_5

    .line 426
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Image view measures can\'t be determined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v0, v2

    .line 420
    goto :goto_0

    :cond_4
    move v1, v2

    .line 421
    goto :goto_1

    .line 429
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/twitter/media/ui/image/AspectRatioFrameLayout;->onMeasure(II)V

    .line 430
    return-void
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->h()Z

    move-result v0

    return v0
.end method

.method public setCroppingRectangleProvider(Lcom/twitter/media/ui/image/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/media/ui/image/e",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 279
    iput-object p1, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->u:Lcom/twitter/media/ui/image/e;

    .line 280
    return-void
.end method

.method public setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->e:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 243
    iput-object p1, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->e:Landroid/graphics/drawable/Drawable;

    .line 244
    iget-boolean v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->q:Z

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->l()V

    .line 248
    :cond_0
    return-void
.end method

.method public setDefaultDrawableScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->f:Landroid/widget/ImageView$ScaleType;

    .line 252
    return-void
.end method

.method public setErrorDrawableId(I)V
    .locals 0

    .prologue
    .line 255
    iput p1, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->r:I

    .line 256
    return-void
.end method

.method public setFromMemoryOnly(Z)V
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->n:Z

    if-eq v0, p1, :cond_0

    .line 220
    iput-boolean p1, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->n:Z

    .line 221
    if-nez p1, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->o()V

    .line 226
    :cond_0
    return-void
.end method

.method public setImageType(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->k:Lcom/twitter/media/request/ImageRequester;

    invoke-interface {v0, p1}, Lcom/twitter/media/request/ImageRequester;->a(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public setOnImageLoadedListener(Lcom/twitter/media/ui/image/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/media/ui/image/f",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 264
    iput-object p1, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->s:Lcom/twitter/media/ui/image/f;

    .line 265
    return-void
.end method

.method public setScaleType(Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;)V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->d:Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;

    if-eq v0, p1, :cond_0

    .line 234
    iput-object p1, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->d:Lcom/twitter/media/ui/image/BaseMediaImageView$ScaleType;

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->h:Z

    .line 236
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->j()Z

    .line 237
    invoke-virtual {p0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->o()V

    .line 239
    :cond_0
    return-void
.end method

.method public setUpdateOnResize(Z)V
    .locals 0

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/twitter/media/ui/image/BaseMediaImageView;->m:Z

    .line 211
    return-void
.end method
