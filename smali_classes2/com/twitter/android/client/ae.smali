.class Lcom/twitter/android/client/ae;
.super Lcom/twitter/library/client/ad;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/client/y;


# direct methods
.method private constructor <init>(Lcom/twitter/android/client/y;)V
    .locals 0

    .prologue
    .line 1591
    iput-object p1, p0, Lcom/twitter/android/client/ae;->a:Lcom/twitter/android/client/y;

    invoke-direct {p0}, Lcom/twitter/library/client/ad;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/client/y;Lcom/twitter/android/client/z;)V
    .locals 0

    .prologue
    .line 1591
    invoke-direct {p0, p1}, Lcom/twitter/android/client/ae;-><init>(Lcom/twitter/android/client/y;)V

    return-void
.end method

.method private a(Landroid/util/SparseArray;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/twitter/android/client/notifications/StatusBarNotif;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 1606
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 1607
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1608
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/notifications/StatusBarNotif;

    .line 1609
    invoke-virtual {v0}, Lcom/twitter/android/client/notifications/StatusBarNotif;->v()J

    move-result-wide v4

    cmp-long v0, v4, p2

    if-nez v0, :cond_0

    .line 1610
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1606
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1613
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/client/Session;Z)V
    .locals 3

    .prologue
    .line 1596
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 1597
    iget-object v2, p0, Lcom/twitter/android/client/ae;->a:Lcom/twitter/android/client/y;

    invoke-static {v2}, Lcom/twitter/android/client/y;->b(Lcom/twitter/android/client/y;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lcom/twitter/android/client/ae;->a(Landroid/util/SparseArray;J)V

    .line 1598
    iget-object v2, p0, Lcom/twitter/android/client/ae;->a:Lcom/twitter/android/client/y;

    invoke-static {v2}, Lcom/twitter/android/client/y;->c(Lcom/twitter/android/client/y;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lcom/twitter/android/client/ae;->a(Landroid/util/SparseArray;J)V

    .line 1599
    iget-object v0, p0, Lcom/twitter/android/client/ae;->a:Lcom/twitter/android/client/y;

    invoke-static {v0}, Lcom/twitter/android/client/y;->b(Lcom/twitter/android/client/y;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1600
    iget-object v0, p0, Lcom/twitter/android/client/ae;->a:Lcom/twitter/android/client/y;

    invoke-static {v0}, Lcom/twitter/android/client/y;->e(Lcom/twitter/android/client/y;)Lcom/twitter/library/client/bk;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/client/ae;->a:Lcom/twitter/android/client/y;

    invoke-static {v1}, Lcom/twitter/android/client/y;->d(Lcom/twitter/android/client/y;)Lcom/twitter/library/client/bj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bk;->b(Lcom/twitter/library/client/bj;)V

    .line 1602
    :cond_0
    return-void
.end method
