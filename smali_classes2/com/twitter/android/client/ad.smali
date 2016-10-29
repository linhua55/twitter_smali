.class Lcom/twitter/android/client/ad;
.super Lcom/twitter/library/service/ac;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/service/ac",
        "<",
        "Ljava/lang/Void;",
        "Lcom/twitter/library/service/v;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/client/y;


# direct methods
.method private constructor <init>(Lcom/twitter/android/client/y;)V
    .locals 0

    .prologue
    .line 1616
    iput-object p1, p0, Lcom/twitter/android/client/ad;->a:Lcom/twitter/android/client/y;

    invoke-direct {p0}, Lcom/twitter/library/service/ac;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/client/y;Lcom/twitter/android/client/z;)V
    .locals 0

    .prologue
    .line 1616
    invoke-direct {p0, p1}, Lcom/twitter/android/client/ad;-><init>(Lcom/twitter/android/client/y;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 1616
    check-cast p1, Lcom/twitter/library/service/v;

    invoke-virtual {p0, p1}, Lcom/twitter/android/client/ad;->a(Lcom/twitter/library/service/v;)V

    return-void
.end method

.method public a(Lcom/twitter/library/service/v;)V
    .locals 3

    .prologue
    .line 1619
    invoke-virtual {p1}, Lcom/twitter/library/service/v;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    .line 1620
    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1621
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1624
    iget-object v2, p0, Lcom/twitter/android/client/ad;->a:Lcom/twitter/android/client/y;

    invoke-static {v2}, Lcom/twitter/android/client/y;->b(Lcom/twitter/android/client/y;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1625
    iget-object v2, p0, Lcom/twitter/android/client/ad;->a:Lcom/twitter/android/client/y;

    invoke-static {v2}, Lcom/twitter/android/client/y;->c(Lcom/twitter/android/client/y;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 1627
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/client/ad;->a:Lcom/twitter/android/client/y;

    invoke-static {v0}, Lcom/twitter/android/client/y;->b(Lcom/twitter/android/client/y;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1628
    iget-object v0, p0, Lcom/twitter/android/client/ad;->a:Lcom/twitter/android/client/y;

    invoke-static {v0}, Lcom/twitter/android/client/y;->e(Lcom/twitter/android/client/y;)Lcom/twitter/library/client/bk;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/client/ad;->a:Lcom/twitter/android/client/y;

    invoke-static {v1}, Lcom/twitter/android/client/y;->d(Lcom/twitter/android/client/y;)Lcom/twitter/library/client/bj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bk;->b(Lcom/twitter/library/client/bj;)V

    .line 1636
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/client/ad;->a:Lcom/twitter/android/client/y;

    invoke-static {v0}, Lcom/twitter/android/client/y;->f(Lcom/twitter/android/client/y;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/badge/LauncherIconBadgeUpdaterService;->a(Landroid/content/Context;)V

    .line 1637
    return-void
.end method
