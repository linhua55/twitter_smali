.class final Ltv/periscope/android/ui/broadcaster/f;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ltv/periscope/android/view/aw;


# instance fields
.field final synthetic a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;


# direct methods
.method private constructor <init>(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Ltv/periscope/android/ui/broadcaster/f;->a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltv/periscope/android/ui/broadcaster/BroadcasterView;Ltv/periscope/android/ui/broadcaster/b;)V
    .locals 0

    .prologue
    .line 312
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/broadcaster/f;-><init>(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 342
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 343
    iget-object v1, p0, Ltv/periscope/android/ui/broadcaster/f;->a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;

    invoke-static {v1}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->k(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 344
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/f;->a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->l(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)V

    .line 346
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/f;->a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->d(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)Ltv/periscope/android/ui/broadcaster/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/f;->a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->d(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)Ltv/periscope/android/ui/broadcaster/a;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcaster/a;->e()V

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-object v1, p0, Ltv/periscope/android/ui/broadcaster/f;->a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;

    invoke-static {v1}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->m(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 350
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/f;->a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->l(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;FIIII)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Ltv/periscope/android/ui/broadcaster/f;->a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;

    invoke-static {v1}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->h(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 333
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/f;->a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->i(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x43340000    # 180.0f

    mul-float/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 334
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/f;->a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->a(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)Landroid/view/View;

    move-result-object v0

    sub-float v1, v2, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 338
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/f;->a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->j(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)Ltv/periscope/android/ui/broadcast/ChatRoomView;

    move-result-object v0

    sub-float v1, v2, p2

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->setChatAlpha(F)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 316
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 317
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 318
    iget-object v1, p0, Ltv/periscope/android/ui/broadcaster/f;->a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;

    invoke-static {v1}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->e(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 319
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/f;->a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->f(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)V

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    iget-object v1, p0, Ltv/periscope/android/ui/broadcaster/f;->a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;

    invoke-static {v1}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->g(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 321
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/f;->a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->d(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)Ltv/periscope/android/ui/broadcaster/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/f;->a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/f;->a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->d(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)Ltv/periscope/android/ui/broadcaster/a;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcaster/a;->f()V

    goto :goto_0
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 356
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 357
    iget-object v1, p0, Ltv/periscope/android/ui/broadcaster/f;->a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;

    invoke-static {v1}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->n(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 358
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/f;->a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->o(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)V

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v1, p0, Ltv/periscope/android/ui/broadcaster/f;->a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;

    invoke-static {v1}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->p(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Ltv/periscope/android/ui/broadcaster/f;->a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;

    invoke-static {v1}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->q(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 360
    :cond_2
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/f;->a:Ltv/periscope/android/ui/broadcaster/BroadcasterView;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->b(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)V

    goto :goto_0
.end method
