.class public Ltv/periscope/android/ui/broadcaster/BroadcasterView;
.super Ltv/periscope/android/view/RootDragLayout;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field private h:Landroid/view/View;

.field private i:Landroid/widget/Button;

.field private j:Landroid/view/View;

.field private k:Ltv/periscope/android/ui/broadcast/ChatRoomView;

.field private l:Ltv/periscope/android/ui/broadcaster/CameraPreviewLayout;

.field private m:Landroid/widget/EditText;

.field private n:Landroid/view/View;

.field private o:Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;

.field private p:Ltv/periscope/android/graphics/GLRenderView;

.field private q:Landroid/view/View;

.field private r:Ljava/lang/Runnable;

.field private s:Ljava/lang/Runnable;

.field private t:Ljava/lang/Runnable;

.field private u:Landroid/graphics/Typeface;

.field private v:Landroid/graphics/Typeface;

.field private w:Ltv/periscope/android/ui/broadcaster/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Ltv/periscope/android/view/RootDragLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    const-string/jumbo v0, "fonts/MuseoSans-500.otf"

    invoke-static {p1, v0}, Ltv/periscope/android/view/as;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->u:Landroid/graphics/Typeface;

    .line 72
    const-string/jumbo v0, "fonts/MuseoSans-700.otf"

    invoke-static {p1, v0}, Ltv/periscope/android/view/as;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->v:Landroid/graphics/Typeface;

    .line 74
    new-instance v0, Ltv/periscope/android/ui/broadcaster/b;

    invoke-direct {v0, p0}, Ltv/periscope/android/ui/broadcaster/b;-><init>(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->r:Ljava/lang/Runnable;

    .line 80
    new-instance v0, Ltv/periscope/android/ui/broadcaster/c;

    invoke-direct {v0, p0}, Ltv/periscope/android/ui/broadcaster/c;-><init>(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->s:Ljava/lang/Runnable;

    .line 86
    new-instance v0, Ltv/periscope/android/ui/broadcaster/d;

    invoke-direct {v0, p0}, Ltv/periscope/android/ui/broadcaster/d;-><init>(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->t:Ljava/lang/Runnable;

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->setDraggable(Z)V

    .line 94
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->setFriction(F)V

    .line 95
    invoke-virtual {p0, p0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 96
    new-instance v0, Ltv/periscope/android/ui/broadcaster/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltv/periscope/android/ui/broadcaster/f;-><init>(Ltv/periscope/android/ui/broadcaster/BroadcasterView;Ltv/periscope/android/ui/broadcaster/b;)V

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->setOnViewDragListener(Ltv/periscope/android/view/aw;)V

    .line 97
    return-void
.end method

.method static synthetic a(Ltv/periscope/android/ui/broadcaster/BroadcasterView;Landroid/view/View;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->e(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->q:Landroid/view/View;

    return-object v0
.end method

.method private a(ZILandroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->i:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 227
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->i:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(I)V

    .line 228
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->i:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 229
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->i:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 230
    return-void
.end method

.method static synthetic b(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->e()V

    return-void
.end method

.method static synthetic c(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->f()V

    return-void
.end method

.method static synthetic d(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)Ltv/periscope/android/ui/broadcaster/a;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->w:Ltv/periscope/android/ui/broadcaster/a;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->setSystemUiVisibility(I)V

    .line 149
    return-void
.end method

.method static synthetic e(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->c:I

    return v0
.end method

.method private e(Landroid/view/View;)Landroid/animation/Animator;
    .locals 2

    .prologue
    .line 183
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 184
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ltv/periscope/android/view/r;->b(Landroid/content/Context;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 185
    new-instance v1, Ltv/periscope/android/ui/broadcaster/e;

    invoke-direct {v1, p0, p1, p1}, Ltv/periscope/android/ui/broadcaster/e;-><init>(Ltv/periscope/android/ui/broadcaster/BroadcasterView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 191
    return-object v0

    .line 183
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private e()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->setSystemUiVisibility(I)V

    .line 153
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 164
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 165
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 166
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 167
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->g()V

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method static synthetic f(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->h()V

    return-void
.end method

.method static synthetic g(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->d:I

    return v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->r:Ljava/lang/Runnable;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 175
    return-void
.end method

.method static synthetic h(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->c:I

    return v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 179
    return-void
.end method

.method static synthetic i(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->n:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)Ltv/periscope/android/ui/broadcast/ChatRoomView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->k:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    return-object v0
.end method

.method static synthetic k(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->d:I

    return v0
.end method

.method static synthetic l(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->d()V

    return-void
.end method

.method static synthetic m(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->e:I

    return v0
.end method

.method static synthetic n(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->c:I

    return v0
.end method

.method static synthetic o(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->g()V

    return-void
.end method

.method static synthetic p(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->d:I

    return v0
.end method

.method static synthetic q(Ltv/periscope/android/ui/broadcaster/BroadcasterView;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->e:I

    return v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->o:Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->a(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public getBroadcastTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraPreview()Ltv/periscope/android/ui/broadcaster/CameraPreviewLayout;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->l:Ltv/periscope/android/ui/broadcaster/CameraPreviewLayout;

    return-object v0
.end method

.method public getChatRoomView()Ltv/periscope/android/ui/broadcast/ChatRoomView;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->k:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    return-object v0
.end method

.method public getRenderView()Ltv/periscope/android/graphics/GLRenderView;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->p:Ltv/periscope/android/graphics/GLRenderView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->w:Ltv/periscope/android/ui/broadcaster/a;

    if-nez v0, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 200
    sget v1, Ltv/periscope/android/library/l;->btn_start_broadcast:I

    if-ne v0, v1, :cond_2

    .line 201
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->w:Ltv/periscope/android/ui/broadcaster/a;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcaster/a;->a()V

    goto :goto_0

    .line 202
    :cond_2
    sget v1, Ltv/periscope/android/library/l;->btn_stop_broadcast:I

    if-ne v0, v1, :cond_3

    .line 203
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->w:Ltv/periscope/android/ui/broadcaster/a;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcaster/a;->b()V

    goto :goto_0

    .line 204
    :cond_3
    sget v1, Ltv/periscope/android/library/l;->btn_cameraflip:I

    if-ne v0, v1, :cond_4

    .line 205
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->w:Ltv/periscope/android/ui/broadcaster/a;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcaster/a;->c()V

    goto :goto_0

    .line 206
    :cond_4
    sget v1, Ltv/periscope/android/library/l;->btn_close:I

    if-ne v0, v1, :cond_5

    .line 207
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->w:Ltv/periscope/android/ui/broadcaster/a;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcaster/a;->d()V

    goto :goto_0

    .line 208
    :cond_5
    sget v1, Ltv/periscope/android/library/l;->drawer_caret:I

    if-ne v0, v1, :cond_0

    .line 209
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->l:Ltv/periscope/android/ui/broadcaster/CameraPreviewLayout;

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->d(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Ltv/periscope/android/view/RootDragLayout;->onDetachedFromWindow()V

    .line 142
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 143
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->s:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 144
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->t:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 145
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 101
    invoke-super {p0}, Ltv/periscope/android/view/RootDragLayout;->onFinishInflate()V

    .line 103
    sget v0, Ltv/periscope/android/library/l;->chatroom_view:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/broadcast/ChatRoomView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->k:Ltv/periscope/android/ui/broadcast/ChatRoomView;

    .line 104
    sget v0, Ltv/periscope/android/library/l;->camera_preview:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/broadcaster/CameraPreviewLayout;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->l:Ltv/periscope/android/ui/broadcaster/CameraPreviewLayout;

    .line 105
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->l:Ltv/periscope/android/ui/broadcaster/CameraPreviewLayout;

    new-instance v1, Ltv/periscope/android/ui/broadcaster/g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ltv/periscope/android/ui/broadcaster/g;-><init>(Ltv/periscope/android/ui/broadcaster/BroadcasterView;Ltv/periscope/android/ui/broadcaster/b;)V

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcaster/CameraPreviewLayout;->setGestureListener(Landroid/view/GestureDetector$SimpleOnGestureListener;)V

    .line 106
    sget v0, Ltv/periscope/android/library/l;->stream_details:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->h:Landroid/view/View;

    .line 107
    sget v0, Ltv/periscope/android/library/l;->edit_broadcast_title:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->m:Landroid/widget/EditText;

    .line 109
    sget v0, Ltv/periscope/android/library/l;->playback_controls:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->j:Landroid/view/View;

    .line 110
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->j:Landroid/view/View;

    sget v1, Ltv/periscope/android/library/l;->btn_stop_broadcast:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->j:Landroid/view/View;

    sget v1, Ltv/periscope/android/library/l;->btn_cameraflip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    sget v0, Ltv/periscope/android/library/l;->btn_start_broadcast:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->i:Landroid/widget/Button;

    .line 114
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    sget v0, Ltv/periscope/android/library/l;->btn_close:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    sget v0, Ltv/periscope/android/library/l;->drawer_caret:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->n:Landroid/view/View;

    .line 119
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->n:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    sget v0, Ltv/periscope/android/library/l;->bottom_drag_child:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->o:Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;

    .line 122
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->o:Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;

    invoke-virtual {v0, p0}, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->o:Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->setActionButtonVisibility(Z)V

    .line 124
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->o:Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->a()V

    .line 126
    sget v0, Ltv/periscope/android/library/l;->camera_playback:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/graphics/GLRenderView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->p:Ltv/periscope/android/graphics/GLRenderView;

    .line 128
    sget v0, Ltv/periscope/android/library/l;->gesture_hints:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->q:Landroid/view/View;

    .line 129
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 130
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->q:Landroid/view/View;

    sget v2, Ltv/periscope/android/library/l;->swipe_down_label:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Ltv/periscope/android/library/p;->ps__camera_swipe_down:I

    .line 131
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltv/periscope/android/util/aa;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 132
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->q:Landroid/view/View;

    sget v2, Ltv/periscope/android/library/l;->double_tap_label:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Ltv/periscope/android/library/p;->ps__camera_double_tap:I

    .line 133
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltv/periscope/android/util/aa;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 136
    sget v0, Ltv/periscope/android/library/p;->ps__initializing:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->setButtonDisabledMessage(I)V

    .line 137
    return-void
.end method

.method public onSystemUiVisibilityChange(I)V
    .locals 4

    .prologue
    .line 283
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->w:Ltv/periscope/android/ui/broadcaster/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->w:Ltv/periscope/android/ui/broadcaster/a;

    .line 284
    invoke-interface {v0}, Ltv/periscope/android/ui/broadcaster/a;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->t:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 286
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->t:Ljava/lang/Runnable;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 288
    :cond_1
    return-void
.end method

.method public setBroadcastInfoAdapter(Ltv/periscope/android/ui/broadcast/a;)V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->o:Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;

    invoke-virtual {v0, p1}, Ltv/periscope/android/ui/broadcast/BroadcastInfoLayout;->setAdapter(Ltv/periscope/android/ui/broadcast/a;)V

    .line 246
    return-void
.end method

.method public setBroadcastTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->m:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 259
    return-void
.end method

.method public setBroadcasterDelegate(Ltv/periscope/android/ui/broadcaster/a;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->w:Ltv/periscope/android/ui/broadcaster/a;

    .line 242
    return-void
.end method

.method public setButtonDisabledMessage(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 218
    const/4 v0, 0x0

    iget-object v1, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->u:Landroid/graphics/Typeface;

    invoke-direct {p0, v0, p1, v1}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->a(ZILandroid/graphics/Typeface;)V

    .line 219
    return-void
.end method

.method public setButtonEnabledMessage(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 222
    const/4 v0, 0x1

    iget-object v1, p0, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->v:Landroid/graphics/Typeface;

    invoke-direct {p0, v0, p1, v1}, Ltv/periscope/android/ui/broadcaster/BroadcasterView;->a(ZILandroid/graphics/Typeface;)V

    .line 223
    return-void
.end method
