.class public Lako;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:I

.field private final b:Landroid/view/View;

.field private final c:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private final d:Laku;

.field private e:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private f:Landroid/animation/ValueAnimator;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/view/View;ILaku;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lako;->g:Z

    .line 57
    iput-object p1, p0, Lako;->b:Landroid/view/View;

    .line 58
    iput p2, p0, Lako;->c:I

    .line 59
    iput-object p3, p0, Lako;->d:Laku;

    .line 60
    iput p4, p0, Lako;->a:I

    .line 61
    return-void
.end method

.method static synthetic a(Lako;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lako;->a:I

    return v0
.end method

.method static synthetic a(Lako;I)I
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lako;->e:I

    return p1
.end method

.method public static a(Landroid/view/View;Landroid/content/Context;)Lako;
    .locals 4

    .prologue
    .line 44
    new-instance v0, Lako;

    const v1, 0x7f12002b

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    new-instance v2, Laku;

    invoke-direct {v2}, Laku;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lako;-><init>(Landroid/view/View;ILaku;I)V

    return-object v0
.end method

.method public static a(Landroid/view/View;Landroid/content/Context;Laja;)Lako;
    .locals 4

    .prologue
    .line 51
    new-instance v0, Lako;

    const v1, 0x7f12002b

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    new-instance v2, Laku;

    invoke-direct {v2}, Laku;-><init>()V

    .line 52
    invoke-virtual {p2}, Laja;->b()I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lako;-><init>(Landroid/view/View;ILaku;I)V

    .line 51
    return-object v0
.end method

.method public static a(Landroid/view/ViewGroup;Landroid/content/Context;Laja;Z)Lako;
    .locals 1

    .prologue
    .line 37
    if-eqz p3, :cond_0

    .line 38
    invoke-static {p0, p1, p2}, Lako;->a(Landroid/view/View;Landroid/content/Context;Laja;)Lako;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    .line 39
    :cond_0
    invoke-static {p0, p1}, Lako;->a(Landroid/view/View;Landroid/content/Context;)Lako;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lako;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lako;->f:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic b(Lako;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lako;->e:I

    return v0
.end method

.method static synthetic c(Lako;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lako;->c:I

    return v0
.end method

.method private c()Ldjf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldjf",
            "<-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lakp;

    invoke-direct {v0, p0}, Lakp;-><init>(Lako;)V

    return-object v0
.end method

.method static synthetic d(Lako;)Landroid/view/View;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lako;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lako;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lako;->g:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Lrx/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lrx/w",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lako;->d:Laku;

    iget v1, p0, Lako;->c:I

    .line 66
    invoke-virtual {v0, p1, v1}, Laku;->a(Landroid/graphics/Bitmap;I)Lrx/w;

    move-result-object v0

    .line 67
    invoke-direct {p0}, Lako;->c()Ldjf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/w;->b(Ldjf;)Lrx/w;

    move-result-object v0

    .line 65
    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lako;->f:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lako;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 98
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lako;->g:Z

    .line 99
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lako;->f:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lako;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 105
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lako;->g:Z

    .line 106
    return-void
.end method
