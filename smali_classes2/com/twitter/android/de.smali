.class Lcom/twitter/android/de;
.super Lcom/twitter/library/network/livepipeline/y;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/dm/as;


# instance fields
.field final synthetic a:Lcom/twitter/android/DMConversationFragment;

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private f:I


# direct methods
.method constructor <init>(Lcom/twitter/android/DMConversationFragment;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2787
    iput-object p1, p0, Lcom/twitter/android/de;->a:Lcom/twitter/android/DMConversationFragment;

    .line 2788
    invoke-static {p1}, Lcom/twitter/android/DMConversationFragment;->L(Lcom/twitter/android/DMConversationFragment;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "lp:dm:::series"

    invoke-direct {p0, v0, v1}, Lcom/twitter/library/network/livepipeline/y;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2789
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/de;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2790
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/de;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2791
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/de;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2792
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/de;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2793
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 2797
    iget-object v0, p0, Lcom/twitter/android/de;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2798
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 2802
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 2803
    iget v0, p0, Lcom/twitter/android/de;->f:I

    if-le p1, v0, :cond_0

    .line 2804
    iput p1, p0, Lcom/twitter/android/de;->f:I

    .line 2806
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 2809
    iget-object v0, p0, Lcom/twitter/android/de;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2810
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 2813
    iget-object v0, p0, Lcom/twitter/android/de;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2814
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 2817
    iget-object v0, p0, Lcom/twitter/android/de;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2818
    return-void
.end method

.method protected e()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2822
    invoke-static {}, Lcom/twitter/util/collection/v;->e()Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "max_typing_users_count"

    iget v2, p0, Lcom/twitter/android/de;->f:I

    .line 2823
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "is_group_dm"

    iget-object v2, p0, Lcom/twitter/android/de;->a:Lcom/twitter/android/DMConversationFragment;

    .line 2824
    invoke-static {v2}, Lcom/twitter/android/DMConversationFragment;->O(Lcom/twitter/android/DMConversationFragment;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "typing_events_received"

    iget-object v2, p0, Lcom/twitter/android/de;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2825
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "new_message_events_received"

    iget-object v2, p0, Lcom/twitter/android/de;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2826
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "typing_events_sent"

    iget-object v2, p0, Lcom/twitter/android/de;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2827
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "new_message_events_sent"

    iget-object v2, p0, Lcom/twitter/android/de;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2828
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "subscription_enabled"

    iget-object v2, p0, Lcom/twitter/android/de;->a:Lcom/twitter/android/DMConversationFragment;

    .line 2829
    invoke-static {v2}, Lcom/twitter/android/DMConversationFragment;->N(Lcom/twitter/android/DMConversationFragment;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "publishing_enabled"

    iget-object v2, p0, Lcom/twitter/android/de;->a:Lcom/twitter/android/DMConversationFragment;

    .line 2830
    invoke-static {v2}, Lcom/twitter/android/DMConversationFragment;->M(Lcom/twitter/android/DMConversationFragment;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    .line 2831
    invoke-virtual {v0}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method
