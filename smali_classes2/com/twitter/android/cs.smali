.class Lcom/twitter/android/cs;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjf",
        "<",
        "Ljava/lang/ref/WeakReference",
        "<",
        "Lcom/twitter/android/wc;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/DMConversationFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/DMConversationFragment;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/twitter/android/cs;->a:Lcom/twitter/android/DMConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/ref/WeakReference;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/twitter/android/wc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 483
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/wc;

    .line 484
    if-eqz v0, :cond_1

    .line 485
    iget-object v1, p0, Lcom/twitter/android/cs;->a:Lcom/twitter/android/DMConversationFragment;

    .line 486
    invoke-static {v1}, Lcom/twitter/android/DMConversationFragment;->b(Lcom/twitter/android/DMConversationFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/cs;->a:Lcom/twitter/android/DMConversationFragment;

    invoke-static {v2}, Lcom/twitter/android/DMConversationFragment;->c(Lcom/twitter/android/DMConversationFragment;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v1

    .line 487
    iget-object v2, p0, Lcom/twitter/android/cs;->a:Lcom/twitter/android/DMConversationFragment;

    .line 488
    invoke-static {v2}, Lcom/twitter/android/DMConversationFragment;->d(Lcom/twitter/android/DMConversationFragment;)[J

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/util/collection/CollectionUtils;->a([J)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/library/provider/dm;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    .line 489
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 491
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/core/TwitterUser;

    .line 492
    iget-object v3, v1, Lcom/twitter/model/core/TwitterUser;->e:Ljava/lang/String;

    .line 493
    if-eqz v3, :cond_0

    .line 494
    invoke-virtual {v1}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, v3}, Lcom/twitter/android/wc;->a(JLjava/lang/String;)V

    goto :goto_0

    .line 498
    :cond_1
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 480
    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p1}, Lcom/twitter/android/cs;->a(Ljava/lang/ref/WeakReference;)V

    return-void
.end method
