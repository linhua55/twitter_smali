.class public Lbolts/m;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field final synthetic a:Lbolts/h;


# direct methods
.method private constructor <init>(Lbolts/h;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lbolts/m;->a:Lbolts/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    return-void
.end method

.method synthetic constructor <init>(Lbolts/h;Lbolts/i;)V
    .locals 0

    .prologue
    .line 532
    invoke-direct {p0, p1}, Lbolts/m;-><init>(Lbolts/h;)V

    return-void
.end method


# virtual methods
.method public a()Lbolts/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/h",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 540
    iget-object v0, p0, Lbolts/m;->a:Lbolts/h;

    return-object v0
.end method

.method public a(Ljava/lang/Exception;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 579
    iget-object v1, p0, Lbolts/m;->a:Lbolts/h;

    invoke-static {v1}, Lbolts/h;->a(Lbolts/h;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 580
    :try_start_0
    iget-object v2, p0, Lbolts/m;->a:Lbolts/h;

    invoke-static {v2}, Lbolts/h;->b(Lbolts/h;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 581
    const/4 v0, 0x0

    monitor-exit v1

    .line 587
    :goto_0
    return v0

    .line 583
    :cond_0
    iget-object v2, p0, Lbolts/m;->a:Lbolts/h;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lbolts/h;->a(Lbolts/h;Z)Z

    .line 584
    iget-object v2, p0, Lbolts/m;->a:Lbolts/h;

    invoke-static {v2, p1}, Lbolts/h;->a(Lbolts/h;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 585
    iget-object v2, p0, Lbolts/m;->a:Lbolts/h;

    invoke-static {v2}, Lbolts/h;->a(Lbolts/h;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 586
    iget-object v2, p0, Lbolts/m;->a:Lbolts/h;

    invoke-static {v2}, Lbolts/h;->c(Lbolts/h;)V

    .line 587
    monitor-exit v1

    goto :goto_0

    .line 588
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 563
    iget-object v1, p0, Lbolts/m;->a:Lbolts/h;

    invoke-static {v1}, Lbolts/h;->a(Lbolts/h;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 564
    :try_start_0
    iget-object v2, p0, Lbolts/m;->a:Lbolts/h;

    invoke-static {v2}, Lbolts/h;->b(Lbolts/h;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 565
    const/4 v0, 0x0

    monitor-exit v1

    .line 571
    :goto_0
    return v0

    .line 567
    :cond_0
    iget-object v2, p0, Lbolts/m;->a:Lbolts/h;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lbolts/h;->a(Lbolts/h;Z)Z

    .line 568
    iget-object v2, p0, Lbolts/m;->a:Lbolts/h;

    invoke-static {v2, p1}, Lbolts/h;->a(Lbolts/h;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    iget-object v2, p0, Lbolts/m;->a:Lbolts/h;

    invoke-static {v2}, Lbolts/h;->a(Lbolts/h;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 570
    iget-object v2, p0, Lbolts/m;->a:Lbolts/h;

    invoke-static {v2}, Lbolts/h;->c(Lbolts/h;)V

    .line 571
    monitor-exit v1

    goto :goto_0

    .line 572
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 613
    invoke-virtual {p0, p1}, Lbolts/m;->a(Ljava/lang/Exception;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 614
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot set the error on a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .prologue
    .line 604
    invoke-virtual {p0, p1}, Lbolts/m;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 605
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot set the result of a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 547
    iget-object v1, p0, Lbolts/m;->a:Lbolts/h;

    invoke-static {v1}, Lbolts/h;->a(Lbolts/h;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 548
    :try_start_0
    iget-object v2, p0, Lbolts/m;->a:Lbolts/h;

    invoke-static {v2}, Lbolts/h;->b(Lbolts/h;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 549
    const/4 v0, 0x0

    monitor-exit v1

    .line 555
    :goto_0
    return v0

    .line 551
    :cond_0
    iget-object v2, p0, Lbolts/m;->a:Lbolts/h;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lbolts/h;->a(Lbolts/h;Z)Z

    .line 552
    iget-object v2, p0, Lbolts/m;->a:Lbolts/h;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lbolts/h;->b(Lbolts/h;Z)Z

    .line 553
    iget-object v2, p0, Lbolts/m;->a:Lbolts/h;

    invoke-static {v2}, Lbolts/h;->a(Lbolts/h;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 554
    iget-object v2, p0, Lbolts/m;->a:Lbolts/h;

    invoke-static {v2}, Lbolts/h;->c(Lbolts/h;)V

    .line 555
    monitor-exit v1

    goto :goto_0

    .line 556
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 595
    invoke-virtual {p0}, Lbolts/m;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot cancel a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    :cond_0
    return-void
.end method
