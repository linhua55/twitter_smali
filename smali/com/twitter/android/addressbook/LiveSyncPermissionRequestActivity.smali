.class public Lcom/twitter/android/addressbook/LiveSyncPermissionRequestActivity;
.super Lcom/twitter/android/runtimepermissions/PermissionRequestActivity;
.source "Twttr"


# instance fields
.field private e:Lcom/twitter/android/people/bb;

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/twitter/android/runtimepermissions/PermissionRequestActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 152
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/addressbook/LiveSyncPermissionRequestActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_prelim_title"

    const v2, 0x7f0a0058

    .line 153
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_prelim_msg"

    const v2, 0x7f0a0056

    .line 154
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_prelim_pos_text"

    const v2, 0x7f0a08b3

    .line 155
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_prelim_neg_text"

    const v2, 0x7f0a05b2

    .line 156
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_permissions"

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "android.permission.READ_CONTACTS"

    aput-object v4, v2, v3

    .line 157
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_event_prefix"

    .line 158
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_retarget_msg_fmt"

    const v2, 0x7f0a0609

    .line 160
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_retarget_title"

    const v2, 0x7f0a060a

    .line 161
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_always_prelim"

    .line 162
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_retarget_dialog_theme"

    const v2, 0x7f0d0182

    .line 163
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 152
    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/twitter/android/addressbook/LiveSyncPermissionRequestActivity;->e:Lcom/twitter/android/people/bb;

    const-string/jumbo v1, "contacts_sync_prompt"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "impression"

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/people/bb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 49
    sget-object v0, Lcom/twitter/android/runtimepermissions/PermissionRequestActivity$State;->b:Lcom/twitter/android/runtimepermissions/PermissionRequestActivity$State;

    iput-object v0, p0, Lcom/twitter/android/addressbook/LiveSyncPermissionRequestActivity;->a:Lcom/twitter/android/runtimepermissions/PermissionRequestActivity$State;

    .line 50
    invoke-virtual {p0}, Lcom/twitter/android/addressbook/LiveSyncPermissionRequestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 51
    new-instance v2, Lcom/twitter/android/dialog/b;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Lcom/twitter/android/dialog/b;-><init>(I)V

    .line 53
    const-string/jumbo v0, "extra_prelim_title"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twitter/android/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/twitter/android/dialog/m;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dialog/r;

    const-string/jumbo v3, "extra_prelim_pos_text"

    .line 54
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/twitter/android/dialog/r;->c(Ljava/lang/CharSequence;)Lcom/twitter/android/dialog/m;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dialog/r;

    const-string/jumbo v3, "extra_prelim_neg_text"

    .line 55
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/twitter/android/dialog/r;->d(Ljava/lang/CharSequence;)Lcom/twitter/android/dialog/m;

    .line 57
    const-string/jumbo v0, "extra_prelim_msg"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v2, v0}, Lcom/twitter/android/dialog/b;->b(Ljava/lang/CharSequence;)Lcom/twitter/android/dialog/m;

    .line 61
    :cond_0
    const v0, 0x7f0d0180

    .line 62
    invoke-virtual {v2, v0}, Lcom/twitter/android/dialog/b;->i(I)Lcom/twitter/app/common/base/d;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dialog/r;

    .line 63
    invoke-virtual {v0}, Lcom/twitter/android/dialog/r;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 64
    invoke-virtual {v0, p0}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Lcom/twitter/app/common/base/l;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 65
    invoke-virtual {v0, p0}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Lcom/twitter/app/common/base/m;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Lcom/twitter/android/addressbook/LiveSyncPermissionRequestActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 67
    return-void
.end method

.method public a(Landroid/content/DialogInterface;II)V
    .locals 4

    .prologue
    .line 77
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-wide v0, p0, Lcom/twitter/android/addressbook/LiveSyncPermissionRequestActivity;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 79
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 80
    iget-wide v0, p0, Lcom/twitter/android/addressbook/LiveSyncPermissionRequestActivity;->f:J

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Lcak;->a(Landroid/content/Context;JI)V

    .line 81
    const-string/jumbo v0, "accept"

    .line 88
    :goto_0
    if-eqz v0, :cond_0

    .line 89
    iget-object v1, p0, Lcom/twitter/android/addressbook/LiveSyncPermissionRequestActivity;->e:Lcom/twitter/android/people/bb;

    const-string/jumbo v2, "contacts_sync_prompt"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3, v0}, Lcom/twitter/android/people/bb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 94
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/runtimepermissions/PermissionRequestActivity;->a(Landroid/content/DialogInterface;II)V

    .line 95
    return-void

    .line 82
    :cond_1
    const/4 v0, -0x2

    if-ne p3, v0, :cond_2

    .line 83
    const-string/jumbo v0, "deny"

    goto :goto_0

    .line 85
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()Z
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/twitter/android/addressbook/LiveSyncPermissionRequestActivity;->f:J

    invoke-static {p0, v0, v1}, Lcak;->a(Landroid/content/Context;J)Z

    move-result v0

    return v0
.end method

.method protected c()V
    .locals 4

    .prologue
    .line 100
    invoke-static {}, Lcom/twitter/android/lb;->a()Lcom/twitter/android/lb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/lb;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/twitter/android/addressbook/LiveSyncPermissionRequestActivity;->e:Lcom/twitter/android/people/bb;

    const-string/jumbo v1, "contacts_prompt"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "impression"

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/people/bb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 104
    :cond_0
    invoke-super {p0}, Lcom/twitter/android/runtimepermissions/PermissionRequestActivity;->c()V

    .line 105
    return-void
.end method

.method protected d()V
    .locals 4

    .prologue
    .line 110
    invoke-static {}, Lcom/twitter/android/lb;->a()Lcom/twitter/android/lb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/lb;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/twitter/android/addressbook/LiveSyncPermissionRequestActivity;->e:Lcom/twitter/android/people/bb;

    const-string/jumbo v1, "contacts_denied_prompt"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "impression"

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/people/bb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 115
    :cond_0
    invoke-super {p0}, Lcom/twitter/android/runtimepermissions/PermissionRequestActivity;->d()V

    .line 116
    return-void
.end method

.method protected e()V
    .locals 4

    .prologue
    .line 121
    invoke-super {p0}, Lcom/twitter/android/runtimepermissions/PermissionRequestActivity;->e()V

    .line 122
    iget-object v0, p0, Lcom/twitter/android/addressbook/LiveSyncPermissionRequestActivity;->e:Lcom/twitter/android/people/bb;

    const-string/jumbo v1, "contacts_prompt"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "accept"

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/people/bb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 124
    return-void
.end method

.method protected f()V
    .locals 4

    .prologue
    .line 129
    invoke-super {p0}, Lcom/twitter/android/runtimepermissions/PermissionRequestActivity;->f()V

    .line 130
    iget-object v0, p0, Lcom/twitter/android/addressbook/LiveSyncPermissionRequestActivity;->e:Lcom/twitter/android/people/bb;

    const-string/jumbo v1, "contacts_prompt"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "deny"

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/people/bb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 132
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-super {p0}, Lcom/twitter/android/runtimepermissions/PermissionRequestActivity;->finish()V

    .line 147
    invoke-virtual {p0, v0, v0}, Lcom/twitter/android/addressbook/LiveSyncPermissionRequestActivity;->overridePendingTransition(II)V

    .line 148
    return-void
.end method

.method protected h()V
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/twitter/android/addressbook/LiveSyncPermissionRequestActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/addressbook/LiveSyncPermissionRequestActivity;->setResult(I)V

    .line 141
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/addressbook/LiveSyncPermissionRequestActivity;->finish()V

    .line 142
    return-void

    .line 139
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/addressbook/LiveSyncPermissionRequestActivity;->setResult(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/twitter/android/runtimepermissions/PermissionRequestActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/addressbook/LiveSyncPermissionRequestActivity;->f:J

    .line 40
    iget-wide v0, p0, Lcom/twitter/android/addressbook/LiveSyncPermissionRequestActivity;->f:J

    invoke-static {v0, v1}, Lcom/twitter/android/people/bb;->a(J)Lcom/twitter/android/people/bb;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/addressbook/LiveSyncPermissionRequestActivity;->e:Lcom/twitter/android/people/bb;

    .line 41
    return-void
.end method
