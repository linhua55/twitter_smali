.class public Lcom/twitter/android/AccountsDialogActivity;
.super Lcom/twitter/android/client/TwitterListActivity;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private b:Landroid/net/Uri;

.field private c:Lcom/twitter/android/f;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/twitter/android/client/TwitterListActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 155
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/app/main/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "AbsFragmentActivity_account_name"

    .line 156
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "page"

    .line 157
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 158
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 159
    invoke-virtual {p0, v0}, Lcom/twitter/android/AccountsDialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 160
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 180
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "add_account"

    const/4 v2, 0x1

    .line 181
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "authorize_account"

    iget-boolean v2, p0, Lcom/twitter/android/AccountsDialogActivity;->d:Z

    .line 182
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 183
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/AccountsDialogActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 184
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 187
    invoke-static {p0}, Lcom/twitter/android/util/bf;->a(Landroid/content/Context;)Lcom/twitter/android/util/be;

    move-result-object v2

    iget-boolean v3, p0, Lcom/twitter/android/AccountsDialogActivity;->d:Z

    iget-boolean v0, p0, Lcom/twitter/android/AccountsDialogActivity;->d:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 188
    :goto_0
    invoke-interface {v2, v1, v3, v0}, Lcom/twitter/android/util/be;->a(ZZZ)Lcom/twitter/android/FlowData;

    move-result-object v0

    .line 189
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/FlowActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "flow_data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 190
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/AccountsDialogActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 191
    return-void

    .line 187
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .prologue
    .line 113
    packed-switch p1, :pswitch_data_0

    .line 137
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/client/TwitterListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 141
    :goto_0
    return-void

    .line 116
    :pswitch_0
    const/4 v0, -0x1

    if-ne v0, p2, :cond_2

    if-eqz p3, :cond_2

    .line 117
    const-string/jumbo v0, "AbsFragmentActivity_account_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0}, Lcom/twitter/library/util/b;->b(Ljava/lang/String;)Lcom/twitter/app/common/account/a;

    move-result-object v1

    .line 119
    if-nez v1, :cond_3

    const/4 v0, 0x0

    .line 120
    :goto_1
    invoke-static {p0}, Lcom/twitter/library/platform/notifications/PushRegistration;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    .line 121
    invoke-static {p0, v2, v3}, Lcom/twitter/library/platform/notifications/PushRegistration;->d(Landroid/content/Context;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    invoke-static {p0}, Lcom/twitter/android/client/c;->a(Landroid/content/Context;)Lcom/twitter/android/client/c;

    move-result-object v2

    iget-wide v4, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    sget v3, Lcso;->a:I

    const/4 v6, 0x0

    .line 123
    invoke-virtual {v2, v4, v5, v3, v6}, Lcom/twitter/android/client/c;->a(JIZ)V

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/twitter/android/AccountsDialogActivity;->b:Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 126
    iget-object v2, p0, Lcom/twitter/android/AccountsDialogActivity;->b:Landroid/net/Uri;

    const-string/jumbo v3, "AbsFragmentActivity_account_name"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/twitter/android/AccountsDialogActivity;->a(Landroid/net/Uri;Ljava/lang/String;)V

    .line 128
    :cond_1
    iget-boolean v2, p0, Lcom/twitter/android/AccountsDialogActivity;->d:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 129
    new-instance v2, Lcom/twitter/model/account/UserAccount;

    invoke-virtual {v1}, Lcom/twitter/app/common/account/a;->a()Landroid/accounts/Account;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/twitter/model/account/UserAccount;-><init>(Landroid/accounts/Account;Lcom/twitter/model/core/TwitterUser;)V

    .line 130
    const/4 v0, 0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "account"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/AccountsDialogActivity;->setResult(ILandroid/content/Intent;)V

    .line 133
    :cond_2
    invoke-virtual {p0}, Lcom/twitter/android/AccountsDialogActivity;->finish()V

    goto :goto_0

    .line 119
    :cond_3
    invoke-static {v1}, Lcom/twitter/library/util/b;->c(Lcom/twitter/app/common/account/a;)Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    goto :goto_1

    .line 113
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 177
    :goto_0
    return-void

    .line 166
    :sswitch_0
    invoke-direct {p0}, Lcom/twitter/android/AccountsDialogActivity;->e()V

    goto :goto_0

    .line 170
    :sswitch_1
    invoke-direct {p0}, Lcom/twitter/android/AccountsDialogActivity;->d()V

    goto :goto_0

    .line 164
    :sswitch_data_0
    .sparse-switch
        0x7f13000c -> :sswitch_1
        0x7f13004f -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-super {p0, p1}, Lcom/twitter/android/client/TwitterListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/twitter/android/AccountsDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 76
    const-string/jumbo v0, "authorize_account"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/AccountsDialogActivity;->d:Z

    .line 79
    const-string/jumbo v0, "page"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/twitter/android/AccountsDialogActivity;->b:Landroid/net/Uri;

    .line 82
    const-string/jumbo v0, "AccountsDialogActivity_add_account"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/twitter/android/AccountsDialogActivity;->d()V

    .line 99
    :goto_0
    invoke-static {p0}, Lcom/twitter/android/client/c;->a(Landroid/content/Context;)Lcom/twitter/android/client/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/twitter/android/client/c;->c(Landroid/content/Context;)V

    .line 100
    return-void

    .line 84
    :cond_0
    const-string/jumbo v0, "AccountsDialogActivity_new_account"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-direct {p0}, Lcom/twitter/android/AccountsDialogActivity;->e()V

    goto :goto_0

    .line 87
    :cond_1
    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Lcom/twitter/android/AccountsDialogActivity;->setContentView(I)V

    .line 89
    invoke-static {}, Lcom/twitter/app/common/account/d;->a()Lcom/twitter/app/common/account/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/account/d;->c()Ljava/util/List;

    move-result-object v0

    .line 90
    invoke-static {v0}, Lcom/twitter/library/util/b;->a(Ljava/util/List;)[Lcom/twitter/model/account/UserAccount;

    move-result-object v0

    .line 91
    const-string/jumbo v2, "AccountsDialogActivity_account_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    new-instance v2, Lcom/twitter/android/f;

    invoke-direct {v2, p0, v0, v1}, Lcom/twitter/android/f;-><init>(Landroid/content/Context;[Lcom/twitter/model/account/UserAccount;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/twitter/android/AccountsDialogActivity;->c:Lcom/twitter/android/f;

    .line 93
    invoke-virtual {p0}, Lcom/twitter/android/AccountsDialogActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/AccountsDialogActivity;->c:Lcom/twitter/android/f;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    const v0, 0x7f13004f

    invoke-virtual {p0, v0}, Lcom/twitter/android/AccountsDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v0, 0x7f13000c

    invoke-virtual {p0, v0}, Lcom/twitter/android/AccountsDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Lcom/twitter/android/AccountsDialogActivity;->c:Lcom/twitter/android/f;

    invoke-virtual {v0, p3}, Lcom/twitter/android/f;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/account/UserAccount;

    .line 148
    invoke-virtual {p0}, Lcom/twitter/android/AccountsDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/library/util/ab;->a(Landroid/content/Context;)Lcom/twitter/library/util/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/util/ab;->a()V

    .line 150
    const/4 v1, 0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "account"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/AccountsDialogActivity;->setResult(ILandroid/content/Intent;)V

    .line 151
    invoke-virtual {p0}, Lcom/twitter/android/AccountsDialogActivity;->finish()V

    .line 152
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/twitter/android/client/TwitterListActivity;->onResume()V

    .line 106
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-static {p0}, Lcom/twitter/android/DispatchActivity;->a(Landroid/app/Activity;)V

    .line 109
    :cond_0
    return-void
.end method
