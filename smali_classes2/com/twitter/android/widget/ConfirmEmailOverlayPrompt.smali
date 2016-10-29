.class public Lcom/twitter/android/widget/ConfirmEmailOverlayPrompt;
.super Lcom/twitter/android/dialog/TakeoverPromptDialogFragment;
.source "Twttr"


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/twitter/android/dialog/TakeoverPromptDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/twitter/model/timeline/w;Landroid/support/v4/app/FragmentManager;)V
    .locals 2

    .prologue
    .line 30
    if-nez p1, :cond_0

    .line 38
    :goto_0
    return-void

    .line 33
    :cond_0
    new-instance v0, Lcom/twitter/android/widget/ac;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/ac;-><init>(I)V

    .line 34
    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/ac;->b(Lcom/twitter/model/timeline/w;)Lcom/twitter/android/dialog/t;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dialog/u;

    const v1, 0x7f0a0206

    .line 35
    invoke-virtual {v0, v1}, Lcom/twitter/android/dialog/u;->d(I)Lcom/twitter/android/dialog/m;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dialog/u;

    .line 36
    invoke-virtual {v0}, Lcom/twitter/android/dialog/u;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 37
    invoke-virtual {v0, p1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "home:promptbird:confirm_email"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/ConfirmEmailOverlayPrompt;->a([Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method private n()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 55
    iget-object v0, p0, Lcom/twitter/android/widget/ConfirmEmailOverlayPrompt;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/twitter/android/widget/ConfirmEmailOverlayPrompt;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 57
    invoke-virtual {p0}, Lcom/twitter/android/widget/ConfirmEmailOverlayPrompt;->l()Lcom/twitter/library/client/Session;

    move-result-object v1

    iget-object v5, p0, Lcom/twitter/android/widget/ConfirmEmailOverlayPrompt;->c:Ljava/lang/String;

    move-object v3, v2

    move-object v4, v2

    .line 56
    invoke-static/range {v0 .. v6}, Lblv;->b(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lblv;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lcom/twitter/android/widget/ConfirmEmailOverlayPrompt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lcom/twitter/android/widget/ConfirmEmailOverlayPrompt;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a0207

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 61
    :cond_0
    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/widget/ConfirmEmailOverlayPrompt;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/AddUpdateEmailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "umf_update_email"

    const/4 v2, 0x1

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "current_email"

    iget-object v2, p0, Lcom/twitter/android/widget/ConfirmEmailOverlayPrompt;->c:Ljava/lang/String;

    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 72
    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/ConfirmEmailOverlayPrompt;->startActivity(Landroid/content/Intent;)V

    .line 75
    return-void
.end method


# virtual methods
.method protected b()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/twitter/android/dialog/TakeoverPromptDialogFragment;->b()V

    .line 43
    invoke-virtual {p0}, Lcom/twitter/android/widget/ConfirmEmailOverlayPrompt;->m()Lcom/twitter/model/timeline/w;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/model/timeline/w;->x:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/widget/ConfirmEmailOverlayPrompt;->c:Ljava/lang/String;

    .line 44
    return-void
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0}, Lcom/twitter/android/dialog/TakeoverPromptDialogFragment;->d()V

    .line 49
    const-string/jumbo v0, "confirm_my_email"

    const-string/jumbo v1, "click"

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/widget/ConfirmEmailOverlayPrompt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Lcom/twitter/android/widget/ConfirmEmailOverlayPrompt;->n()V

    .line 51
    invoke-virtual {p0}, Lcom/twitter/android/widget/ConfirmEmailOverlayPrompt;->dismiss()V

    .line 52
    return-void
.end method

.method protected k()V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0}, Lcom/twitter/android/dialog/TakeoverPromptDialogFragment;->k()V

    .line 66
    const-string/jumbo v0, "change_my_email"

    const-string/jumbo v1, "click"

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/widget/ConfirmEmailOverlayPrompt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lcom/twitter/android/widget/ConfirmEmailOverlayPrompt;->o()V

    .line 68
    invoke-virtual {p0}, Lcom/twitter/android/widget/ConfirmEmailOverlayPrompt;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/client/c;->a(Landroid/content/Context;)Lcom/twitter/android/client/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/widget/ConfirmEmailOverlayPrompt;->m()Lcom/twitter/model/timeline/w;

    move-result-object v1

    iget v1, v1, Lcom/twitter/model/timeline/w;->c:I

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/c;->b(I)V

    .line 69
    return-void
.end method
