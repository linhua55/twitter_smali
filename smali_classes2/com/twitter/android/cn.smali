.class Lcom/twitter/android/cn;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/dm/g;


# instance fields
.field final synthetic a:Lcom/twitter/android/DMConversationFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/DMConversationFragment;)V
    .locals 0

    .prologue
    .line 1438
    iput-object p1, p0, Lcom/twitter/android/cn;->a:Lcom/twitter/android/DMConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/TwitterUser;Z)V
    .locals 2

    .prologue
    .line 1441
    iget-object v1, p0, Lcom/twitter/android/cn;->a:Lcom/twitter/android/DMConversationFragment;

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/twitter/android/DMConversationFragment;->e(Lcom/twitter/android/DMConversationFragment;Z)V

    .line 1442
    iget-object v0, p0, Lcom/twitter/android/cn;->a:Lcom/twitter/android/DMConversationFragment;

    invoke-virtual {v0}, Lcom/twitter/android/DMConversationFragment;->t_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1443
    iget-object v0, p0, Lcom/twitter/android/cn;->a:Lcom/twitter/android/DMConversationFragment;

    invoke-static {v0}, Lcom/twitter/android/DMConversationFragment;->A(Lcom/twitter/android/DMConversationFragment;)V

    .line 1445
    :cond_0
    return-void

    .line 1441
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
