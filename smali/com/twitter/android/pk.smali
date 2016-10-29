.class Lcom/twitter/android/pk;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/twitter/android/SecuritySettingsActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/SecuritySettingsActivity;I)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lcom/twitter/android/pk;->b:Lcom/twitter/android/SecuritySettingsActivity;

    iput p2, p0, Lcom/twitter/android/pk;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 559
    iget v0, p0, Lcom/twitter/android/pk;->a:I

    sparse-switch v0, :sswitch_data_0

    .line 581
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/pk;->b:Lcom/twitter/android/SecuritySettingsActivity;

    iget v1, p0, Lcom/twitter/android/pk;->a:I

    invoke-virtual {v0, v1}, Lcom/twitter/android/SecuritySettingsActivity;->removeDialog(I)V

    .line 582
    return-void

    .line 561
    :sswitch_0
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/pk;->b:Lcom/twitter/android/SecuritySettingsActivity;

    invoke-static {v1}, Lcom/twitter/android/SecuritySettingsActivity;->g(Lcom/twitter/android/SecuritySettingsActivity;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "settings:login_verification:enroll:cancel:click"

    aput-object v2, v1, v5

    .line 562
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 561
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0

    .line 566
    :sswitch_1
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/pk;->b:Lcom/twitter/android/SecuritySettingsActivity;

    invoke-static {v1}, Lcom/twitter/android/SecuritySettingsActivity;->h(Lcom/twitter/android/SecuritySettingsActivity;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "settings:login_verification:unenroll:cancel:click"

    aput-object v2, v1, v5

    .line 567
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 566
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0

    .line 571
    :sswitch_2
    iget-object v0, p0, Lcom/twitter/android/pk;->b:Lcom/twitter/android/SecuritySettingsActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/pk;->b:Lcom/twitter/android/SecuritySettingsActivity;

    const-class v3, Lcom/twitter/android/BackupCodeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "show_welcome"

    .line 573
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "bc_account_id"

    iget-object v3, p0, Lcom/twitter/android/pk;->b:Lcom/twitter/android/SecuritySettingsActivity;

    .line 574
    invoke-static {v3}, Lcom/twitter/android/SecuritySettingsActivity;->i(Lcom/twitter/android/SecuritySettingsActivity;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    .line 571
    invoke-virtual {v0, v1}, Lcom/twitter/android/SecuritySettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 559
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xc -> :sswitch_2
    .end sparse-switch
.end method
