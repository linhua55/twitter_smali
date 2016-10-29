.class public Lcom/twitter/android/AuthorizeAppFragment;
.super Lcom/twitter/app/common/base/BaseFragment;
.source "Twttr"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/twitter/android/ad;

.field private b:Lcom/twitter/model/account/UserAccount;

.field private c:Lcom/twitter/library/widget/UserView;

.field private d:Ljava/lang/CharSequence;

.field private e:Ljava/lang/CharSequence;

.field private f:[Lcom/twitter/app/common/account/a;

.field private g:Lcom/twitter/library/client/bk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/twitter/app/common/base/BaseFragment;-><init>()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 232
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/AuthorizeAppFragment;->g:Lcom/twitter/library/client/bk;

    .line 233
    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "sso_sdk:::"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 234
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 235
    iget-object v1, p0, Lcom/twitter/android/AuthorizeAppFragment;->e:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 236
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/AuthorizeAppFragment;->e:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 238
    :cond_0
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 239
    return-void
.end method

.method private c()[Lcom/twitter/app/common/account/a;
    .locals 2

    .prologue
    .line 219
    invoke-static {}, Lcom/twitter/app/common/account/d;->a()Lcom/twitter/app/common/account/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/account/d;->c()Ljava/util/List;

    move-result-object v0

    .line 220
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/twitter/app/common/account/a;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/app/common/account/a;

    .line 221
    sget-object v1, Lcom/twitter/app/common/account/a;->a:Lcom/twitter/app/common/account/c;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 222
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 103
    const v0, 0x7f04003c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/android/ad;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/twitter/android/AuthorizeAppFragment;->a:Lcom/twitter/android/ad;

    .line 152
    return-void
.end method

.method public a(Lcom/twitter/model/account/UserAccount;)V
    .locals 2

    .prologue
    .line 155
    if-eqz p1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/twitter/android/AuthorizeAppFragment;->c:Lcom/twitter/library/widget/UserView;

    iget-object v1, p1, Lcom/twitter/model/account/UserAccount;->b:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/UserView;->setUser(Lcom/twitter/model/core/TwitterUser;)V

    .line 158
    :cond_0
    iput-object p1, p0, Lcom/twitter/android/AuthorizeAppFragment;->b:Lcom/twitter/model/account/UserAccount;

    .line 159
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Lcom/twitter/app/common/base/BaseFragment;->d()V

    .line 141
    const-string/jumbo v0, "impression"

    invoke-direct {p0, v0}, Lcom/twitter/android/AuthorizeAppFragment;->b(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 196
    invoke-direct {p0}, Lcom/twitter/android/AuthorizeAppFragment;->c()[Lcom/twitter/app/common/account/a;

    move-result-object v3

    .line 197
    iget-object v0, p0, Lcom/twitter/android/AuthorizeAppFragment;->f:[Lcom/twitter/app/common/account/a;

    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    array-length v0, v3

    if-nez v0, :cond_1

    .line 200
    invoke-virtual {p0, v1}, Lcom/twitter/android/AuthorizeAppFragment;->a(Lcom/twitter/model/account/UserAccount;)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v4, p0, Lcom/twitter/android/AuthorizeAppFragment;->b:Lcom/twitter/model/account/UserAccount;

    .line 205
    array-length v5, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_5

    aget-object v0, v3, v2

    .line 206
    if-eqz v4, :cond_2

    iget-object v6, v4, Lcom/twitter/model/account/UserAccount;->a:Landroid/accounts/Account;

    invoke-virtual {v0, v6}, Lcom/twitter/app/common/account/a;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 211
    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    .line 212
    new-instance v1, Lcom/twitter/model/account/UserAccount;

    invoke-virtual {v0}, Lcom/twitter/app/common/account/a;->a()Landroid/accounts/Account;

    move-result-object v2

    invoke-static {v0}, Lcom/twitter/library/util/b;->c(Lcom/twitter/app/common/account/a;)Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/twitter/model/account/UserAccount;-><init>(Landroid/accounts/Account;Lcom/twitter/model/core/TwitterUser;)V

    invoke-virtual {p0, v1}, Lcom/twitter/android/AuthorizeAppFragment;->a(Lcom/twitter/model/account/UserAccount;)V

    .line 214
    :cond_3
    iput-object v3, p0, Lcom/twitter/android/AuthorizeAppFragment;->f:[Lcom/twitter/app/common/account/a;

    goto :goto_0

    .line 205
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 132
    iget-object v0, p0, Lcom/twitter/android/AuthorizeAppFragment;->b:Lcom/twitter/model/account/UserAccount;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/twitter/android/AuthorizeAppFragment;->b:Lcom/twitter/model/account/UserAccount;

    invoke-virtual {p0, v0}, Lcom/twitter/android/AuthorizeAppFragment;->a(Lcom/twitter/model/account/UserAccount;)V

    .line 135
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 164
    const-string/jumbo v0, "account"

    .line 165
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/account/UserAccount;

    .line 166
    invoke-virtual {p0, v0}, Lcom/twitter/android/AuthorizeAppFragment;->a(Lcom/twitter/model/account/UserAccount;)V

    .line 168
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 173
    const v1, 0x7f130188

    if-eq v0, v1, :cond_0

    const v1, 0x7f130186

    if-ne v0, v1, :cond_2

    .line 174
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/AuthorizeAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/AccountsDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "authorize_account"

    const/4 v2, 0x1

    .line 175
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    .line 174
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/AuthorizeAppFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 190
    :cond_1
    :goto_0
    return-void

    .line 177
    :cond_2
    const v1, 0x7f13018c

    if-ne v0, v1, :cond_3

    .line 178
    iget-object v0, p0, Lcom/twitter/android/AuthorizeAppFragment;->a:Lcom/twitter/android/ad;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/AuthorizeAppFragment;->b:Lcom/twitter/model/account/UserAccount;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/twitter/android/AuthorizeAppFragment;->a:Lcom/twitter/android/ad;

    iget-object v1, p0, Lcom/twitter/android/AuthorizeAppFragment;->b:Lcom/twitter/model/account/UserAccount;

    iget-object v1, v1, Lcom/twitter/model/account/UserAccount;->a:Landroid/accounts/Account;

    invoke-interface {v0, v1}, Lcom/twitter/android/ad;->a(Landroid/accounts/Account;)V

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 181
    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f0a0091

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 182
    const-string/jumbo v0, "success"

    invoke-direct {p0, v0}, Lcom/twitter/android/AuthorizeAppFragment;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_3
    const v1, 0x7f13018b

    if-ne v0, v1, :cond_1

    .line 185
    iget-object v0, p0, Lcom/twitter/android/AuthorizeAppFragment;->a:Lcom/twitter/android/ad;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/twitter/android/AuthorizeAppFragment;->a:Lcom/twitter/android/ad;

    invoke-interface {v0}, Lcom/twitter/android/ad;->a()V

    .line 187
    const-string/jumbo v0, "cancel"

    invoke-direct {p0, v0}, Lcom/twitter/android/AuthorizeAppFragment;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/twitter/android/AuthorizeAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 65
    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v3

    .line 67
    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/library/util/b;->b(Ljava/lang/String;)Lcom/twitter/app/common/account/a;

    move-result-object v2

    .line 68
    new-instance v4, Lcom/twitter/model/account/UserAccount;

    invoke-virtual {v2}, Lcom/twitter/app/common/account/a;->a()Landroid/accounts/Account;

    move-result-object v2

    invoke-direct {v4, v2, v3}, Lcom/twitter/model/account/UserAccount;-><init>(Landroid/accounts/Account;Lcom/twitter/model/core/TwitterUser;)V

    iput-object v4, p0, Lcom/twitter/android/AuthorizeAppFragment;->b:Lcom/twitter/model/account/UserAccount;

    .line 71
    :cond_0
    iput-object v1, p0, Lcom/twitter/android/AuthorizeAppFragment;->g:Lcom/twitter/library/client/bk;

    .line 73
    invoke-virtual {p0}, Lcom/twitter/android/AuthorizeAppFragment;->q()Lcom/twitter/app/common/base/f;

    move-result-object v1

    .line 74
    const-string/jumbo v2, "app_name"

    invoke-virtual {v1, v2}, Lcom/twitter/app/common/base/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/AuthorizeAppFragment;->d:Ljava/lang/CharSequence;

    .line 75
    const-string/jumbo v2, "app_consumer_key"

    invoke-virtual {v1, v2}, Lcom/twitter/app/common/base/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/AuthorizeAppFragment;->e:Ljava/lang/CharSequence;

    .line 76
    if-eqz p1, :cond_2

    .line 77
    iget-object v1, p0, Lcom/twitter/android/AuthorizeAppFragment;->d:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 78
    const-string/jumbo v1, "app_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/AuthorizeAppFragment;->d:Ljava/lang/CharSequence;

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/twitter/android/AuthorizeAppFragment;->e:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    .line 81
    const-string/jumbo v1, "app_consumer_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/AuthorizeAppFragment;->e:Ljava/lang/CharSequence;

    .line 85
    :cond_2
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 86
    invoke-direct {p0}, Lcom/twitter/android/AuthorizeAppFragment;->c()[Lcom/twitter/app/common/account/a;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/AuthorizeAppFragment;->f:[Lcom/twitter/app/common/account/a;

    .line 87
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 88
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Lcom/twitter/app/common/base/BaseFragment;->onDestroy()V

    .line 147
    invoke-virtual {p0}, Lcom/twitter/android/AuthorizeAppFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 148
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 93
    iget-object v0, p0, Lcom/twitter/android/AuthorizeAppFragment;->d:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 94
    const-string/jumbo v0, "app_name"

    iget-object v1, p0, Lcom/twitter/android/AuthorizeAppFragment;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/AuthorizeAppFragment;->e:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 97
    const-string/jumbo v0, "app_consumer_key"

    iget-object v1, p0, Lcom/twitter/android/AuthorizeAppFragment;->e:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 99
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 108
    invoke-super {p0, p1, p2}, Lcom/twitter/app/common/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 110
    const v0, 0x7f13018c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 111
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v0, 0x7f13018b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 114
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/twitter/android/AuthorizeAppFragment;->d:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 117
    const v0, 0x7f13010c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 118
    const v1, 0x7f0a009b

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/twitter/android/AuthorizeAppFragment;->d:Ljava/lang/CharSequence;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/twitter/android/AuthorizeAppFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    const v0, 0x7f13018a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 121
    const v1, 0x7f0a009a

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/twitter/android/AuthorizeAppFragment;->d:Ljava/lang/CharSequence;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/twitter/android/AuthorizeAppFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_0
    const v0, 0x7f130187

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/UserView;

    iput-object v0, p0, Lcom/twitter/android/AuthorizeAppFragment;->c:Lcom/twitter/library/widget/UserView;

    .line 125
    iget-object v0, p0, Lcom/twitter/android/AuthorizeAppFragment;->c:Lcom/twitter/library/widget/UserView;

    invoke-virtual {v0, v4}, Lcom/twitter/library/widget/UserView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v0, 0x7f130186

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    return-void
.end method
