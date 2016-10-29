.class Lcom/twitter/android/moments/ui/guide/aa;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/app/common/list/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/app/common/list/aa",
            "<",
            "Lcom/twitter/android/moments/viewmodels/MomentGuideListItem;",
            "Lcom/twitter/android/moments/ui/guide/ah;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/twitter/app/common/list/aa;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/app/common/list/aa",
            "<",
            "Lcom/twitter/android/moments/viewmodels/MomentGuideListItem;",
            "Lcom/twitter/android/moments/ui/guide/ah;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/twitter/android/moments/ui/guide/aa;->a:Lcom/twitter/app/common/list/aa;

    .line 21
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/aa;->a:Lcom/twitter/app/common/list/aa;

    invoke-virtual {v0}, Lcom/twitter/app/common/list/aa;->aK_()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0562

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 40
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/aa;->a:Lcom/twitter/app/common/list/aa;

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/aa;->a:Lcom/twitter/app/common/list/aa;

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    :cond_0
    return-void
.end method

.method public a(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/aa;->a:Lcom/twitter/app/common/list/aa;

    new-instance v1, Lcom/twitter/android/moments/ui/guide/ab;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/moments/ui/guide/ab;-><init>(Lcom/twitter/android/moments/ui/guide/aa;Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/aa;->a(Lcom/twitter/app/common/list/ah;)V

    .line 35
    return-void
.end method

.method public a(Lcom/twitter/android/moments/ui/guide/ah;)V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/aa;->a:Lcom/twitter/app/common/list/aa;

    invoke-virtual {v0}, Lcom/twitter/app/common/list/aa;->j()V

    .line 25
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/aa;->a:Lcom/twitter/app/common/list/aa;

    invoke-virtual {v0, p1, p1}, Lcom/twitter/app/common/list/aa;->a(Lcvt;Landroid/widget/ListAdapter;)V

    .line 26
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/aa;->a:Lcom/twitter/app/common/list/aa;

    invoke-virtual {v0}, Lcom/twitter/app/common/list/aa;->m()V

    .line 44
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/aa;->a:Lcom/twitter/app/common/list/aa;

    invoke-virtual {v0}, Lcom/twitter/app/common/list/aa;->l()V

    .line 48
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/aa;->a:Lcom/twitter/app/common/list/aa;

    invoke-virtual {v0}, Lcom/twitter/app/common/list/aa;->m()V

    .line 52
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/aa;->a:Lcom/twitter/app/common/list/aa;

    invoke-virtual {v0}, Lcom/twitter/app/common/list/aa;->i()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/aa;->a:Lcom/twitter/app/common/list/aa;

    invoke-virtual {v0}, Lcom/twitter/app/common/list/aa;->o()V

    .line 66
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/aa;->a:Lcom/twitter/app/common/list/aa;

    invoke-virtual {v0}, Lcom/twitter/app/common/list/aa;->t()V

    .line 70
    return-void
.end method
