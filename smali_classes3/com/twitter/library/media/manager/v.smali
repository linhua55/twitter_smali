.class public Lcom/twitter/library/media/manager/v;
.super Landroid/os/Handler;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<REQ:",
        "Lcom/twitter/media/request/g;",
        "RES:",
        "Ljava/lang/Object;",
        "RESP:",
        "Lcom/twitter/media/request/ResourceResponse",
        "<TREQ;TRES;>;>",
        "Landroid/os/Handler;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/twitter/library/media/manager/t",
            "<TREQ;TRES;TRESP;>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/library/media/manager/ac",
            "<TREQ;TRESP;>;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/library/media/manager/ac",
            "<TREQ;TRESP;>;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/library/media/manager/ad;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/twitter/library/media/manager/t;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/twitter/library/media/manager/t",
            "<TREQ;TRES;TRESP;>;)V"
        }
    .end annotation

    .prologue
    const/16 v2, 0x14

    .line 398
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 379
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/twitter/library/media/manager/v;->b:Landroid/os/Handler;

    .line 381
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/media/manager/v;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 385
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/library/media/manager/v;->e:Ljava/util/Map;

    .line 389
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/library/media/manager/v;->f:Ljava/util/Map;

    .line 394
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/library/media/manager/v;->g:Ljava/util/Map;

    .line 399
    iput-object p1, p0, Lcom/twitter/library/media/manager/v;->a:Landroid/content/Context;

    .line 400
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/library/media/manager/v;->c:Ljava/lang/ref/WeakReference;

    .line 401
    return-void
.end method

.method private a(Lcom/twitter/library/media/manager/ac;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/media/manager/ac",
            "<TREQ;TRESP;>;)V"
        }
    .end annotation

    .prologue
    .line 791
    invoke-virtual {p0}, Lcom/twitter/library/media/manager/v;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/h;->a(Landroid/os/Looper;)V

    .line 792
    iget-object v0, p1, Lcom/twitter/library/media/manager/ac;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/manager/ag;

    .line 793
    iget-object v0, v0, Lcom/twitter/library/media/manager/ag;->d:Lcom/twitter/library/media/manager/o;

    .line 794
    invoke-virtual {v0}, Lcom/twitter/library/media/manager/o;->j()V

    .line 795
    invoke-virtual {v0}, Lcom/twitter/library/media/manager/o;->f()V

    goto :goto_0

    .line 797
    :cond_0
    return-void
.end method

.method private a(Lcom/twitter/library/media/manager/ac;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/media/manager/ac",
            "<TREQ;TRESP;>;TRES;)V"
        }
    .end annotation

    .prologue
    .line 754
    invoke-virtual {p0}, Lcom/twitter/library/media/manager/v;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/h;->a(Landroid/os/Looper;)V

    .line 756
    invoke-direct {p0, p1}, Lcom/twitter/library/media/manager/v;->a(Lcom/twitter/library/media/manager/ac;)V

    .line 758
    iget-object v0, p0, Lcom/twitter/library/media/manager/v;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/manager/t;

    .line 759
    if-eqz v0, :cond_0

    .line 760
    iget-object v1, p1, Lcom/twitter/library/media/manager/ac;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/media/manager/ag;

    .line 761
    iget-object v1, v1, Lcom/twitter/library/media/manager/ag;->c:Lcom/twitter/media/request/ResourceResponse$ResourceSource;

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/manager/t;->a(Lcom/twitter/media/request/ResourceResponse$ResourceSource;)V

    goto :goto_0

    .line 765
    :cond_0
    iget-object v1, p0, Lcom/twitter/library/media/manager/v;->b:Landroid/os/Handler;

    new-instance v2, Lcom/twitter/library/media/manager/ab;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/twitter/library/media/manager/ab;-><init>(Lcom/twitter/library/media/manager/v;Lcom/twitter/library/media/manager/t;Lcom/twitter/library/media/manager/ac;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 787
    return-void
.end method

.method private a(Lcom/twitter/library/media/manager/ac;Ljava/lang/String;Lcom/twitter/internal/network/k;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/media/manager/ac",
            "<TREQ;TRESP;>;",
            "Ljava/lang/String;",
            "Lcom/twitter/internal/network/k;",
            ")V"
        }
    .end annotation

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/twitter/library/media/manager/v;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/h;->a(Landroid/os/Looper;)V

    .line 723
    if-eqz p3, :cond_0

    iget v0, p3, Lcom/twitter/internal/network/k;->a:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/media/manager/v;->g:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 725
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    .line 726
    iget-object v2, p0, Lcom/twitter/library/media/manager/v;->g:Ljava/util/Map;

    new-instance v3, Lcom/twitter/library/media/manager/ad;

    invoke-direct {v3, v0, v1, p3}, Lcom/twitter/library/media/manager/ad;-><init>(JLcom/twitter/internal/network/k;)V

    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/library/media/manager/v;->a(Lcom/twitter/library/media/manager/ac;Ljava/lang/Object;)V

    .line 729
    return-void
.end method

.method private a(Lcom/twitter/library/media/manager/ac;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/media/manager/ac",
            "<TREQ;TRESP;>;",
            "Ljava/lang/String;",
            "TRES;)V"
        }
    .end annotation

    .prologue
    .line 734
    invoke-virtual {p0}, Lcom/twitter/library/media/manager/v;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/h;->a(Landroid/os/Looper;)V

    .line 735
    if-eqz p3, :cond_2

    .line 736
    const/4 v1, 0x0

    .line 737
    iget-object v0, p1, Lcom/twitter/library/media/manager/ac;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/manager/ag;

    .line 738
    iget-object v0, v0, Lcom/twitter/library/media/manager/ag;->a:Lcom/twitter/media/request/g;

    invoke-virtual {v0}, Lcom/twitter/media/request/g;->x()Z

    move-result v0

    if-nez v0, :cond_0

    .line 739
    const/4 v0, 0x1

    move v1, v0

    .line 743
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/media/manager/v;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/manager/t;

    .line 744
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 745
    invoke-virtual {v0, p2, p3}, Lcom/twitter/library/media/manager/t;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/twitter/library/media/manager/v;->a(Lcom/twitter/library/media/manager/ac;Ljava/lang/Object;)V

    .line 749
    return-void
.end method

.method private a(Lcom/twitter/library/media/manager/ag;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/media/manager/ag",
            "<TREQ;TRESP;>;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 590
    invoke-virtual {p0}, Lcom/twitter/library/media/manager/v;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/h;->a(Landroid/os/Looper;)V

    .line 591
    iget-object v9, p1, Lcom/twitter/library/media/manager/ag;->a:Lcom/twitter/media/request/g;

    .line 592
    invoke-virtual {v9}, Lcom/twitter/media/request/g;->a()Ljava/lang/String;

    move-result-object v6

    .line 593
    invoke-static {v9}, Lcom/twitter/library/media/manager/v;->b(Lcom/twitter/media/request/g;)Ljava/lang/String;

    move-result-object v7

    .line 594
    iget-object v0, p0, Lcom/twitter/library/media/manager/v;->e:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/manager/ac;

    .line 595
    if-nez v0, :cond_4

    .line 599
    invoke-direct {p0}, Lcom/twitter/library/media/manager/v;->b()V

    .line 600
    iget-object v0, p0, Lcom/twitter/library/media/manager/v;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/manager/t;

    .line 601
    new-instance v2, Lcom/twitter/library/media/manager/o;

    const-string/jumbo v1, "fetch_blocking"

    invoke-direct {v2, v1}, Lcom/twitter/library/media/manager/o;-><init>(Ljava/lang/String;)V

    .line 603
    new-instance v3, Lcom/twitter/library/media/manager/o;

    const-string/jumbo v1, "fetch_runtime"

    invoke-direct {v3, v1}, Lcom/twitter/library/media/manager/o;-><init>(Ljava/lang/String;)V

    .line 605
    new-instance v10, Lcom/twitter/util/z;

    invoke-direct {v10}, Lcom/twitter/util/z;-><init>()V

    .line 606
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/twitter/library/media/manager/v;->g:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v9}, Lcom/twitter/media/request/g;->w()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 607
    invoke-static {v6}, Lcom/twitter/util/ap;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 608
    invoke-virtual {v2}, Lcom/twitter/library/media/manager/o;->i()V

    .line 612
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 613
    iget-object v5, v0, Lcom/twitter/library/media/manager/t;->c:Ldbd;

    .line 614
    invoke-virtual {v9}, Lcom/twitter/media/request/g;->y()Lcom/twitter/media/request/ResourceRequestType;

    move-result-object v4

    .line 615
    new-instance v0, Lcom/twitter/library/media/manager/r;

    iget-object v11, p0, Lcom/twitter/library/media/manager/v;->a:Landroid/content/Context;

    invoke-direct {v0, v11, v6}, Lcom/twitter/library/media/manager/r;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 616
    invoke-virtual {v0, v1}, Lcom/twitter/library/media/manager/r;->a(Lcom/twitter/library/client/Session;)Lcom/twitter/library/media/manager/r;

    move-result-object v1

    .line 617
    invoke-virtual {v9}, Lcom/twitter/media/request/g;->t()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/network/a;

    invoke-virtual {v1, v0}, Lcom/twitter/library/media/manager/r;->a(Lcom/twitter/library/network/a;)Lcom/twitter/library/media/manager/r;

    move-result-object v0

    .line 618
    invoke-virtual {v0, v4}, Lcom/twitter/library/media/manager/r;->a(Lcom/twitter/media/request/ResourceRequestType;)Lcom/twitter/library/media/manager/r;

    move-result-object v0

    .line 619
    invoke-virtual {v9}, Lcom/twitter/media/request/g;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/manager/r;->a(Ljava/lang/String;)Lcom/twitter/library/media/manager/r;

    move-result-object v0

    .line 620
    invoke-virtual {v0, v10}, Lcom/twitter/library/media/manager/r;->a(Lcom/twitter/util/y;)Lcom/twitter/library/media/manager/r;

    move-result-object v0

    new-instance v1, Lcom/twitter/library/media/manager/aa;

    invoke-direct {v1, p0, v5, v6}, Lcom/twitter/library/media/manager/aa;-><init>(Lcom/twitter/library/media/manager/v;Ldbd;Ljava/lang/String;)V

    .line 621
    invoke-virtual {v0, v1}, Lcom/twitter/library/media/manager/r;->a(Lcom/twitter/internal/network/i;)Lcom/twitter/library/media/manager/r;

    move-result-object v11

    new-instance v0, Lcom/twitter/library/media/manager/z;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/twitter/library/media/manager/z;-><init>(Lcom/twitter/library/media/manager/v;Lcom/twitter/library/media/manager/o;Lcom/twitter/library/media/manager/o;Lcom/twitter/media/request/ResourceRequestType;Ldbd;Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-virtual {v11, v0}, Lcom/twitter/library/media/manager/r;->a(Lcom/twitter/library/media/manager/s;)Lcom/twitter/library/media/manager/r;

    move-result-object v0

    .line 658
    invoke-virtual {v0}, Lcom/twitter/library/media/manager/r;->a()Lcom/twitter/library/media/manager/p;

    move-result-object v0

    .line 663
    iget-object v1, p0, Lcom/twitter/library/media/manager/v;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v1

    invoke-virtual {v1, v0, v8}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 665
    :goto_0
    new-instance v1, Lcom/twitter/library/media/manager/ac;

    invoke-direct {v1, v0, v10}, Lcom/twitter/library/media/manager/ac;-><init>(Ljava/util/concurrent/Future;Lcom/twitter/util/z;)V

    .line 668
    :goto_1
    invoke-virtual {v1, p1}, Lcom/twitter/library/media/manager/ac;->a(Lcom/twitter/library/media/manager/ag;)V

    .line 669
    invoke-virtual {v9}, Lcom/twitter/media/request/g;->u()Lcom/twitter/util/y;

    move-result-object v0

    .line 670
    if-eqz v0, :cond_0

    .line 671
    iget-object v2, v1, Lcom/twitter/library/media/manager/ac;->b:Lcom/twitter/util/z;

    invoke-virtual {v2, v0}, Lcom/twitter/util/z;->a(Lcom/twitter/util/y;)V

    .line 674
    :cond_0
    invoke-virtual {v1}, Lcom/twitter/library/media/manager/ac;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 675
    iget-object v0, p0, Lcom/twitter/library/media/manager/v;->e:Ljava/util/Map;

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    :goto_2
    return-void

    .line 677
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/media/manager/v;->g:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/manager/ad;

    .line 678
    if-eqz v0, :cond_2

    iget-object v8, v0, Lcom/twitter/library/media/manager/ad;->b:Lcom/twitter/internal/network/k;

    :cond_2
    invoke-direct {p0, v1, v7, v8}, Lcom/twitter/library/media/manager/v;->a(Lcom/twitter/library/media/manager/ac;Ljava/lang/String;Lcom/twitter/internal/network/k;)V

    goto :goto_2

    :cond_3
    move-object v0, v8

    goto :goto_0

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method

.method private a(Lcom/twitter/library/media/manager/ag;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/media/manager/ag",
            "<TREQ;TRESP;>;Z)V"
        }
    .end annotation

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/twitter/library/media/manager/v;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/h;->a(Landroid/os/Looper;)V

    .line 549
    iget-object v3, p1, Lcom/twitter/library/media/manager/ag;->a:Lcom/twitter/media/request/g;

    .line 550
    iget-object v0, p0, Lcom/twitter/library/media/manager/v;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/media/manager/t;

    .line 551
    if-nez v2, :cond_0

    .line 586
    :goto_0
    return-void

    .line 554
    :cond_0
    invoke-virtual {v3}, Lcom/twitter/media/request/g;->r()Ljava/lang/String;

    move-result-object v4

    .line 555
    iget-object v0, p0, Lcom/twitter/library/media/manager/v;->f:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/manager/ac;

    .line 556
    if-nez v0, :cond_1

    .line 558
    new-instance v0, Lcom/twitter/library/media/manager/y;

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/twitter/library/media/manager/y;-><init>(Lcom/twitter/library/media/manager/v;Lcom/twitter/library/media/manager/t;Lcom/twitter/media/request/g;Ljava/lang/String;Z)V

    .line 577
    iget-object v1, p0, Lcom/twitter/library/media/manager/v;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 578
    new-instance v1, Lcom/twitter/library/media/manager/ac;

    new-instance v2, Lcom/twitter/util/z;

    invoke-direct {v2}, Lcom/twitter/util/z;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/twitter/library/media/manager/ac;-><init>(Ljava/util/concurrent/Future;Lcom/twitter/util/z;)V

    move-object v0, v1

    .line 580
    :cond_1
    invoke-virtual {v0, p1}, Lcom/twitter/library/media/manager/ac;->a(Lcom/twitter/library/media/manager/ag;)V

    .line 581
    invoke-virtual {v0}, Lcom/twitter/library/media/manager/ac;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 582
    iget-object v1, p0, Lcom/twitter/library/media/manager/v;->f:Ljava/util/Map;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 584
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v0, v4, v1}, Lcom/twitter/library/media/manager/v;->a(Lcom/twitter/library/media/manager/ac;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static b(Lcom/twitter/media/request/g;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/twitter/media/request/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/media/request/g;->y()Lcom/twitter/media/request/ResourceRequestType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    .line 684
    invoke-virtual {p0}, Lcom/twitter/library/media/manager/v;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/h;->a(Landroid/os/Looper;)V

    .line 685
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    .line 686
    iget-object v0, p0, Lcom/twitter/library/media/manager/v;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 687
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 689
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/manager/ad;

    iget-wide v4, v0, Lcom/twitter/library/media/manager/ad;->a:J

    cmp-long v0, v4, v2

    if-gez v0, :cond_0

    .line 691
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 697
    :cond_0
    return-void
.end method

.method private b(Lcom/twitter/library/media/manager/ag;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/media/manager/ag",
            "<TREQ;TRESP;>;)V"
        }
    .end annotation

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/twitter/library/media/manager/v;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/h;->a(Landroid/os/Looper;)V

    .line 702
    iget-object v0, p1, Lcom/twitter/library/media/manager/ag;->a:Lcom/twitter/media/request/g;

    invoke-static {v0}, Lcom/twitter/library/media/manager/v;->b(Lcom/twitter/media/request/g;)Ljava/lang/String;

    move-result-object v1

    .line 703
    iget-object v0, p0, Lcom/twitter/library/media/manager/v;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/manager/ac;

    .line 704
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/twitter/library/media/manager/ac;->b(Lcom/twitter/library/media/manager/ag;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 705
    invoke-virtual {v0}, Lcom/twitter/library/media/manager/ac;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/twitter/library/media/manager/v;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 709
    :cond_1
    iget-object v0, p1, Lcom/twitter/library/media/manager/ag;->a:Lcom/twitter/media/request/g;

    invoke-virtual {v0}, Lcom/twitter/media/request/g;->r()Ljava/lang/String;

    move-result-object v1

    .line 710
    iget-object v0, p0, Lcom/twitter/library/media/manager/v;->f:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/manager/ac;

    .line 711
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/twitter/library/media/manager/ac;->b(Lcom/twitter/library/media/manager/ag;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 712
    invoke-virtual {v0}, Lcom/twitter/library/media/manager/ac;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/twitter/library/media/manager/v;->f:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/twitter/media/request/g;)Lcom/twitter/util/concurrent/j;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQ;)",
            "Lcom/twitter/util/concurrent/j",
            "<TRESP;>;"
        }
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, Lcom/twitter/library/media/manager/v;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/manager/t;

    .line 406
    iget-object v1, p0, Lcom/twitter/library/media/manager/v;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 407
    :cond_0
    invoke-static {}, Lcom/twitter/util/concurrent/ObservablePromise;->b()Lcom/twitter/util/concurrent/ObservablePromise;

    move-result-object v0

    .line 444
    :goto_0
    return-object v0

    .line 410
    :cond_1
    invoke-virtual {v0, p1}, Lcom/twitter/library/media/manager/t;->e(Lcom/twitter/media/request/g;)Ljava/lang/Object;

    move-result-object v2

    .line 411
    invoke-virtual {p1}, Lcom/twitter/media/request/g;->s()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/twitter/media/request/g;->v()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 412
    :cond_2
    if-eqz v2, :cond_4

    sget-object v1, Lcom/twitter/media/request/ResourceResponse$ResourceSource;->b:Lcom/twitter/media/request/ResourceResponse$ResourceSource;

    .line 414
    :goto_1
    invoke-virtual {v0, p1, v2, v1}, Lcom/twitter/library/media/manager/t;->a(Lcom/twitter/media/request/g;Ljava/lang/Object;Lcom/twitter/media/request/ResourceResponse$ResourceSource;)Lcom/twitter/media/request/ResourceResponse;

    move-result-object v3

    .line 415
    invoke-virtual {p1}, Lcom/twitter/media/request/g;->B()Lcom/twitter/media/request/i;

    move-result-object v4

    .line 416
    invoke-static {v3}, Lcom/twitter/util/concurrent/ObservablePromise;->a(Ljava/lang/Object;)Lcom/twitter/util/concurrent/ObservablePromise;

    move-result-object v2

    .line 417
    invoke-virtual {v0, v1}, Lcom/twitter/library/media/manager/t;->a(Lcom/twitter/media/request/ResourceResponse$ResourceSource;)V

    .line 418
    if-eqz v4, :cond_3

    .line 419
    invoke-static {}, Lcom/twitter/util/c;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 420
    invoke-interface {v4, v3}, Lcom/twitter/media/request/i;->a(Lcom/twitter/media/request/ResourceResponse;)V

    :cond_3
    :goto_2
    move-object v0, v2

    .line 430
    goto :goto_0

    .line 412
    :cond_4
    sget-object v1, Lcom/twitter/media/request/ResourceResponse$ResourceSource;->a:Lcom/twitter/media/request/ResourceResponse$ResourceSource;

    goto :goto_1

    .line 422
    :cond_5
    iget-object v0, p0, Lcom/twitter/library/media/manager/v;->b:Landroid/os/Handler;

    new-instance v1, Lcom/twitter/library/media/manager/w;

    invoke-direct {v1, p0, v4, v3}, Lcom/twitter/library/media/manager/w;-><init>(Lcom/twitter/library/media/manager/v;Lcom/twitter/media/request/i;Lcom/twitter/media/request/ResourceResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 432
    :cond_6
    new-instance v1, Lcom/twitter/library/media/manager/ag;

    invoke-direct {v1, p1}, Lcom/twitter/library/media/manager/ag;-><init>(Lcom/twitter/media/request/g;)V

    .line 433
    new-instance v0, Lcom/twitter/library/media/manager/x;

    invoke-direct {v0, p0, v1}, Lcom/twitter/library/media/manager/x;-><init>(Lcom/twitter/library/media/manager/v;Lcom/twitter/library/media/manager/ag;)V

    .line 441
    iput-object v0, v1, Lcom/twitter/library/media/manager/ag;->b:Lcom/twitter/util/concurrent/l;

    .line 442
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/twitter/library/media/manager/v;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public a()Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lcom/twitter/library/media/manager/v;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    new-instance v0, Lcom/twitter/util/concurrent/l;

    invoke-direct {v0}, Lcom/twitter/util/concurrent/l;-><init>()V

    .line 451
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/twitter/library/media/manager/v;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 454
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/twitter/util/concurrent/l;->d()Lcom/twitter/util/concurrent/l;

    move-result-object v0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/twitter/library/media/manager/v;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/h;->a(Landroid/os/Looper;)V

    .line 462
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 541
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown message!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/manager/ag;

    .line 465
    iget-object v1, p0, Lcom/twitter/library/media/manager/v;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/media/manager/t;

    .line 466
    if-eqz v1, :cond_1

    .line 467
    iget-object v2, v0, Lcom/twitter/library/media/manager/ag;->a:Lcom/twitter/media/request/g;

    .line 468
    invoke-virtual {v1, v2}, Lcom/twitter/library/media/manager/t;->e(Lcom/twitter/media/request/g;)Ljava/lang/Object;

    move-result-object v3

    .line 469
    if-eqz v3, :cond_2

    .line 470
    sget-object v1, Lcom/twitter/media/request/ResourceResponse$ResourceSource;->b:Lcom/twitter/media/request/ResourceResponse$ResourceSource;

    iput-object v1, v0, Lcom/twitter/library/media/manager/ag;->c:Lcom/twitter/media/request/ResourceResponse$ResourceSource;

    .line 471
    new-instance v1, Lcom/twitter/util/z;

    invoke-direct {v1}, Lcom/twitter/util/z;-><init>()V

    .line 472
    invoke-virtual {v2}, Lcom/twitter/media/request/g;->u()Lcom/twitter/util/y;

    move-result-object v2

    .line 473
    if-eqz v2, :cond_0

    .line 474
    invoke-virtual {v1, v2}, Lcom/twitter/util/z;->a(Lcom/twitter/util/y;)V

    .line 476
    :cond_0
    new-instance v2, Lcom/twitter/library/media/manager/ac;

    invoke-direct {v2, v0, v1}, Lcom/twitter/library/media/manager/ac;-><init>(Lcom/twitter/library/media/manager/ag;Lcom/twitter/util/z;)V

    invoke-direct {p0, v2, v3}, Lcom/twitter/library/media/manager/v;->a(Lcom/twitter/library/media/manager/ac;Ljava/lang/Object;)V

    .line 544
    :cond_1
    :goto_0
    return-void

    .line 478
    :cond_2
    invoke-virtual {v1, v2}, Lcom/twitter/library/media/manager/t;->c(Lcom/twitter/media/request/g;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 480
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/twitter/library/media/manager/v;->a(Lcom/twitter/library/media/manager/ag;Z)V

    goto :goto_0

    .line 482
    :cond_3
    invoke-direct {p0, v0}, Lcom/twitter/library/media/manager/v;->a(Lcom/twitter/library/media/manager/ag;)V

    goto :goto_0

    .line 488
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/library/media/manager/ae;

    .line 489
    iget-object v1, v0, Lcom/twitter/library/media/manager/ae;->a:Ljava/lang/String;

    .line 490
    iget-object v2, v0, Lcom/twitter/library/media/manager/ae;->b:Lcom/twitter/internal/network/k;

    .line 491
    iget-object v0, p0, Lcom/twitter/library/media/manager/v;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/manager/ac;

    .line 492
    if-eqz v0, :cond_1

    .line 493
    if-eqz v2, :cond_4

    iget v3, v2, Lcom/twitter/internal/network/k;->a:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_4

    .line 495
    sget-object v1, Lcom/twitter/media/request/ResourceResponse$ResourceSource;->f:Lcom/twitter/media/request/ResourceResponse$ResourceSource;

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/manager/ac;->a(Lcom/twitter/media/request/ResourceResponse$ResourceSource;)V

    .line 496
    iget-object v0, v0, Lcom/twitter/library/media/manager/ac;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/manager/ag;

    .line 497
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/twitter/library/media/manager/v;->a(Lcom/twitter/library/media/manager/ag;Z)V

    goto :goto_1

    .line 500
    :cond_4
    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/library/media/manager/v;->a(Lcom/twitter/library/media/manager/ac;Ljava/lang/String;Lcom/twitter/internal/network/k;)V

    goto :goto_0

    .line 506
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/manager/af;

    .line 507
    iget-object v2, v0, Lcom/twitter/library/media/manager/af;->a:Ljava/lang/String;

    .line 508
    iget-object v1, p0, Lcom/twitter/library/media/manager/v;->f:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/media/manager/ac;

    .line 509
    if-eqz v1, :cond_1

    .line 510
    iget-object v3, v0, Lcom/twitter/library/media/manager/af;->c:Ljava/lang/Object;

    if-nez v3, :cond_5

    iget-boolean v3, v0, Lcom/twitter/library/media/manager/af;->d:Z

    if-nez v3, :cond_6

    .line 511
    :cond_5
    iget-object v3, v0, Lcom/twitter/library/media/manager/af;->b:Lcom/twitter/media/request/ResourceResponse$ResourceSource;

    invoke-virtual {v1, v3}, Lcom/twitter/library/media/manager/ac;->a(Lcom/twitter/media/request/ResourceResponse$ResourceSource;)V

    .line 512
    iget-object v0, v0, Lcom/twitter/library/media/manager/af;->c:Ljava/lang/Object;

    invoke-direct {p0, v1, v2, v0}, Lcom/twitter/library/media/manager/v;->a(Lcom/twitter/library/media/manager/ac;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 515
    :cond_6
    iget-object v0, v1, Lcom/twitter/library/media/manager/ac;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/manager/ag;

    .line 516
    invoke-direct {p0, v0}, Lcom/twitter/library/media/manager/v;->a(Lcom/twitter/library/media/manager/ag;)V

    goto :goto_2

    .line 523
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/manager/ag;

    .line 524
    invoke-direct {p0, v0}, Lcom/twitter/library/media/manager/v;->b(Lcom/twitter/library/media/manager/ag;)V

    goto/16 :goto_0

    .line 528
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/util/concurrent/l;

    .line 529
    iget-object v1, p0, Lcom/twitter/library/media/manager/v;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/media/manager/ac;

    .line 530
    invoke-virtual {v1}, Lcom/twitter/library/media/manager/ac;->c()V

    goto :goto_3

    .line 532
    :cond_7
    iget-object v1, p0, Lcom/twitter/library/media/manager/v;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 533
    iget-object v1, p0, Lcom/twitter/library/media/manager/v;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/media/manager/ac;

    .line 534
    invoke-virtual {v1}, Lcom/twitter/library/media/manager/ac;->c()V

    goto :goto_4

    .line 536
    :cond_8
    iget-object v1, p0, Lcom/twitter/library/media/manager/v;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 537
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/util/concurrent/l;->set(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 462
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
