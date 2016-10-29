.class Lcom/twitter/android/cw;
.super Lcom/twitter/library/network/livepipeline/ag;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/network/livepipeline/ag",
        "<",
        "Lcom/twitter/model/livepipeline/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/DMConversationFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/DMConversationFragment;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/twitter/android/cw;->a:Lcom/twitter/android/DMConversationFragment;

    invoke-direct {p0}, Lcom/twitter/library/network/livepipeline/ag;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/twitter/model/livepipeline/e;)V
    .locals 0

    .prologue
    .line 513
    check-cast p1, Lcom/twitter/model/livepipeline/j;

    invoke-virtual {p0, p1}, Lcom/twitter/android/cw;->a(Lcom/twitter/model/livepipeline/j;)V

    return-void
.end method

.method public a(Lcom/twitter/model/livepipeline/j;)V
    .locals 4

    .prologue
    .line 516
    invoke-static {}, Lbnv;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/cw;->a:Lcom/twitter/android/DMConversationFragment;

    invoke-static {v0}, Lcom/twitter/android/DMConversationFragment;->e(Lcom/twitter/android/DMConversationFragment;)Lcom/twitter/android/wc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/twitter/android/cw;->a:Lcom/twitter/android/DMConversationFragment;

    invoke-static {v0}, Lcom/twitter/android/DMConversationFragment;->e(Lcom/twitter/android/DMConversationFragment;)Lcom/twitter/android/wc;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/model/livepipeline/j;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/wc;->b(J)V

    .line 518
    iget-object v0, p0, Lcom/twitter/android/cw;->a:Lcom/twitter/android/DMConversationFragment;

    iget-object v1, p0, Lcom/twitter/android/cw;->a:Lcom/twitter/android/DMConversationFragment;

    invoke-static {v1}, Lcom/twitter/android/DMConversationFragment;->e(Lcom/twitter/android/DMConversationFragment;)Lcom/twitter/android/wc;

    move-result-object v1

    iget-object v2, p1, Lcom/twitter/model/livepipeline/j;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/wc;->a(J)Lrx/ap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/DMConversationFragment;->a(Lrx/ap;)V

    .line 521
    :cond_0
    const-string/jumbo v0, "LivePipeline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/twitter/model/livepipeline/j;->b:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is typing..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    return-void
.end method
