.class Lcom/twitter/android/cy;
.super Lcom/twitter/library/network/livepipeline/ag;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/network/livepipeline/ag",
        "<",
        "Lcom/twitter/model/livepipeline/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/DMConversationFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/DMConversationFragment;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/twitter/android/cy;->a:Lcom/twitter/android/DMConversationFragment;

    invoke-direct {p0}, Lcom/twitter/library/network/livepipeline/ag;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/livepipeline/c;)V
    .locals 2

    .prologue
    .line 538
    const-string/jumbo v0, "LivePipeline"

    const-string/jumbo v1, "Fetching new messages..."

    invoke-static {v0, v1}, Lcjw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-static {}, Lbnv;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/twitter/android/cy;->a:Lcom/twitter/android/DMConversationFragment;

    invoke-static {v0}, Lcom/twitter/android/DMConversationFragment;->f(Lcom/twitter/android/DMConversationFragment;)Lcom/twitter/library/client/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bb;->a()V

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/cy;->a:Lcom/twitter/android/DMConversationFragment;

    invoke-static {v0}, Lcom/twitter/android/DMConversationFragment;->g(Lcom/twitter/android/DMConversationFragment;)V

    .line 543
    return-void
.end method

.method public bridge synthetic a(Lcom/twitter/model/livepipeline/e;)V
    .locals 0

    .prologue
    .line 535
    check-cast p1, Lcom/twitter/model/livepipeline/c;

    invoke-virtual {p0, p1}, Lcom/twitter/android/cy;->a(Lcom/twitter/model/livepipeline/c;)V

    return-void
.end method
