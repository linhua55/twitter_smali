.class public Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;->a:Landroid/support/v7/widget/RecyclerView;

    .line 21
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/widget/RecyclerView$ItemAnimator;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/twitter/android/moments/ui/maker/viewdelegate/aa;
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;->a:Landroid/support/v7/widget/RecyclerView;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForItemId(J)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    new-instance v0, Lcom/twitter/android/moments/ui/maker/viewdelegate/aj;

    invoke-direct {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/aj;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View;)Lcom/twitter/android/moments/ui/maker/viewdelegate/aa;
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 55
    if-eqz v1, :cond_0

    new-instance v0, Lcom/twitter/android/moments/ui/maker/viewdelegate/aj;

    invoke-direct {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/aj;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 44
    return-void
.end method

.method public b(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/twitter/android/moments/ui/maker/viewdelegate/an;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/twitter/android/moments/ui/maker/viewdelegate/an;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/an;-><init>(Landroid/view/ViewTreeObserver;)V

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public d()Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/ak;->a:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method
