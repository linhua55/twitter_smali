.class public Laxk;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const v0, 0x7f1303ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Laxk;->a:Landroid/view/ViewGroup;

    .line 22
    const v0, 0x7f1303af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laxk;->b:Landroid/view/View;

    .line 23
    return-void
.end method

.method private b(I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-static {}, Lcom/twitter/util/ak;->g()Z

    move-result v2

    .line 40
    if-eqz v2, :cond_0

    move v1, v0

    .line 41
    :goto_0
    if-eqz v2, :cond_1

    .line 42
    :goto_1
    iget-object v2, p0, Laxk;->b:Landroid/view/View;

    invoke-virtual {v2, p1, v0, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 43
    return-void

    :cond_0
    move v1, p1

    .line 40
    goto :goto_0

    :cond_1
    move p1, v0

    .line 41
    goto :goto_1
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Laxk;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v0, p1, :cond_0

    .line 27
    iget-object v0, p0, Laxk;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 28
    iget-object v0, p0, Laxk;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 30
    const/4 v1, -0x3

    invoke-static {v1}, Lcom/twitter/library/media/manager/UserImageRequest;->a(I)I

    move-result v1

    if-ge p1, v1, :cond_1

    const v1, 0x7f0f0494

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 33
    :goto_0
    invoke-direct {p0, v0}, Laxk;->b(I)V

    .line 34
    iget-object v0, p0, Laxk;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 36
    :cond_0
    return-void

    .line 31
    :cond_1
    const v1, 0x7f0f0493

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method
