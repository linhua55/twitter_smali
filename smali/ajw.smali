.class public Lajw;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/view/animation/Interpolator;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/view/View;

.field private final d:Landroid/view/View;

.field private final e:Landroid/widget/ImageButton;

.field private final f:Landroid/view/View;

.field private final g:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageButton;Landroid/view/View;Landroid/content/res/Resources;)V
    .locals 3

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lcwp;->b()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lajw;->a:Landroid/view/animation/Interpolator;

    .line 37
    iput-object p1, p0, Lajw;->b:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lajw;->c:Landroid/view/View;

    .line 39
    iput-object p3, p0, Lajw;->d:Landroid/view/View;

    .line 40
    iput-object p4, p0, Lajw;->e:Landroid/widget/ImageButton;

    .line 41
    iget-object v0, p0, Lajw;->e:Landroid/widget/ImageButton;

    const/4 v1, -0x1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 42
    iput-object p5, p0, Lajw;->f:Landroid/view/View;

    .line 43
    iget-object v0, p0, Lajw;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    const v0, 0x7f100031

    invoke-virtual {p6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lajw;->g:I

    .line 46
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lajw;
    .locals 7

    .prologue
    .line 30
    new-instance v0, Lajw;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1303eb

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1304bf

    .line 31
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f1304c7

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    const v5, 0x7f130461

    .line 32
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lajw;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageButton;Landroid/view/View;Landroid/content/res/Resources;)V

    .line 30
    return-object v0
.end method

.method private a(F)V
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lajw;->c:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->withLayer()Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget v1, p0, Lajw;->g:I

    int-to-long v2, v1

    .line 78
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lajw;->a:Landroid/view/animation/Interpolator;

    .line 79
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 81
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lajw;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lajw;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 49
    iget-object v0, p0, Lajw;->c:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 50
    if-eqz p1, :cond_0

    .line 51
    invoke-direct {p0, v2}, Lajw;->a(F)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lajw;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lajw;->e:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 85
    return-void
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lajw;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method public b(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    iget-object v0, p0, Lajw;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 59
    if-eqz p1, :cond_0

    .line 60
    invoke-direct {p0, v2}, Lajw;->a(F)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lajw;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lajw;->e:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 89
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lajw;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    return-void
.end method
