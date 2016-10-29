.class public Lcom/twitter/android/people/am;
.super Lcom/twitter/app/common/list/aa;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/app/common/list/aa",
        "<",
        "Lcom/twitter/android/people/adapters/i;",
        "Lcom/twitter/android/people/adapters/aa;",
        ">;"
    }
.end annotation


# instance fields
.field private final f:Lcom/twitter/android/people/bb;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/twitter/app/common/list/aj;Lcom/twitter/android/people/x;Lcom/twitter/android/people/bb;Lcom/twitter/android/people/aq;)V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0, p2, p3}, Lcom/twitter/app/common/list/aa;-><init>(Landroid/view/LayoutInflater;Lcom/twitter/app/common/list/aj;)V

    .line 33
    iput-object p5, p0, Lcom/twitter/android/people/am;->f:Lcom/twitter/android/people/bb;

    .line 35
    iget-object v0, p0, Lcom/twitter/android/people/am;->a:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 36
    new-instance v0, Lcom/twitter/android/people/adapters/aa;

    iget-object v1, p0, Lcom/twitter/android/people/am;->f:Lcom/twitter/android/people/bb;

    iget-object v2, p6, Lcom/twitter/android/people/aq;->a:Ljava/util/List;

    invoke-direct {v0, p1, v1, v2}, Lcom/twitter/android/people/adapters/aa;-><init>(Landroid/content/Context;Lcom/twitter/android/people/bb;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/twitter/android/people/am;->a(Lcvt;)V

    .line 38
    new-instance v0, Lcom/twitter/android/people/an;

    invoke-direct {v0, p0}, Lcom/twitter/android/people/an;-><init>(Lcom/twitter/android/people/am;)V

    invoke-interface {p4, v0}, Lcom/twitter/android/people/x;->a(Lcom/twitter/android/people/y;)V

    .line 50
    iget-object v0, p0, Lcom/twitter/android/people/am;->b:Landroid/view/View;

    new-instance v1, Lcom/twitter/android/people/ao;

    invoke-direct {v1, p0, p4}, Lcom/twitter/android/people/ao;-><init>(Lcom/twitter/android/people/am;Lcom/twitter/android/people/x;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p6, Lcom/twitter/android/people/aq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/people/adapters/viewbinders/aj;

    .line 59
    invoke-virtual {p0}, Lcom/twitter/android/people/am;->q()Lcom/twitter/app/common/inject/o;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/twitter/app/common/inject/o;->a(Ljava/lang/Object;)Lcom/twitter/app/common/inject/o;

    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Lcom/twitter/android/people/ap;

    invoke-direct {v0, p0}, Lcom/twitter/android/people/ap;-><init>(Lcom/twitter/android/people/am;)V

    invoke-virtual {p0, v0}, Lcom/twitter/android/people/am;->a(Lcom/twitter/app/common/list/ah;)V

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/people/am;I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/twitter/android/people/am;->c(I)V

    return-void
.end method

.method private c(I)V
    .locals 3

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/twitter/android/people/am;->f:Lcom/twitter/android/people/bb;

    iget-object v1, p0, Lcom/twitter/android/people/am;->a:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/twitter/android/people/am;->h()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/people/bb;->a(II)V

    .line 79
    invoke-direct {p0}, Lcom/twitter/android/people/am;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/twitter/android/people/am;->f:Lcom/twitter/android/people/bb;

    invoke-virtual {v0}, Lcom/twitter/android/people/bb;->c()V

    .line 83
    :cond_0
    return-void
.end method

.method private x()Z
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/twitter/android/people/am;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/twitter/android/people/am;->y()I

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/people/am;->a:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private y()I
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/twitter/android/people/am;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/people/am;->a:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    return v0
.end method

.method private z()Z
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/twitter/android/people/am;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/android/people/am;->h()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public ar_()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/twitter/app/common/list/aa;->ar_()V

    .line 73
    iget-object v0, p0, Lcom/twitter/android/people/am;->f:Lcom/twitter/android/people/bb;

    invoke-virtual {v0}, Lcom/twitter/android/people/bb;->a()V

    .line 74
    return-void
.end method
