.class Lcom/twitter/app/common/list/al;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/refresh/widget/j;


# instance fields
.field final synthetic a:Lcom/twitter/app/common/list/aa;

.field private b:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/twitter/app/common/list/aa;)V
    .locals 0

    .prologue
    .line 780
    iput-object p1, p0, Lcom/twitter/app/common/list/al;->a:Lcom/twitter/app/common/list/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/app/common/list/aa;Lcom/twitter/app/common/list/ab;)V
    .locals 0

    .prologue
    .line 780
    invoke-direct {p0, p1}, Lcom/twitter/app/common/list/al;-><init>(Lcom/twitter/app/common/list/aa;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/twitter/app/common/list/al;->a:Lcom/twitter/app/common/list/aa;

    invoke-static {v0}, Lcom/twitter/app/common/list/aa;->d(Lcom/twitter/app/common/list/aa;)Lcom/twitter/refresh/widget/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/twitter/app/common/list/al;->a:Lcom/twitter/app/common/list/aa;

    invoke-static {v0}, Lcom/twitter/app/common/list/aa;->d(Lcom/twitter/app/common/list/aa;)Lcom/twitter/refresh/widget/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/refresh/widget/j;->a()V

    .line 805
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/twitter/app/common/list/al;->a:Lcom/twitter/app/common/list/aa;

    invoke-static {v0}, Lcom/twitter/app/common/list/aa;->d(Lcom/twitter/app/common/list/aa;)Lcom/twitter/refresh/widget/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/twitter/app/common/list/al;->a:Lcom/twitter/app/common/list/aa;

    invoke-static {v0}, Lcom/twitter/app/common/list/aa;->d(Lcom/twitter/app/common/list/aa;)Lcom/twitter/refresh/widget/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/refresh/widget/j;->a()V

    .line 812
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 785
    iget-object v0, p0, Lcom/twitter/app/common/list/al;->a:Lcom/twitter/app/common/list/aa;

    invoke-static {v0}, Lcom/twitter/app/common/list/aa;->d(Lcom/twitter/app/common/list/aa;)Lcom/twitter/refresh/widget/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/twitter/app/common/list/al;->a:Lcom/twitter/app/common/list/aa;

    invoke-static {v0}, Lcom/twitter/app/common/list/aa;->d(Lcom/twitter/app/common/list/aa;)Lcom/twitter/refresh/widget/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/refresh/widget/j;->b()V

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/twitter/app/common/list/al;->a:Lcom/twitter/app/common/list/aa;

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    .line 789
    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 790
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/twitter/internal/android/widget/GroupedRowView;

    if-eqz v0, :cond_2

    .line 791
    iget-object v0, p0, Lcom/twitter/app/common/list/al;->b:Landroid/view/View;

    if-nez v0, :cond_1

    .line 792
    iget-object v0, p0, Lcom/twitter/app/common/list/al;->a:Lcom/twitter/app/common/list/aa;

    invoke-virtual {v0}, Lcom/twitter/app/common/list/aa;->aK_()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1306ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/list/al;->b:Landroid/view/View;

    .line 794
    :cond_1
    iget-object v0, p0, Lcom/twitter/app/common/list/al;->b:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 795
    iget-object v0, p0, Lcom/twitter/app/common/list/al;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 798
    :cond_2
    return-void
.end method
