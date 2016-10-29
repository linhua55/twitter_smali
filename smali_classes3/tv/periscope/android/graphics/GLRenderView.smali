.class public Ltv/periscope/android/graphics/GLRenderView;
.super Landroid/view/SurfaceView;
.source "Twttr"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# static fields
.field private static final a:Ltv/periscope/android/graphics/k;


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ltv/periscope/android/graphics/GLRenderView;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ltv/periscope/android/graphics/j;

.field private d:Ltv/periscope/android/graphics/l;

.field private e:Z

.field private f:Ltv/periscope/android/graphics/f;

.field private g:Ltv/periscope/android/graphics/g;

.field private h:Ltv/periscope/android/graphics/h;

.field private i:I

.field private j:I

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1738
    new-instance v0, Ltv/periscope/android/graphics/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltv/periscope/android/graphics/k;-><init>(Ltv/periscope/android/graphics/a;)V

    sput-object v0, Ltv/periscope/android/graphics/GLRenderView;->a:Ltv/periscope/android/graphics/k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 212
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1740
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ltv/periscope/android/graphics/GLRenderView;->b:Ljava/lang/ref/WeakReference;

    .line 213
    invoke-direct {p0}, Ltv/periscope/android/graphics/GLRenderView;->b()V

    .line 214
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 221
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1740
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ltv/periscope/android/graphics/GLRenderView;->b:Ljava/lang/ref/WeakReference;

    .line 222
    invoke-direct {p0}, Ltv/periscope/android/graphics/GLRenderView;->b()V

    .line 223
    return-void
.end method

.method static synthetic a(Ltv/periscope/android/graphics/GLRenderView;)I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Ltv/periscope/android/graphics/GLRenderView;->j:I

    return v0
.end method

.method static synthetic a()Ltv/periscope/android/graphics/k;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Ltv/periscope/android/graphics/GLRenderView;->a:Ltv/periscope/android/graphics/k;

    return-object v0
.end method

.method static synthetic b(Ltv/periscope/android/graphics/GLRenderView;)Ltv/periscope/android/graphics/f;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Ltv/periscope/android/graphics/GLRenderView;->f:Ltv/periscope/android/graphics/f;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Ltv/periscope/android/graphics/GLRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 242
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 250
    return-void
.end method

.method static synthetic c(Ltv/periscope/android/graphics/GLRenderView;)Ltv/periscope/android/graphics/g;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Ltv/periscope/android/graphics/GLRenderView;->g:Ltv/periscope/android/graphics/g;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 1653
    iget-object v0, p0, Ltv/periscope/android/graphics/GLRenderView;->c:Ltv/periscope/android/graphics/j;

    if-eqz v0, :cond_0

    .line 1654
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1657
    :cond_0
    return-void
.end method

.method static synthetic d(Ltv/periscope/android/graphics/GLRenderView;)Ltv/periscope/android/graphics/h;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Ltv/periscope/android/graphics/GLRenderView;->h:Ltv/periscope/android/graphics/h;

    return-object v0
.end method

.method static synthetic e(Ltv/periscope/android/graphics/GLRenderView;)Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Ltv/periscope/android/graphics/GLRenderView;->k:Z

    return v0
.end method

.method static synthetic f(Ltv/periscope/android/graphics/GLRenderView;)Ltv/periscope/android/graphics/l;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Ltv/periscope/android/graphics/GLRenderView;->d:Ltv/periscope/android/graphics/l;

    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 228
    :try_start_0
    iget-object v0, p0, Ltv/periscope/android/graphics/GLRenderView;->c:Ltv/periscope/android/graphics/j;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Ltv/periscope/android/graphics/GLRenderView;->c:Ltv/periscope/android/graphics/j;

    invoke-virtual {v0}, Ltv/periscope/android/graphics/j;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 236
    return-void

    .line 234
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDebugFlags()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Ltv/periscope/android/graphics/GLRenderView;->i:I

    return v0
.end method

.method public getPreserveEGLContextOnPause()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Ltv/periscope/android/graphics/GLRenderView;->k:Z

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Ltv/periscope/android/graphics/GLRenderView;->c:Ltv/periscope/android/graphics/j;

    invoke-virtual {v0}, Ltv/periscope/android/graphics/j;->b()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 570
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 574
    iget-boolean v0, p0, Ltv/periscope/android/graphics/GLRenderView;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/periscope/android/graphics/GLRenderView;->d:Ltv/periscope/android/graphics/l;

    if-eqz v0, :cond_1

    .line 576
    iget-object v0, p0, Ltv/periscope/android/graphics/GLRenderView;->c:Ltv/periscope/android/graphics/j;

    if-eqz v0, :cond_2

    .line 577
    iget-object v0, p0, Ltv/periscope/android/graphics/GLRenderView;->c:Ltv/periscope/android/graphics/j;

    invoke-virtual {v0}, Ltv/periscope/android/graphics/j;->b()I

    move-result v0

    .line 579
    :goto_0
    new-instance v2, Ltv/periscope/android/graphics/j;

    iget-object v3, p0, Ltv/periscope/android/graphics/GLRenderView;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Ltv/periscope/android/graphics/j;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v2, p0, Ltv/periscope/android/graphics/GLRenderView;->c:Ltv/periscope/android/graphics/j;

    .line 580
    if-eq v0, v1, :cond_0

    .line 581
    iget-object v1, p0, Ltv/periscope/android/graphics/GLRenderView;->c:Ltv/periscope/android/graphics/j;

    invoke-virtual {v1, v0}, Ltv/periscope/android/graphics/j;->a(I)V

    .line 583
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/graphics/GLRenderView;->c:Ltv/periscope/android/graphics/j;

    invoke-virtual {v0}, Ltv/periscope/android/graphics/j;->start()V

    .line 585
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/android/graphics/GLRenderView;->e:Z

    .line 586
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Ltv/periscope/android/graphics/GLRenderView;->c:Ltv/periscope/android/graphics/j;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Ltv/periscope/android/graphics/GLRenderView;->c:Ltv/periscope/android/graphics/j;

    invoke-virtual {v0}, Ltv/periscope/android/graphics/j;->e()V

    .line 596
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/graphics/GLRenderView;->e:Z

    .line 597
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 598
    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0

    .prologue
    .line 262
    iput p1, p0, Ltv/periscope/android/graphics/GLRenderView;->i:I

    .line 263
    return-void
.end method

.method public setEGLConfigChooser(Ltv/periscope/android/graphics/f;)V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0}, Ltv/periscope/android/graphics/GLRenderView;->c()V

    .line 387
    iput-object p1, p0, Ltv/periscope/android/graphics/GLRenderView;->f:Ltv/periscope/android/graphics/f;

    .line 388
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1

    .prologue
    .line 405
    new-instance v0, Ltv/periscope/android/graphics/m;

    invoke-direct {v0, p0, p1}, Ltv/periscope/android/graphics/m;-><init>(Ltv/periscope/android/graphics/GLRenderView;Z)V

    invoke-virtual {p0, v0}, Ltv/periscope/android/graphics/GLRenderView;->setEGLConfigChooser(Ltv/periscope/android/graphics/f;)V

    .line 406
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0

    .prologue
    .line 454
    invoke-direct {p0}, Ltv/periscope/android/graphics/GLRenderView;->c()V

    .line 455
    iput p1, p0, Ltv/periscope/android/graphics/GLRenderView;->j:I

    .line 456
    return-void
.end method

.method public setEGLContextFactory(Ltv/periscope/android/graphics/g;)V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0}, Ltv/periscope/android/graphics/GLRenderView;->c()V

    .line 356
    iput-object p1, p0, Ltv/periscope/android/graphics/GLRenderView;->g:Ltv/periscope/android/graphics/g;

    .line 357
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Ltv/periscope/android/graphics/h;)V
    .locals 0

    .prologue
    .line 369
    invoke-direct {p0}, Ltv/periscope/android/graphics/GLRenderView;->c()V

    .line 370
    iput-object p1, p0, Ltv/periscope/android/graphics/GLRenderView;->h:Ltv/periscope/android/graphics/h;

    .line 371
    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0

    .prologue
    .line 292
    iput-boolean p1, p0, Ltv/periscope/android/graphics/GLRenderView;->k:Z

    .line 293
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Ltv/periscope/android/graphics/GLRenderView;->c:Ltv/periscope/android/graphics/j;

    invoke-virtual {v0, p1}, Ltv/periscope/android/graphics/j;->a(I)V

    .line 476
    return-void
.end method

.method public setRenderer(Ltv/periscope/android/graphics/l;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 329
    invoke-direct {p0}, Ltv/periscope/android/graphics/GLRenderView;->c()V

    .line 330
    iget-object v0, p0, Ltv/periscope/android/graphics/GLRenderView;->f:Ltv/periscope/android/graphics/f;

    if-nez v0, :cond_0

    .line 331
    new-instance v0, Ltv/periscope/android/graphics/m;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ltv/periscope/android/graphics/m;-><init>(Ltv/periscope/android/graphics/GLRenderView;Z)V

    iput-object v0, p0, Ltv/periscope/android/graphics/GLRenderView;->f:Ltv/periscope/android/graphics/f;

    .line 333
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/graphics/GLRenderView;->g:Ltv/periscope/android/graphics/g;

    if-nez v0, :cond_1

    .line 334
    new-instance v0, Ltv/periscope/android/graphics/d;

    invoke-direct {v0, p0, v2}, Ltv/periscope/android/graphics/d;-><init>(Ltv/periscope/android/graphics/GLRenderView;Ltv/periscope/android/graphics/a;)V

    iput-object v0, p0, Ltv/periscope/android/graphics/GLRenderView;->g:Ltv/periscope/android/graphics/g;

    .line 336
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/graphics/GLRenderView;->h:Ltv/periscope/android/graphics/h;

    if-nez v0, :cond_2

    .line 337
    new-instance v0, Ltv/periscope/android/graphics/e;

    invoke-direct {v0, v2}, Ltv/periscope/android/graphics/e;-><init>(Ltv/periscope/android/graphics/a;)V

    iput-object v0, p0, Ltv/periscope/android/graphics/GLRenderView;->h:Ltv/periscope/android/graphics/h;

    .line 339
    :cond_2
    iput-object p1, p0, Ltv/periscope/android/graphics/GLRenderView;->d:Ltv/periscope/android/graphics/l;

    .line 340
    new-instance v0, Ltv/periscope/android/graphics/j;

    iget-object v1, p0, Ltv/periscope/android/graphics/GLRenderView;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ltv/periscope/android/graphics/j;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Ltv/periscope/android/graphics/GLRenderView;->c:Ltv/periscope/android/graphics/j;

    .line 341
    iget-object v0, p0, Ltv/periscope/android/graphics/GLRenderView;->c:Ltv/periscope/android/graphics/j;

    invoke-virtual {v0}, Ltv/periscope/android/graphics/j;->start()V

    .line 342
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Ltv/periscope/android/graphics/GLRenderView;->c:Ltv/periscope/android/graphics/j;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Ltv/periscope/android/graphics/GLRenderView;->c:Ltv/periscope/android/graphics/j;

    invoke-virtual {v0, p3, p4}, Ltv/periscope/android/graphics/j;->a(II)V

    .line 531
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Ltv/periscope/android/graphics/GLRenderView;->c:Ltv/periscope/android/graphics/j;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Ltv/periscope/android/graphics/GLRenderView;->c:Ltv/periscope/android/graphics/j;

    invoke-virtual {v0}, Ltv/periscope/android/graphics/j;->c()V

    .line 510
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Ltv/periscope/android/graphics/GLRenderView;->c:Ltv/periscope/android/graphics/j;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Ltv/periscope/android/graphics/GLRenderView;->c:Ltv/periscope/android/graphics/j;

    invoke-virtual {v0}, Ltv/periscope/android/graphics/j;->d()V

    .line 521
    :cond_0
    return-void
.end method
