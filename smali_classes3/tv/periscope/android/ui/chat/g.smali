.class Ltv/periscope/android/ui/chat/g;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field final synthetic a:Ltv/periscope/android/ui/chat/e;

.field private final b:I

.field private final c:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ltv/periscope/model/y;",
            "Ltv/periscope/android/ui/chat/u;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ltv/periscope/model/y;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/chat/e;I)V
    .locals 2

    .prologue
    .line 476
    iput-object p1, p0, Ltv/periscope/android/ui/chat/g;->a:Ltv/periscope/android/ui/chat/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    iput p2, p0, Ltv/periscope/android/ui/chat/g;->b:I

    .line 478
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Ltv/periscope/android/ui/chat/h;

    invoke-direct {v1}, Ltv/periscope/android/ui/chat/h;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Ltv/periscope/android/ui/chat/g;->c:Ljava/util/SortedMap;

    .line 479
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/ui/chat/g;->d:Ljava/util/LinkedList;

    .line 480
    return-void
.end method


# virtual methods
.method a()Ltv/periscope/android/ui/chat/u;
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Ltv/periscope/android/ui/chat/g;->c:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    const/4 v0, 0x0

    .line 495
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/chat/g;->c:Ljava/util/SortedMap;

    iget-object v1, p0, Ltv/periscope/android/ui/chat/g;->c:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/chat/u;

    goto :goto_0
.end method

.method a(Ltv/periscope/android/ui/chat/u;)V
    .locals 1

    .prologue
    .line 483
    invoke-virtual {p1}, Ltv/periscope/android/ui/chat/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Ltv/periscope/android/ui/chat/g;->a:Ltv/periscope/android/ui/chat/e;

    invoke-static {v0}, Ltv/periscope/android/ui/chat/e;->a(Ltv/periscope/android/ui/chat/e;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 486
    :cond_0
    return-void
.end method

.method a(Ltv/periscope/model/y;)V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Ltv/periscope/android/ui/chat/g;->c:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/chat/u;

    .line 531
    if-eqz v0, :cond_0

    .line 532
    iget-object v1, p0, Ltv/periscope/android/ui/chat/g;->a:Ltv/periscope/android/ui/chat/e;

    invoke-static {v1}, Ltv/periscope/android/ui/chat/e;->a(Ltv/periscope/android/ui/chat/e;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 533
    invoke-virtual {v0}, Ltv/periscope/android/ui/chat/u;->c()V

    .line 535
    :cond_0
    return-void
.end method

.method a(Ltv/periscope/model/y;Ltv/periscope/android/ui/chat/u;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 499
    iget-object v0, p0, Ltv/periscope/android/ui/chat/g;->c:Ljava/util/SortedMap;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    iget v0, p0, Ltv/periscope/android/ui/chat/g;->b:I

    if-lez v0, :cond_3

    .line 501
    iget-object v0, p0, Ltv/periscope/android/ui/chat/g;->d:Ljava/util/LinkedList;

    iget-object v1, p0, Ltv/periscope/android/ui/chat/g;->c:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 504
    iget-object v0, p0, Ltv/periscope/android/ui/chat/g;->c:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/chat/u;

    .line 505
    invoke-virtual {v0}, Ltv/periscope/android/ui/chat/u;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 506
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 508
    goto :goto_0

    .line 510
    :cond_0
    iget v0, p0, Ltv/periscope/android/ui/chat/g;->b:I

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 511
    const v1, 0x458ca000    # 4500.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    const-wide/16 v4, 0x12c

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 513
    iget-object v0, p0, Ltv/periscope/android/ui/chat/g;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 515
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 516
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/model/y;

    .line 517
    iget-object v3, p0, Ltv/periscope/android/ui/chat/g;->c:Ljava/util/SortedMap;

    invoke-interface {v3, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/chat/u;

    .line 518
    iget v3, p0, Ltv/periscope/android/ui/chat/g;->b:I

    if-lt v2, v3, :cond_1

    .line 519
    invoke-virtual {v0, v4, v5}, Ltv/periscope/android/ui/chat/u;->a(J)V

    .line 520
    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/chat/g;->a(Ltv/periscope/android/ui/chat/u;)V

    .line 522
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 523
    goto :goto_2

    .line 524
    :cond_2
    iget-object v0, p0, Ltv/periscope/android/ui/chat/g;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 526
    :cond_3
    iget-object v0, p0, Ltv/periscope/android/ui/chat/g;->a:Ltv/periscope/android/ui/chat/e;

    invoke-static {v0}, Ltv/periscope/android/ui/chat/e;->a(Ltv/periscope/android/ui/chat/e;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 527
    return-void

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method b()V
    .locals 3

    .prologue
    .line 538
    iget-object v0, p0, Ltv/periscope/android/ui/chat/g;->c:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/chat/u;

    .line 539
    iget-object v2, p0, Ltv/periscope/android/ui/chat/g;->a:Ltv/periscope/android/ui/chat/e;

    invoke-static {v2}, Ltv/periscope/android/ui/chat/e;->a(Ltv/periscope/android/ui/chat/e;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 540
    invoke-virtual {v0}, Ltv/periscope/android/ui/chat/u;->c()V

    goto :goto_0

    .line 542
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/chat/g;->c:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    .line 543
    iget-object v0, p0, Ltv/periscope/android/ui/chat/g;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 544
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Ltv/periscope/android/ui/chat/g;->c:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    return v0
.end method
