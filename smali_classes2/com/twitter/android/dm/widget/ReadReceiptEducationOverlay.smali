.class public Lcom/twitter/android/dm/widget/ReadReceiptEducationOverlay;
.super Lcom/twitter/android/dialog/TakeoverDialogFragment;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/twitter/android/dialog/TakeoverDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;Lcom/twitter/android/util/t;)V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/twitter/android/dm/widget/i;

    invoke-direct {v0}, Lcom/twitter/android/dm/widget/i;-><init>()V

    .line 20
    invoke-virtual {v0, p1}, Lcom/twitter/android/dm/widget/i;->a(Lcom/twitter/android/util/t;)Lcom/twitter/android/dm/widget/i;

    move-result-object v0

    const v1, 0x7f0d0183

    .line 21
    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/widget/i;->i(I)Lcom/twitter/app/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dialog/r;

    const v1, 0x7f0a02d7

    .line 22
    invoke-virtual {v0, v1}, Lcom/twitter/android/dialog/r;->b(I)Lcom/twitter/android/dialog/m;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dialog/r;

    const v1, 0x7f0a02d8

    .line 23
    invoke-virtual {v0, v1}, Lcom/twitter/android/dialog/r;->c(I)Lcom/twitter/android/dialog/m;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dialog/r;

    const v1, 0x7f0a02d9

    .line 24
    invoke-virtual {v0, v1}, Lcom/twitter/android/dialog/r;->d(I)Lcom/twitter/android/dialog/m;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dialog/r;

    const v1, 0x7f020371

    .line 25
    invoke-virtual {v0, v1}, Lcom/twitter/android/dialog/r;->a(I)Lcom/twitter/android/dialog/m;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dialog/r;

    .line 26
    invoke-virtual {v0}, Lcom/twitter/android/dialog/r;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 27
    invoke-virtual {v0, p0}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 28
    return-void
.end method

.method private m()V
    .locals 3

    .prologue
    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "messages:thread::read_receipts_prompt:dismiss"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/twitter/android/dm/widget/ReadReceiptEducationOverlay;->a([Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/ReadReceiptEducationOverlay;->n()V

    .line 66
    return-void
.end method

.method private n()V
    .locals 4

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/ReadReceiptEducationOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "dm_read_receipts_prompt"

    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/ReadReceiptEducationOverlay;->l()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/android/util/t;->a(Landroid/content/Context;Ljava/lang/String;J)Lcom/twitter/android/util/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/util/t;->b()V

    .line 70
    return-void
.end method


# virtual methods
.method protected b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-super {p0}, Lcom/twitter/android/dialog/TakeoverDialogFragment;->b()V

    .line 35
    invoke-virtual {p0, v2}, Lcom/twitter/android/dm/widget/ReadReceiptEducationOverlay;->setCancelable(Z)V

    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "messages:thread::read_receipts_prompt:impression"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/twitter/android/dm/widget/ReadReceiptEducationOverlay;->a([Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Lcom/twitter/android/dialog/TakeoverDialogFragment;->d()V

    .line 42
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/ReadReceiptEducationOverlay;->m()V

    .line 43
    return-void
.end method

.method protected j()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lcom/twitter/android/dialog/TakeoverDialogFragment;->j()V

    .line 59
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/ReadReceiptEducationOverlay;->m()V

    .line 60
    return-void
.end method

.method protected k()V
    .locals 6

    .prologue
    .line 48
    invoke-super {p0}, Lcom/twitter/android/dialog/TakeoverDialogFragment;->k()V

    .line 49
    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/ReadReceiptEducationOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 50
    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/ReadReceiptEducationOverlay;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/twitter/android/settings/PrivacyAndContentActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "extra_account_id"

    .line 51
    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/ReadReceiptEducationOverlay;->l()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "messages:thread::read_receipts_prompt:settings"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/twitter/android/dm/widget/ReadReceiptEducationOverlay;->a([Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Lcom/twitter/android/dm/widget/ReadReceiptEducationOverlay;->n()V

    .line 54
    return-void
.end method
