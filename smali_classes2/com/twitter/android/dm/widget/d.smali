.class Lcom/twitter/android/dm/widget/d;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/card/q;


# instance fields
.field final synthetic a:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;


# direct methods
.method private constructor <init>(Lcom/twitter/android/dm/widget/DMConversationMessageComposer;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/twitter/android/dm/widget/d;->a:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/dm/widget/DMConversationMessageComposer;Lcom/twitter/android/dm/widget/b;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/twitter/android/dm/widget/d;-><init>(Lcom/twitter/android/dm/widget/DMConversationMessageComposer;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 129
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/dm/widget/d;->a:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-static {v0}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->b(Lcom/twitter/android/dm/widget/DMConversationMessageComposer;)Lcom/twitter/android/dm/widget/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/twitter/android/dm/widget/d;->a:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-static {v0}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->b(Lcom/twitter/android/dm/widget/DMConversationMessageComposer;)Lcom/twitter/android/dm/widget/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/dm/widget/c;->b()V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/dm/widget/d;->a:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-virtual {v0}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->i()V

    .line 134
    iget-object v0, p0, Lcom/twitter/android/dm/widget/d;->a:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-virtual {v0}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->k()V

    .line 135
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/twitter/android/dm/widget/d;->a:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-static {v0}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->b(Lcom/twitter/android/dm/widget/DMConversationMessageComposer;)Lcom/twitter/android/dm/widget/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/twitter/android/dm/widget/d;->a:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-static {v0}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->b(Lcom/twitter/android/dm/widget/DMConversationMessageComposer;)Lcom/twitter/android/dm/widget/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/dm/widget/c;->a()V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/dm/widget/d;->a:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-virtual {v0}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->j()V

    .line 124
    iget-object v0, p0, Lcom/twitter/android/dm/widget/d;->a:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-virtual {v0}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->l()V

    .line 125
    return-void
.end method
