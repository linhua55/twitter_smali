.class public abstract Ltv/periscope/android/view/SheetImpl;
.super Landroid/widget/FrameLayout;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:I

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/view/SheetImpl;->d:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/view/SheetImpl;->e:Ljava/util/List;

    .line 34
    invoke-direct {p0, p1}, Ltv/periscope/android/view/SheetImpl;->a(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/view/SheetImpl;->d:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/view/SheetImpl;->e:Ljava/util/List;

    .line 39
    invoke-direct {p0, p1}, Ltv/periscope/android/view/SheetImpl;->a(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/view/SheetImpl;->d:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/view/SheetImpl;->e:Ljava/util/List;

    .line 44
    invoke-direct {p0, p1}, Ltv/periscope/android/view/SheetImpl;->a(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method static synthetic a(Ltv/periscope/android/view/SheetImpl;)Landroid/view/View;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Ltv/periscope/android/view/SheetImpl;->a:Landroid/view/View;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/n;->ps__sheet:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 49
    sget v0, Ltv/periscope/android/library/l;->dim_bg:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/view/SheetImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/view/SheetImpl;->a:Landroid/view/View;

    .line 50
    iget-object v0, p0, Ltv/periscope/android/view/SheetImpl;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    sget v0, Ltv/periscope/android/library/l;->sheet_inner:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/view/SheetImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/view/SheetImpl;->b:Landroid/view/View;

    .line 55
    iget-object v0, p0, Ltv/periscope/android/view/SheetImpl;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {p0}, Ltv/periscope/android/view/SheetImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ltv/periscope/android/util/w;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Ltv/periscope/android/view/SheetImpl;->c:I

    .line 59
    invoke-direct {p0}, Ltv/periscope/android/view/SheetImpl;->d()V

    .line 60
    return-void
.end method

.method static synthetic a(Ltv/periscope/android/view/SheetImpl;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Ltv/periscope/android/view/SheetImpl;->f:Z

    return p1
.end method

.method static synthetic b(Ltv/periscope/android/view/SheetImpl;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Ltv/periscope/android/view/SheetImpl;->g:Z

    return p1
.end method

.method private d()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Ltv/periscope/android/view/SheetImpl;->d:Ljava/util/List;

    new-instance v1, Ltv/periscope/android/view/ay;

    invoke-direct {v1, p0}, Ltv/periscope/android/view/ay;-><init>(Ltv/periscope/android/view/SheetImpl;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Ltv/periscope/android/view/SheetImpl;->e:Ljava/util/List;

    new-instance v1, Ltv/periscope/android/view/az;

    invoke-direct {v1, p0}, Ltv/periscope/android/view/az;-><init>(Ltv/periscope/android/view/SheetImpl;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method


# virtual methods
.method public a(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .prologue
    .line 105
    if-eqz p1, :cond_0

    iget-object v0, p0, Ltv/periscope/android/view/SheetImpl;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Ltv/periscope/android/view/SheetImpl;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Ltv/periscope/android/view/SheetImpl;->g:Z

    return v0
.end method

.method public b()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    .line 117
    iget-boolean v0, p0, Ltv/periscope/android/view/SheetImpl;->f:Z

    if-eqz v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/view/SheetImpl;->a:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 122
    new-instance v0, Ltv/periscope/android/view/ba;

    invoke-direct {v0, p0}, Ltv/periscope/android/view/ba;-><init>(Ltv/periscope/android/view/SheetImpl;)V

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 129
    iget-object v0, p0, Ltv/periscope/android/view/SheetImpl;->b:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget v5, p0, Ltv/periscope/android/view/SheetImpl;->c:I

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 130
    invoke-virtual {p0}, Ltv/periscope/android/view/SheetImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ltv/periscope/android/view/r;->b(Landroid/content/Context;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 131
    iget-object v0, p0, Ltv/periscope/android/view/SheetImpl;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .line 132
    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 135
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 136
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 137
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 121
    :array_0
    .array-data 4
        0x0
        0x3f19999a    # 0.6f
    .end array-data
.end method

.method public c()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    .line 142
    iget-boolean v0, p0, Ltv/periscope/android/view/SheetImpl;->f:Z

    if-eqz v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/view/SheetImpl;->a:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 147
    new-instance v0, Ltv/periscope/android/view/ab;

    iget-object v2, p0, Ltv/periscope/android/view/SheetImpl;->a:Landroid/view/View;

    invoke-direct {v0, v2}, Ltv/periscope/android/view/ab;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 149
    iget-object v0, p0, Ltv/periscope/android/view/SheetImpl;->b:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Ltv/periscope/android/view/SheetImpl;->c:I

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 150
    invoke-virtual {p0}, Ltv/periscope/android/view/SheetImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ltv/periscope/android/view/r;->a(Landroid/content/Context;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 151
    iget-object v0, p0, Ltv/periscope/android/view/SheetImpl;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .line 152
    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 155
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 156
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 157
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 146
    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x0
    .end array-data
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 163
    sget v1, Ltv/periscope/android/library/l;->dim_bg:I

    if-ne v0, v1, :cond_0

    .line 164
    invoke-virtual {p0}, Ltv/periscope/android/view/SheetImpl;->c()V

    .line 166
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 95
    invoke-virtual {p0}, Ltv/periscope/android/view/SheetImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ltv/periscope/android/util/w;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Ltv/periscope/android/view/SheetImpl;->c:I

    .line 96
    return-void
.end method
