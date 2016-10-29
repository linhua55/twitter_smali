.class Lcom/twitter/android/trends/k;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/kn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/android/kn",
        "<",
        "Landroid/view/View;",
        "Lcss;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/twitter/android/trends/TrendsPlusFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/trends/TrendsPlusFragment;)V
    .locals 1

    .prologue
    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/trends/k;->a:Ljava/util/HashSet;

    .line 333
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/trends/k;->b:Ljava/util/HashSet;

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/trends/k;->c:Ljava/util/List;

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/trends/k;->d:Ljava/util/List;

    .line 343
    iput-object p1, p0, Lcom/twitter/android/trends/k;->e:Lcom/twitter/android/trends/TrendsPlusFragment;

    .line 344
    return-void
.end method


# virtual methods
.method a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, Lcom/twitter/android/trends/k;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 365
    if-eqz p1, :cond_1

    .line 366
    const-string/jumbo v0, "logged_promoted_trend_ids"

    .line 367
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 368
    if-eqz v0, :cond_0

    .line 369
    iget-object v1, p0, Lcom/twitter/android/trends/k;->a:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 371
    :cond_0
    const-string/jumbo v0, "viewed_trend_ids"

    .line 372
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 373
    if-eqz v0, :cond_1

    .line 374
    iget-object v1, p0, Lcom/twitter/android/trends/k;->b:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 377
    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;Lcss;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 387
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/rj;

    .line 388
    iget v1, v0, Lcom/twitter/android/rj;->o:I

    .line 389
    iget-object v0, v0, Lcom/twitter/android/rj;->s:Ljava/lang/String;

    .line 391
    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/twitter/android/trends/k;->b:Ljava/util/HashSet;

    .line 392
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 393
    const-string/jumbo v0, "entity_id"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    if-eqz v0, :cond_0

    .line 395
    iget-object v1, p0, Lcom/twitter/android/trends/k;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_0
    const-string/jumbo v0, "position"

    const/4 v1, -0x1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 398
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v1}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 399
    const-string/jumbo v2, "name"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->b:Ljava/lang/String;

    .line 400
    const/16 v2, 0x8

    iput v2, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    .line 401
    iput v0, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->g:I

    .line 402
    const-string/jumbo v2, "description"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->v:Ljava/lang/String;

    .line 404
    if-eqz p2, :cond_1

    .line 405
    iget-wide v2, p2, Lcss;->e:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->e:Ljava/lang/String;

    .line 408
    :cond_1
    iget-object v2, p0, Lcom/twitter/android/trends/k;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    const-string/jumbo v1, "isread"

    const/4 v2, 0x1

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 411
    const-string/jumbo v1, "changes"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 412
    if-eqz v1, :cond_2

    if-ltz v0, :cond_2

    .line 413
    iget-object v0, p0, Lcom/twitter/android/trends/k;->e:Lcom/twitter/android/trends/TrendsPlusFragment;

    invoke-virtual {v0, p1}, Lcom/twitter/android/trends/TrendsPlusFragment;->a(Landroid/view/View;)V

    .line 418
    :cond_2
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/twitter/android/trends/k;->a:Ljava/util/HashSet;

    iget-wide v2, p2, Lcss;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 419
    iget-object v0, p0, Lcom/twitter/android/trends/k;->e:Lcom/twitter/android/trends/TrendsPlusFragment;

    sget-object v1, Lcom/twitter/library/api/PromotedEvent;->a:Lcom/twitter/library/api/PromotedEvent;

    iget-wide v2, p2, Lcss;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/trends/TrendsPlusFragment;->a(Lcom/twitter/library/api/PromotedEvent;J)V

    .line 421
    :cond_3
    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 326
    check-cast p2, Lcss;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/trends/k;->a(Landroid/view/View;Lcss;Landroid/os/Bundle;)V

    return-void
.end method

.method b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lcom/twitter/android/trends/k;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 380
    const-string/jumbo v0, "logged_promoted_trend_ids"

    iget-object v1, p0, Lcom/twitter/android/trends/k;->a:Ljava/util/HashSet;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 381
    const-string/jumbo v0, "viewed_trend_ids"

    iget-object v1, p0, Lcom/twitter/android/trends/k;->b:Ljava/util/HashSet;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 382
    return-void
.end method

.method c()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/twitter/android/trends/k;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 358
    return-void
.end method

.method d()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/twitter/android/trends/k;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 362
    return-void
.end method
