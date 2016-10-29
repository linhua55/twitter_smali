.class Lcom/twitter/android/dm/widget/b;
.super Lcom/twitter/util/ui/e;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;


# direct methods
.method constructor <init>(Lcom/twitter/android/dm/widget/DMConversationMessageComposer;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/twitter/android/dm/widget/b;->a:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-direct {p0}, Lcom/twitter/util/ui/e;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/twitter/android/dm/widget/b;->a:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-virtual {v0}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/twitter/android/dm/widget/b;->a:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-virtual {v0}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->v()V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/dm/widget/b;->a:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-static {v0}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->a(Lcom/twitter/android/dm/widget/DMConversationMessageComposer;)Lcom/twitter/android/card/p;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/twitter/android/dm/widget/b;->a:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-static {v0}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->a(Lcom/twitter/android/dm/widget/DMConversationMessageComposer;)Lcom/twitter/android/card/p;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/dm/widget/b;->a:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-virtual {v2}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->g()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/card/p;->a(Ljava/lang/String;Z)V

    .line 59
    :cond_1
    return-void
.end method
