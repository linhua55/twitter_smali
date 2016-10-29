.class Lcom/twitter/app/main/l;
.super Lcom/twitter/app/common/list/ad;
.source "Twttr"


# instance fields
.field final a:Landroid/net/Uri;

.field final b:Landroid/support/v4/view/ViewPager;

.field final c:Lcom/twitter/internal/android/widget/DockLayout;

.field final d:Lcom/twitter/android/AbsPagesAdapter;

.field final synthetic e:Lcom/twitter/app/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/twitter/app/main/MainActivity;Landroid/net/Uri;Landroid/support/v4/view/ViewPager;Lcom/twitter/internal/android/widget/DockLayout;Lcom/twitter/android/AbsPagesAdapter;)V
    .locals 0

    .prologue
    .line 2037
    iput-object p1, p0, Lcom/twitter/app/main/l;->e:Lcom/twitter/app/main/MainActivity;

    invoke-direct {p0}, Lcom/twitter/app/common/list/ad;-><init>()V

    .line 2038
    iput-object p2, p0, Lcom/twitter/app/main/l;->a:Landroid/net/Uri;

    .line 2039
    iput-object p3, p0, Lcom/twitter/app/main/l;->b:Landroid/support/v4/view/ViewPager;

    .line 2040
    iput-object p5, p0, Lcom/twitter/app/main/l;->d:Lcom/twitter/android/AbsPagesAdapter;

    .line 2041
    iput-object p4, p0, Lcom/twitter/app/main/l;->c:Lcom/twitter/internal/android/widget/DockLayout;

    .line 2042
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/app/common/list/aa;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2046
    iget-object v0, p0, Lcom/twitter/app/main/l;->d:Lcom/twitter/android/AbsPagesAdapter;

    iget-object v1, p0, Lcom/twitter/app/main/l;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/AbsPagesAdapter;->a(I)Lcom/twitter/library/client/ax;

    move-result-object v0

    .line 2047
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/app/main/l;->a:Landroid/net/Uri;

    iget-object v2, v0, Lcom/twitter/library/client/ax;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/twitter/library/client/ax;->i:I

    if-lez v0, :cond_0

    .line 2048
    sget-object v0, Lcom/twitter/app/main/MainActivity;->c:Landroid/net/Uri;

    iget-object v1, p0, Lcom/twitter/app/main/l;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2049
    iget-object v0, p0, Lcom/twitter/app/main/l;->e:Lcom/twitter/app/main/MainActivity;

    invoke-static {v0}, Lcom/twitter/app/main/MainActivity;->i(Lcom/twitter/app/main/MainActivity;)Lcom/twitter/library/client/bd;

    move-result-object v0

    new-instance v1, Lbsf;

    iget-object v2, p0, Lcom/twitter/app/main/l;->e:Lcom/twitter/app/main/MainActivity;

    iget-object v3, p0, Lcom/twitter/app/main/l;->e:Lcom/twitter/app/main/MainActivity;

    .line 2050
    invoke-static {v3}, Lcom/twitter/app/main/MainActivity;->h(Lcom/twitter/app/main/MainActivity;)Lcom/twitter/library/client/Session;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v5, v4}, Lbsf;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;ILjava/util/Collection;)V

    .line 2049
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 2052
    iget-object v0, p0, Lcom/twitter/app/main/l;->e:Lcom/twitter/app/main/MainActivity;

    invoke-static {v0, v5}, Lcom/twitter/app/main/MainActivity;->b(Lcom/twitter/app/main/MainActivity;I)V

    .line 2056
    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/ad;->a(Lcom/twitter/app/common/list/aa;)V

    .line 2057
    return-void
.end method
