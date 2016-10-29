.class Lcom/twitter/android/ci;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/widget/x;


# instance fields
.field final synthetic a:Lcom/twitter/library/widget/PageableListView;

.field final synthetic b:Lcom/twitter/android/DMConversationFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/DMConversationFragment;Lcom/twitter/library/widget/PageableListView;)V
    .locals 0

    .prologue
    .line 898
    iput-object p1, p0, Lcom/twitter/android/ci;->b:Lcom/twitter/android/DMConversationFragment;

    iput-object p2, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/library/widget/PageableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/AbsListView;)V
    .locals 0

    .prologue
    .line 901
    return-void
.end method

.method public b(Landroid/widget/AbsListView;)V
    .locals 0

    .prologue
    .line 906
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 924
    iget-object v0, p0, Lcom/twitter/android/ci;->b:Lcom/twitter/android/DMConversationFragment;

    invoke-static {v0}, Lcom/twitter/android/DMConversationFragment;->n(Lcom/twitter/android/DMConversationFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/ci;->b:Lcom/twitter/android/DMConversationFragment;

    .line 925
    invoke-static {v0}, Lcom/twitter/android/DMConversationFragment;->o(Lcom/twitter/android/DMConversationFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eq p3, p4, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ci;->b:Lcom/twitter/android/DMConversationFragment;

    invoke-static {v0}, Lcom/twitter/android/DMConversationFragment;->j(Lcom/twitter/android/DMConversationFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0xa

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/ci;->b:Lcom/twitter/android/DMConversationFragment;

    .line 926
    invoke-static {v0}, Lcom/twitter/android/DMConversationFragment;->a(Lcom/twitter/android/DMConversationFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbnx;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/ci;->b:Lcom/twitter/android/DMConversationFragment;

    .line 927
    invoke-static {v0}, Lcom/twitter/android/DMConversationFragment;->p(Lcom/twitter/android/DMConversationFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 928
    iget-object v0, p0, Lcom/twitter/android/ci;->b:Lcom/twitter/android/DMConversationFragment;

    invoke-static {v0}, Lcom/twitter/android/DMConversationFragment;->q(Lcom/twitter/android/DMConversationFragment;)V

    .line 931
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/ci;->b:Lcom/twitter/android/DMConversationFragment;

    invoke-static {v0}, Lcom/twitter/android/DMConversationFragment;->r(Lcom/twitter/android/DMConversationFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-lez p2, :cond_2

    sub-int v0, p4, p2

    sub-int/2addr v0, p3

    if-nez v0, :cond_2

    .line 935
    iget-object v0, p0, Lcom/twitter/android/ci;->b:Lcom/twitter/android/DMConversationFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twitter/android/DMConversationFragment;->c(Lcom/twitter/android/DMConversationFragment;Z)Z

    .line 938
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/ci;->b:Lcom/twitter/android/DMConversationFragment;

    invoke-static {v0}, Lcom/twitter/android/DMConversationFragment;->s(Lcom/twitter/android/DMConversationFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twitter/android/ci;->b:Lcom/twitter/android/DMConversationFragment;

    invoke-static {v0}, Lcom/twitter/android/DMConversationFragment;->j(Lcom/twitter/android/DMConversationFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twitter/android/ci;->b:Lcom/twitter/android/DMConversationFragment;

    invoke-static {v0}, Lcom/twitter/android/DMConversationFragment;->t(Lcom/twitter/android/DMConversationFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 939
    iget-object v0, p0, Lcom/twitter/android/ci;->b:Lcom/twitter/android/DMConversationFragment;

    invoke-static {v0}, Lcom/twitter/android/DMConversationFragment;->u(Lcom/twitter/android/DMConversationFragment;)Lcom/twitter/android/widget/NewItemBannerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/widget/NewItemBannerView;->b()Z

    .line 942
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/ci;->b:Lcom/twitter/android/DMConversationFragment;

    invoke-static {v0}, Lcom/twitter/android/DMConversationFragment;->v(Lcom/twitter/android/DMConversationFragment;)Lcom/twitter/android/av/s;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 943
    iget-object v0, p0, Lcom/twitter/android/ci;->b:Lcom/twitter/android/DMConversationFragment;

    invoke-static {v0}, Lcom/twitter/android/DMConversationFragment;->w(Lcom/twitter/android/DMConversationFragment;)Lcom/twitter/android/av/s;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/android/ci;->b:Lcom/twitter/android/DMConversationFragment;

    invoke-static {v0, v5}, Lcom/twitter/android/DMConversationFragment;->b(Lcom/twitter/android/DMConversationFragment;I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/android/av/s;->a(I)V

    .line 946
    iget-object v0, p0, Lcom/twitter/android/ci;->b:Lcom/twitter/android/DMConversationFragment;

    invoke-static {v0}, Lcom/twitter/android/DMConversationFragment;->x(Lcom/twitter/android/DMConversationFragment;)Lcom/twitter/android/av/s;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/ci;->a:Lcom/twitter/library/widget/PageableListView;

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/av/s;->a(Landroid/widget/AbsListView;IIIZ)Z

    .line 949
    :cond_4
    return-void

    .line 943
    :cond_5
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 910
    iget-object v3, p0, Lcom/twitter/android/ci;->b:Lcom/twitter/android/DMConversationFragment;

    if-eqz p2, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/twitter/android/DMConversationFragment;->a(Lcom/twitter/android/DMConversationFragment;Z)Z

    .line 911
    iget-object v0, p0, Lcom/twitter/android/ci;->b:Lcom/twitter/android/DMConversationFragment;

    invoke-static {v0}, Lcom/twitter/android/DMConversationFragment;->i(Lcom/twitter/android/DMConversationFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ci;->b:Lcom/twitter/android/DMConversationFragment;

    invoke-static {v0}, Lcom/twitter/android/DMConversationFragment;->j(Lcom/twitter/android/DMConversationFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/twitter/android/ci;->b:Lcom/twitter/android/DMConversationFragment;

    invoke-static {v0, v1}, Lcom/twitter/android/DMConversationFragment;->b(Lcom/twitter/android/DMConversationFragment;Z)Z

    .line 914
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ci;->b:Lcom/twitter/android/DMConversationFragment;

    invoke-static {v0}, Lcom/twitter/android/DMConversationFragment;->k(Lcom/twitter/android/DMConversationFragment;)Lcom/twitter/android/av/s;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 915
    iget-object v0, p0, Lcom/twitter/android/ci;->b:Lcom/twitter/android/DMConversationFragment;

    invoke-static {v0}, Lcom/twitter/android/DMConversationFragment;->l(Lcom/twitter/android/DMConversationFragment;)Lcom/twitter/android/av/s;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/android/ci;->b:Lcom/twitter/android/DMConversationFragment;

    invoke-static {v0, v2}, Lcom/twitter/android/DMConversationFragment;->b(Lcom/twitter/android/DMConversationFragment;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {v1, v0}, Lcom/twitter/android/av/s;->a(I)V

    .line 918
    iget-object v0, p0, Lcom/twitter/android/ci;->b:Lcom/twitter/android/DMConversationFragment;

    invoke-static {v0}, Lcom/twitter/android/DMConversationFragment;->m(Lcom/twitter/android/DMConversationFragment;)Lcom/twitter/android/av/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/av/s;->a(Landroid/widget/AbsListView;I)Z

    .line 920
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 910
    goto :goto_0

    .line 915
    :cond_3
    const/4 v0, 0x3

    goto :goto_1
.end method
