.class public Lcom/twitter/android/widget/ReviewEmailOverlayPrompt;
.super Lcom/twitter/android/dialog/TakeoverPromptDialogFragment;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/twitter/android/dialog/TakeoverPromptDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/twitter/model/timeline/w;Landroid/support/v4/app/FragmentManager;)V
    .locals 2

    .prologue
    .line 23
    if-nez p1, :cond_0

    .line 31
    :goto_0
    return-void

    .line 26
    :cond_0
    new-instance v0, Lcom/twitter/android/widget/ei;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/ei;-><init>(I)V

    .line 27
    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/ei;->b(Lcom/twitter/model/timeline/w;)Lcom/twitter/android/dialog/t;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dialog/u;

    const v1, 0x7f0a0715

    .line 28
    invoke-virtual {v0, v1}, Lcom/twitter/android/dialog/u;->d(I)Lcom/twitter/android/dialog/m;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dialog/u;

    .line 29
    invoke-virtual {v0}, Lcom/twitter/android/dialog/u;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 30
    invoke-virtual {v0, p1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "home:promptbird:review_email"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/ReviewEmailOverlayPrompt;->a([Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private n()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/widget/ReviewEmailOverlayPrompt;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/AddUpdateEmailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "umf_update_email"

    const/4 v2, 0x1

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "current_email"

    .line 51
    invoke-virtual {p0}, Lcom/twitter/android/widget/ReviewEmailOverlayPrompt;->m()Lcom/twitter/model/timeline/w;

    move-result-object v2

    iget-object v2, v2, Lcom/twitter/model/timeline/w;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 49
    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/ReviewEmailOverlayPrompt;->startActivity(Landroid/content/Intent;)V

    .line 52
    return-void
.end method


# virtual methods
.method protected d()V
    .locals 2

    .prologue
    .line 35
    invoke-super {p0}, Lcom/twitter/android/dialog/TakeoverPromptDialogFragment;->d()V

    .line 36
    const-string/jumbo v0, "confirm_my_email"

    const-string/jumbo v1, "click"

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/widget/ReviewEmailOverlayPrompt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/twitter/android/widget/ReviewEmailOverlayPrompt;->dismiss()V

    .line 38
    return-void
.end method

.method protected k()V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Lcom/twitter/android/dialog/TakeoverPromptDialogFragment;->k()V

    .line 43
    const-string/jumbo v0, "change_my_email"

    const-string/jumbo v1, "click"

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/widget/ReviewEmailOverlayPrompt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/twitter/android/widget/ReviewEmailOverlayPrompt;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/client/c;->a(Landroid/content/Context;)Lcom/twitter/android/client/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/widget/ReviewEmailOverlayPrompt;->m()Lcom/twitter/model/timeline/w;

    move-result-object v1

    iget v1, v1, Lcom/twitter/model/timeline/w;->c:I

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/c;->b(I)V

    .line 45
    invoke-direct {p0}, Lcom/twitter/android/widget/ReviewEmailOverlayPrompt;->n()V

    .line 46
    return-void
.end method
