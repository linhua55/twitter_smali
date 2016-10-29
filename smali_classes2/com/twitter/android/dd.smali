.class Lcom/twitter/android/dd;
.super Lws;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/DMConversationFragment;


# direct methods
.method private constructor <init>(Lcom/twitter/android/DMConversationFragment;)V
    .locals 0

    .prologue
    .line 2835
    iput-object p1, p0, Lcom/twitter/android/dd;->a:Lcom/twitter/android/DMConversationFragment;

    invoke-direct {p0}, Lws;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/DMConversationFragment;Lcom/twitter/android/cg;)V
    .locals 0

    .prologue
    .line 2835
    invoke-direct {p0, p1}, Lcom/twitter/android/dd;-><init>(Lcom/twitter/android/DMConversationFragment;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/customerservice/network/FeedbackRequestParams;)V
    .locals 4

    .prologue
    .line 2857
    new-instance v0, Lcom/twitter/library/customerservice/network/a;

    iget-object v1, p0, Lcom/twitter/android/dd;->a:Lcom/twitter/android/DMConversationFragment;

    .line 2858
    invoke-static {v1}, Lcom/twitter/android/DMConversationFragment;->R(Lcom/twitter/android/DMConversationFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/dd;->a:Lcom/twitter/android/DMConversationFragment;

    invoke-static {v2}, Lcom/twitter/android/DMConversationFragment;->F(Lcom/twitter/android/DMConversationFragment;)Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/twitter/library/customerservice/network/a;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/library/customerservice/network/FeedbackRequestParams;)V

    .line 2859
    iget-object v1, p0, Lcom/twitter/android/dd;->a:Lcom/twitter/android/DMConversationFragment;

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/twitter/android/DMConversationFragment;->d(Lcom/twitter/android/DMConversationFragment;Lcom/twitter/library/service/x;II)Z

    .line 2860
    return-void
.end method

.method public a(Lcom/twitter/library/customerservice/network/FeedbackRequestParams;I)V
    .locals 4

    .prologue
    .line 2838
    new-instance v0, Lcom/twitter/library/customerservice/network/c;

    iget-object v1, p0, Lcom/twitter/android/dd;->a:Lcom/twitter/android/DMConversationFragment;

    .line 2839
    invoke-static {v1}, Lcom/twitter/android/DMConversationFragment;->P(Lcom/twitter/android/DMConversationFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/dd;->a:Lcom/twitter/android/DMConversationFragment;

    invoke-static {v2}, Lcom/twitter/android/DMConversationFragment;->F(Lcom/twitter/android/DMConversationFragment;)Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/twitter/library/customerservice/network/c;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/library/customerservice/network/FeedbackRequestParams;I)V

    .line 2840
    iget-object v1, p0, Lcom/twitter/android/dd;->a:Lcom/twitter/android/DMConversationFragment;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/twitter/android/DMConversationFragment;->c(Lcom/twitter/android/DMConversationFragment;Lcom/twitter/library/service/x;II)Z

    .line 2841
    return-void
.end method

.method public a(Lcom/twitter/library/customerservice/network/FeedbackRequestParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2848
    iget-object v0, p0, Lcom/twitter/android/dd;->a:Lcom/twitter/android/DMConversationFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/dd;->a:Lcom/twitter/android/DMConversationFragment;

    invoke-static {v2}, Lcom/twitter/android/DMConversationFragment;->Q(Lcom/twitter/android/DMConversationFragment;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/twitter/android/dm/cards/dmfeedbackcard/FeedbackEnterCommentActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "feedback_associated_user_name_key"

    .line 2849
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "feedback_associated_score_description_key"

    .line 2850
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "feedback_request_params"

    .line 2851
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "feedback_scribe_component"

    .line 2852
    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2848
    invoke-virtual {v0, v1}, Lcom/twitter/android/DMConversationFragment;->startActivity(Landroid/content/Intent;)V

    .line 2853
    return-void
.end method
