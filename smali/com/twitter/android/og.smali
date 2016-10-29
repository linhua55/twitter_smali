.class Lcom/twitter/android/og;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/twitter/android/oq;


# instance fields
.field final synthetic a:Lcom/twitter/android/SearchActivity;

.field private final b:Lcom/twitter/android/SearchFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/SearchActivity;Lcom/twitter/android/SearchFragment;)V
    .locals 0

    .prologue
    .line 1797
    iput-object p1, p0, Lcom/twitter/android/og;->a:Lcom/twitter/android/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1798
    iput-object p2, p0, Lcom/twitter/android/og;->b:Lcom/twitter/android/SearchFragment;

    .line 1799
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1823
    iget-object v0, p0, Lcom/twitter/android/og;->a:Lcom/twitter/android/SearchActivity;

    iget-boolean v0, v0, Lcom/twitter/android/SearchActivity;->i:Z

    if-eqz v0, :cond_1

    .line 1824
    iget-object v0, p0, Lcom/twitter/android/og;->a:Lcom/twitter/android/SearchActivity;

    invoke-static {v0}, Lcom/twitter/android/SearchActivity;->c(Lcom/twitter/android/SearchActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/og;->a:Lcom/twitter/android/SearchActivity;

    iget-object v1, v1, Lcom/twitter/android/SearchActivity;->j:Lcom/twitter/android/kj;

    invoke-virtual {v1}, Lcom/twitter/android/kj;->a()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/ax;

    .line 1825
    iput v2, v0, Lcom/twitter/library/client/ax;->i:I

    .line 1826
    iget-object v0, p0, Lcom/twitter/android/og;->a:Lcom/twitter/android/SearchActivity;

    iget-object v0, v0, Lcom/twitter/android/SearchActivity;->j:Lcom/twitter/android/kj;

    invoke-virtual {v0}, Lcom/twitter/android/kj;->notifyDataSetChanged()V

    .line 1833
    :cond_0
    :goto_0
    return-void

    .line 1827
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/og;->a:Lcom/twitter/android/SearchActivity;

    invoke-static {v0}, Lcom/twitter/android/SearchActivity;->d(Lcom/twitter/android/SearchActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1828
    iget-object v0, p0, Lcom/twitter/android/og;->a:Lcom/twitter/android/SearchActivity;

    invoke-static {v0}, Lcom/twitter/android/SearchActivity;->c(Lcom/twitter/android/SearchActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/og;->a:Lcom/twitter/android/SearchActivity;

    iget-object v1, v1, Lcom/twitter/android/SearchActivity;->j:Lcom/twitter/android/kj;

    invoke-virtual {v1}, Lcom/twitter/android/kj;->a()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/ax;

    .line 1829
    iput v2, v0, Lcom/twitter/library/client/ax;->i:I

    .line 1830
    iget-object v0, p0, Lcom/twitter/android/og;->a:Lcom/twitter/android/SearchActivity;

    iget-object v0, v0, Lcom/twitter/android/SearchActivity;->j:Lcom/twitter/android/kj;

    invoke-virtual {v0}, Lcom/twitter/android/kj;->notifyDataSetChanged()V

    .line 1831
    iget-object v0, p0, Lcom/twitter/android/og;->a:Lcom/twitter/android/SearchActivity;

    invoke-static {v0}, Lcom/twitter/android/SearchActivity;->b(Lcom/twitter/android/SearchActivity;)Lcom/twitter/internal/android/widget/DockLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/twitter/internal/android/widget/DockLayout;->setTopVisible(Z)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/twitter/android/og;->a:Lcom/twitter/android/SearchActivity;

    iget-boolean v0, v0, Lcom/twitter/android/SearchActivity;->i:Z

    if-eqz v0, :cond_1

    .line 1809
    iget-object v0, p0, Lcom/twitter/android/og;->a:Lcom/twitter/android/SearchActivity;

    invoke-static {v0}, Lcom/twitter/android/SearchActivity;->c(Lcom/twitter/android/SearchActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/og;->a:Lcom/twitter/android/SearchActivity;

    iget-object v1, v1, Lcom/twitter/android/SearchActivity;->j:Lcom/twitter/android/kj;

    invoke-virtual {v1}, Lcom/twitter/android/kj;->a()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/ax;

    .line 1810
    iput p1, v0, Lcom/twitter/library/client/ax;->i:I

    .line 1811
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/twitter/library/client/ax;->h:Z

    .line 1812
    iget-object v0, p0, Lcom/twitter/android/og;->a:Lcom/twitter/android/SearchActivity;

    iget-object v0, v0, Lcom/twitter/android/SearchActivity;->j:Lcom/twitter/android/kj;

    invoke-virtual {v0}, Lcom/twitter/android/kj;->notifyDataSetChanged()V

    .line 1818
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/og;->a:Lcom/twitter/android/SearchActivity;

    invoke-static {v0}, Lcom/twitter/android/SearchActivity;->b(Lcom/twitter/android/SearchActivity;)Lcom/twitter/internal/android/widget/DockLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/DockLayout;->b()V

    .line 1819
    return-void

    .line 1813
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/og;->a:Lcom/twitter/android/SearchActivity;

    invoke-static {v0}, Lcom/twitter/android/SearchActivity;->d(Lcom/twitter/android/SearchActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1814
    iget-object v0, p0, Lcom/twitter/android/og;->a:Lcom/twitter/android/SearchActivity;

    invoke-static {v0}, Lcom/twitter/android/SearchActivity;->c(Lcom/twitter/android/SearchActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/og;->a:Lcom/twitter/android/SearchActivity;

    iget-object v1, v1, Lcom/twitter/android/SearchActivity;->j:Lcom/twitter/android/kj;

    invoke-virtual {v1}, Lcom/twitter/android/kj;->a()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/ax;

    .line 1815
    iput p1, v0, Lcom/twitter/library/client/ax;->i:I

    .line 1816
    iget-object v0, p0, Lcom/twitter/android/og;->a:Lcom/twitter/android/SearchActivity;

    iget-object v0, v0, Lcom/twitter/android/SearchActivity;->j:Lcom/twitter/android/kj;

    invoke-virtual {v0}, Lcom/twitter/android/kj;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/twitter/android/og;->b:Lcom/twitter/android/SearchFragment;

    invoke-virtual {v0}, Lcom/twitter/android/SearchFragment;->m()V

    .line 1804
    return-void
.end method
