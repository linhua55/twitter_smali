.class Lcom/twitter/android/dm/widget/c;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

.field private final b:Landroid/content/Context;

.field private final c:J

.field private d:Lcom/twitter/library/scribe/TwitterScribeAssociation;


# direct methods
.method constructor <init>(Lcom/twitter/android/dm/widget/DMConversationMessageComposer;Landroid/content/Context;J)V
    .locals 1

    .prologue
    .line 143
    iput-object p1, p0, Lcom/twitter/android/dm/widget/c;->a:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p2, p0, Lcom/twitter/android/dm/widget/c;->b:Landroid/content/Context;

    .line 145
    iput-wide p3, p0, Lcom/twitter/android/dm/widget/c;->c:J

    .line 146
    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    .line 153
    iget-object v0, p0, Lcom/twitter/android/dm/widget/c;->a:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-static {v0}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->a(Lcom/twitter/android/dm/widget/DMConversationMessageComposer;)Lcom/twitter/android/card/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/dm/widget/c;->c:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v1, p0, Lcom/twitter/android/dm/widget/c;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/dm/widget/c;->a:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    .line 155
    invoke-static {v2}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->a(Lcom/twitter/android/dm/widget/DMConversationMessageComposer;)Lcom/twitter/android/card/p;

    move-result-object v2

    invoke-interface {v2}, Lcom/twitter/android/card/p;->d()Lclw;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/dm/widget/c;->a:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    .line 156
    invoke-static {v3}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->a(Lcom/twitter/android/dm/widget/DMConversationMessageComposer;)Lcom/twitter/android/card/p;

    move-result-object v3

    invoke-interface {v3}, Lcom/twitter/android/card/p;->c()Ljava/lang/String;

    move-result-object v3

    .line 155
    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(Landroid/content/Context;Lclw;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "messages:thread:dm_compose_bar:platform_card_preview:impression"

    aput-object v3, v1, v2

    .line 157
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/dm/widget/c;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 158
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 154
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 160
    :cond_0
    return-void
.end method

.method a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/twitter/android/dm/widget/c;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 150
    return-void
.end method

.method b()V
    .locals 4

    .prologue
    .line 163
    iget-object v0, p0, Lcom/twitter/android/dm/widget/c;->a:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    invoke-static {v0}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->a(Lcom/twitter/android/dm/widget/DMConversationMessageComposer;)Lcom/twitter/android/card/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/dm/widget/c;->c:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v1, p0, Lcom/twitter/android/dm/widget/c;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/dm/widget/c;->a:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    .line 165
    invoke-static {v2}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->a(Lcom/twitter/android/dm/widget/DMConversationMessageComposer;)Lcom/twitter/android/card/p;

    move-result-object v2

    invoke-interface {v2}, Lcom/twitter/android/card/p;->d()Lclw;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/dm/widget/c;->a:Lcom/twitter/android/dm/widget/DMConversationMessageComposer;

    .line 166
    invoke-static {v3}, Lcom/twitter/android/dm/widget/DMConversationMessageComposer;->a(Lcom/twitter/android/dm/widget/DMConversationMessageComposer;)Lcom/twitter/android/card/p;

    move-result-object v3

    invoke-interface {v3}, Lcom/twitter/android/card/p;->c()Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(Landroid/content/Context;Lclw;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "messages:thread:dm_compose_bar:platform_card_preview:dismiss"

    aput-object v3, v1, v2

    .line 167
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/dm/widget/c;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 168
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 164
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 170
    :cond_0
    return-void
.end method
