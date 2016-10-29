.class public Lcom/twitter/android/moments/ui/maker/navigation/x;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/maker/navigation/as;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lrx/subjects/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/a",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/navigation/x;->c:Landroid/view/View;

    .line 28
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/navigation/x;->a:Landroid/view/View;

    .line 29
    invoke-static {}, Lrx/subjects/a;->q()Lrx/subjects/a;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/x;->b:Lrx/subjects/a;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/navigation/x;)Landroid/view/View;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/x;->c:Landroid/view/View;

    return-object v0
.end method

.method public static a(Lcom/twitter/android/moments/ui/maker/navigation/aq;)Lcom/twitter/android/moments/ui/maker/navigation/as;
    .locals 3

    .prologue
    .line 21
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/aq;->a:Lcom/twitter/android/moments/ui/maker/navigation/ap;

    .line 22
    new-instance v1, Lcom/twitter/android/moments/ui/maker/navigation/x;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 23
    :goto_0
    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/navigation/aq;->b:Lcom/twitter/android/moments/ui/maker/navigation/ap;

    invoke-interface {v2}, Lcom/twitter/android/moments/ui/maker/navigation/ap;->a()Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/twitter/android/moments/ui/maker/navigation/x;-><init>(Landroid/view/View;Landroid/view/View;)V

    .line 22
    return-object v1

    .line 23
    :cond_0
    invoke-interface {v0}, Lcom/twitter/android/moments/ui/maker/navigation/ap;->a()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/maker/navigation/x;)Landroid/view/View;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/x;->a:Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/x;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/x;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/ui/maker/navigation/y;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/maker/navigation/y;-><init>(Lcom/twitter/android/moments/ui/maker/navigation/x;)V

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 57
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/twitter/android/moments/ui/maker/navigation/x;)Lrx/subjects/a;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/x;->b:Lrx/subjects/a;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/x;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 61
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/ui/maker/navigation/z;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/maker/navigation/z;-><init>(Lcom/twitter/android/moments/ui/maker/navigation/x;)V

    .line 62
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 76
    return-void
.end method


# virtual methods
.method public a()Lrx/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/w",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/maker/navigation/x;->b()V

    .line 36
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/maker/navigation/x;->c()V

    .line 37
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/navigation/x;->b:Lrx/subjects/a;

    invoke-virtual {v0}, Lrx/subjects/a;->b()Lrx/w;

    move-result-object v0

    return-object v0
.end method
