.class public Lcom/twitter/android/RemoveAccountDialogActivity;
.super Lcom/twitter/library/client/AbsFragmentActivity;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/hw;


# instance fields
.field a:Z

.field b:Z

.field private c:Ljava/lang/String;

.field private d:Lcom/twitter/android/nc;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/twitter/library/client/AbsFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/RemoveAccountDialogActivity;)J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/twitter/android/RemoveAccountDialogActivity;->I:J

    return-wide v0
.end method

.method static synthetic a(Lcom/twitter/android/RemoveAccountDialogActivity;Lcom/twitter/library/service/x;I)Z
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/RemoveAccountDialogActivity;->b(Lcom/twitter/library/service/x;I)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/twitter/android/RemoveAccountDialogActivity;)J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/twitter/android/RemoveAccountDialogActivity;->I:J

    return-wide v0
.end method

.method static synthetic c(Lcom/twitter/android/RemoveAccountDialogActivity;)Lcom/twitter/library/client/bk;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/twitter/android/RemoveAccountDialogActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/RemoveAccountDialogActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/twitter/android/RemoveAccountDialogActivity;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected A_()V
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/twitter/android/RemoveAccountDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/twitter/android/DispatchActivity;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 59
    return-void
.end method

.method public E()Z
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/os/Bundle;Lcom/twitter/library/client/d;)V
    .locals 4

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/twitter/android/RemoveAccountDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "RemoveAccountDialogActivity_account_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/RemoveAccountDialogActivity;->I:J

    .line 52
    invoke-virtual {p0}, Lcom/twitter/android/RemoveAccountDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "RemoveAccountDialogActivity_account_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/RemoveAccountDialogActivity;->c:Ljava/lang/String;

    .line 53
    new-instance v0, Lcom/twitter/android/nc;

    invoke-direct {v0, p0}, Lcom/twitter/android/nc;-><init>(Lcom/twitter/android/RemoveAccountDialogActivity;)V

    iput-object v0, p0, Lcom/twitter/android/RemoveAccountDialogActivity;->d:Lcom/twitter/android/nc;

    .line 54
    return-void
.end method

.method public a(Lcom/twitter/library/service/x;I)V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Lcom/twitter/library/client/AbsFragmentActivity;->a(Lcom/twitter/library/service/x;I)V

    .line 82
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 83
    iget-boolean v0, p0, Lcom/twitter/android/RemoveAccountDialogActivity;->a:Z

    if-nez v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/RemoveAccountDialogActivity;->removeDialog(I)V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/RemoveAccountDialogActivity;->a:Z

    .line 88
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->U()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    invoke-virtual {p0}, Lcom/twitter/android/RemoveAccountDialogActivity;->c()V

    goto :goto_0

    .line 91
    :cond_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/twitter/android/RemoveAccountDialogActivity;->showDialog(I)V

    goto :goto_0
.end method

.method c()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 228
    iput-boolean v6, p0, Lcom/twitter/android/RemoveAccountDialogActivity;->b:Z

    .line 229
    invoke-virtual {p0}, Lcom/twitter/android/RemoveAccountDialogActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/RemoveAccountDialogActivity;->I:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/client/bk;->b(J)Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 230
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 231
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "settings::::logout"

    aput-object v5, v4, v7

    invoke-virtual {v0, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 232
    invoke-static {}, Lcom/twitter/app/common/account/d;->a()Lcom/twitter/app/common/account/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/account/d;->b()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 233
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "settings::::logout_last"

    aput-object v3, v2, v7

    .line 234
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 235
    invoke-virtual {v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->e()Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 233
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/RemoveAccountDialogActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/Session;)Ljava/lang/String;

    .line 238
    iget-wide v0, p0, Lcom/twitter/android/RemoveAccountDialogActivity;->I:J

    invoke-static {p0, v0, v1}, Lblh;->a(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    iget-wide v0, p0, Lcom/twitter/android/RemoveAccountDialogActivity;->I:J

    invoke-static {p0, v0, v1}, Lblf;->b(Landroid/content/Context;J)Z

    .line 241
    :cond_1
    invoke-virtual {p0, v6}, Lcom/twitter/android/RemoveAccountDialogActivity;->showDialog(I)V

    .line 242
    return-void
.end method

.method protected o()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x1040009

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 98
    new-instance v1, Lcom/twitter/android/my;

    invoke-direct {v1, p0}, Lcom/twitter/android/my;-><init>(Lcom/twitter/android/RemoveAccountDialogActivity;)V

    .line 108
    packed-switch p1, :pswitch_data_0

    .line 185
    invoke-super {p0, p1}, Lcom/twitter/library/client/AbsFragmentActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 110
    :pswitch_0
    new-instance v0, Lcom/twitter/android/mz;

    invoke-direct {v0, p0}, Lcom/twitter/android/mz;-><init>(Lcom/twitter/android/RemoveAccountDialogActivity;)V

    .line 130
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0411

    .line 131
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string/jumbo v3, ""

    .line 132
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040013

    .line 133
    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 134
    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 135
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 136
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 140
    :pswitch_1
    new-instance v0, Lcom/twitter/android/na;

    invoke-direct {v0, p0}, Lcom/twitter/android/na;-><init>(Lcom/twitter/android/RemoveAccountDialogActivity;)V

    .line 149
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a032d

    .line 150
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0412

    .line 151
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0213

    .line 152
    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 153
    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 155
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 156
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 158
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 159
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 160
    new-instance v2, Lcom/twitter/android/nb;

    invoke-direct {v2, p0, v1}, Lcom/twitter/android/nb;-><init>(Lcom/twitter/android/RemoveAccountDialogActivity;Landroid/widget/Button;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/Button;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 169
    :pswitch_2
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 170
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 171
    const v1, 0x7f0a0410

    invoke-virtual {p0, v1}, Lcom/twitter/android/RemoveAccountDialogActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 172
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 173
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto/16 :goto_0

    .line 177
    :pswitch_3
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 178
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 179
    const v1, 0x7f0a041a

    invoke-virtual {p0, v1}, Lcom/twitter/android/RemoveAccountDialogActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 180
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 181
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto/16 :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/twitter/android/RemoveAccountDialogActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/RemoveAccountDialogActivity;->d:Lcom/twitter/android/nc;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bk;->b(Lcom/twitter/library/client/bj;)V

    .line 76
    invoke-super {p0}, Lcom/twitter/library/client/AbsFragmentActivity;->onPause()V

    .line 77
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 192
    packed-switch p1, :pswitch_data_0

    .line 219
    invoke-super {p0, p1, p2}, Lcom/twitter/library/client/AbsFragmentActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 223
    :goto_0
    return-void

    .line 194
    :pswitch_0
    iget-wide v0, p0, Lcom/twitter/android/RemoveAccountDialogActivity;->I:J

    invoke-static {p0, v0, v1}, Lblh;->a(Landroid/content/Context;J)Z

    move-result v1

    .line 196
    invoke-virtual {p0}, Lcom/twitter/android/RemoveAccountDialogActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/RemoveAccountDialogActivity;->I:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/client/bk;->b(J)Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 199
    invoke-virtual {p0}, Lcom/twitter/android/RemoveAccountDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/library/resilient/e;->a(Landroid/content/Context;)Lcom/twitter/library/resilient/e;

    move-result-object v0

    .line 200
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/resilient/e;->a(J)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 202
    :goto_1
    check-cast p2, Landroid/app/AlertDialog;

    .line 205
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 206
    const v0, 0x7f0a0415

    .line 215
    :goto_2
    invoke-virtual {p0, v0}, Lcom/twitter/android/RemoveAccountDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 200
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 207
    :cond_1
    if-eqz v1, :cond_2

    .line 208
    const v0, 0x7f0a0414

    goto :goto_2

    .line 209
    :cond_2
    if-eqz v0, :cond_3

    .line 210
    const v0, 0x7f0a0416

    goto :goto_2

    .line 212
    :cond_3
    const v0, 0x7f0a0413

    goto :goto_2

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Lcom/twitter/library/client/AbsFragmentActivity;->onResume()V

    .line 69
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/RemoveAccountDialogActivity;->showDialog(I)V

    .line 70
    invoke-virtual {p0}, Lcom/twitter/android/RemoveAccountDialogActivity;->ab()Lcom/twitter/library/client/bk;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/RemoveAccountDialogActivity;->d:Lcom/twitter/android/nc;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/bj;)V

    .line 71
    return-void
.end method
