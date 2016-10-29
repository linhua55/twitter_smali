.class public Lcom/twitter/android/util/f;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 571
    iput-object p1, p0, Lcom/twitter/android/util/f;->a:Ljava/lang/String;

    .line 572
    iput-object p2, p0, Lcom/twitter/android/util/f;->b:Ljava/lang/String;

    .line 573
    iput-object p3, p0, Lcom/twitter/android/util/f;->e:Ljava/lang/String;

    .line 574
    iput-object p4, p0, Lcom/twitter/android/util/f;->c:Ljava/lang/String;

    .line 575
    iput-object p5, p0, Lcom/twitter/android/util/f;->d:Ljava/lang/String;

    .line 576
    iput-boolean p7, p0, Lcom/twitter/android/util/f;->g:Z

    .line 577
    if-eqz p7, :cond_0

    const/4 p6, 0x0

    :cond_0
    iput-object p6, p0, Lcom/twitter/android/util/f;->f:Ljava/lang/String;

    .line 578
    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/util/f;->g:Z

    .line 545
    sget-object v0, Lcom/twitter/android/util/AppEventTrack;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 546
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/util/f;->g:Z

    goto :goto_0

    .line 550
    :cond_1
    iget-boolean v0, p0, Lcom/twitter/android/util/f;->g:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "twsrc"

    :goto_1
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/util/f;->c:Ljava/lang/String;

    .line 551
    iget-boolean v0, p0, Lcom/twitter/android/util/f;->g:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "twgr"

    :goto_2
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/util/f;->d:Ljava/lang/String;

    .line 552
    iget-boolean v0, p0, Lcom/twitter/android/util/f;->g:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "twcamp"

    :goto_3
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/util/f;->a:Ljava/lang/String;

    .line 553
    iget-boolean v0, p0, Lcom/twitter/android/util/f;->g:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "twterm"

    :goto_4
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/util/f;->e:Ljava/lang/String;

    .line 554
    iget-boolean v0, p0, Lcom/twitter/android/util/f;->g:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "twcon"

    :goto_5
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/util/f;->b:Ljava/lang/String;

    .line 555
    iget-boolean v0, p0, Lcom/twitter/android/util/f;->g:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/util/f;->f:Ljava/lang/String;

    .line 556
    return-void

    .line 550
    :cond_2
    const-string/jumbo v0, "utm_source"

    goto :goto_1

    .line 551
    :cond_3
    const-string/jumbo v0, "utm_medium"

    goto :goto_2

    .line 552
    :cond_4
    const-string/jumbo v0, "utm_campaign"

    goto :goto_3

    .line 553
    :cond_5
    const-string/jumbo v0, "utm_term"

    goto :goto_4

    .line 554
    :cond_6
    const-string/jumbo v0, "utm_content"

    goto :goto_5

    .line 555
    :cond_7
    const-string/jumbo v0, "gclid"

    goto :goto_6
.end method

.method private a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 603
    if-eqz p2, :cond_0

    .line 604
    iget-boolean v0, p0, Lcom/twitter/android/util/f;->g:Z

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    :cond_0
    return-void

    .line 604
    :cond_1
    sget-object v0, Lcom/twitter/android/util/AppEventTrack;->a:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object p3, v0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 586
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 587
    iget-object v1, p0, Lcom/twitter/android/util/f;->a:Ljava/lang/String;

    const-string/jumbo v2, "twcamp"

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/util/f;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    iget-object v1, p0, Lcom/twitter/android/util/f;->b:Ljava/lang/String;

    const-string/jumbo v2, "twcon"

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/util/f;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    iget-object v1, p0, Lcom/twitter/android/util/f;->e:Ljava/lang/String;

    const-string/jumbo v2, "twterm"

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/util/f;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iget-object v1, p0, Lcom/twitter/android/util/f;->c:Ljava/lang/String;

    const-string/jumbo v2, "twsrc"

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/util/f;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v1, p0, Lcom/twitter/android/util/f;->d:Ljava/lang/String;

    const-string/jumbo v2, "twgr"

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/util/f;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-boolean v1, p0, Lcom/twitter/android/util/f;->g:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "gclid"

    iget-object v2, p0, Lcom/twitter/android/util/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    :cond_0
    return-object v0
.end method

.method public a(Lcom/twitter/library/scribe/TwitterScribeLog;ILjava/lang/String;)V
    .locals 9

    .prologue
    .line 598
    iget-object v2, p0, Lcom/twitter/android/util/f;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/util/f;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/android/util/f;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/twitter/android/util/f;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/twitter/android/util/f;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/twitter/android/util/f;->f:Ljava/lang/String;

    move-object v0, p1

    move v1, p2

    move-object v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 600
    return-void
.end method
