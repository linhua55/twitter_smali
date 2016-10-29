.class public Lcom/twitter/android/LoginVerificationFragment;
.super Lcom/twitter/app/common/list/TwitterListFragment;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/app/common/list/TwitterListFragment",
        "<",
        "Landroid/database/Cursor;",
        "Lcvt",
        "<",
        "Landroid/database/Cursor;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/twitter/library/client/Session;

.field private b:[Landroid/text/style/StyleSpan;

.field private c:Lcom/twitter/android/jc;

.field private d:Landroid/app/ProgressDialog;

.field private final e:Lcom/twitter/library/client/aa;

.field private f:Landroid/widget/ArrayAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/twitter/app/common/list/TwitterListFragment;-><init>()V

    .line 67
    new-instance v0, Lcom/twitter/android/jd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/jd;-><init>(Lcom/twitter/android/LoginVerificationFragment;Lcom/twitter/android/ja;)V

    iput-object v0, p0, Lcom/twitter/android/LoginVerificationFragment;->e:Lcom/twitter/library/client/aa;

    return-void
.end method

.method private static a([I)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 186
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    aget v0, p0, v0

    goto :goto_0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/twitter/android/LoginVerificationFragment;->a_:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 191
    return-void
.end method

.method private a(JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 194
    .line 195
    invoke-virtual {p0}, Lcom/twitter/android/LoginVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lblh;->e(Landroid/content/Context;J)Z

    move-result v0

    .line 196
    if-eqz v0, :cond_0

    .line 197
    const v0, 0x7f0a04e3

    invoke-direct {p0, v0}, Lcom/twitter/android/LoginVerificationFragment;->a(I)V

    .line 203
    :goto_0
    return-void

    .line 199
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/LoginVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/SecuritySettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "SecuritySettingsActivity_account_name"

    .line 200
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 199
    invoke-virtual {p0, v0}, Lcom/twitter/android/LoginVerificationFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/LoginVerificationFragment;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/twitter/android/LoginVerificationFragment;->m()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/LoginVerificationFragment;JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/LoginVerificationFragment;->a(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/LoginVerificationFragment;Lcom/twitter/library/service/x;II)Z
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/LoginVerificationFragment;->c(Lcom/twitter/library/service/x;II)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/twitter/android/LoginVerificationFragment;)J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/twitter/android/LoginVerificationFragment;->aa:J

    return-wide v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/twitter/android/LoginVerificationFragment;->f:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/twitter/android/LoginVerificationFragment;->c:Lcom/twitter/android/jc;

    if-ne v0, v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/twitter/android/LoginVerificationFragment;->f:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/twitter/android/LoginVerificationFragment;->f:Landroid/widget/ArrayAdapter;

    .line 141
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/account/LoginVerificationRequest;

    .line 142
    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/twitter/model/account/LoginVerificationRequest;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 143
    iget-object v1, p0, Lcom/twitter/android/LoginVerificationFragment;->f:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/LoginVerificationFragment;->f:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/twitter/android/LoginVerificationFragment;->c:Lcom/twitter/android/jc;

    iput-object v0, p0, Lcom/twitter/android/LoginVerificationFragment;->f:Landroid/widget/ArrayAdapter;

    .line 149
    invoke-virtual {p0}, Lcom/twitter/android/LoginVerificationFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/twitter/android/LoginVerificationFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/LoginVerificationFragment;->f:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 139
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private b([I)V
    .locals 2

    .prologue
    .line 206
    invoke-static {p1}, Lcom/twitter/android/LoginVerificationFragment;->a([I)I

    move-result v0

    .line 207
    packed-switch v0, :pswitch_data_0

    .line 223
    const v0, 0x7f0a04e3

    invoke-direct {p0, v0}, Lcom/twitter/android/LoginVerificationFragment;->a(I)V

    .line 227
    :goto_0
    return-void

    .line 209
    :pswitch_0
    new-instance v0, Lcom/twitter/android/widget/ec;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v1, 0x7f0a04ef

    .line 210
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->a(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a04ee

    .line 211
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->b(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x104000a

    .line 212
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->e(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 213
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 214
    invoke-virtual {p0}, Lcom/twitter/android/LoginVerificationFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_0

    .line 219
    :pswitch_1
    const v0, 0x7f0a04f2

    invoke-direct {p0, v0}, Lcom/twitter/android/LoginVerificationFragment;->a(I)V

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0xeb
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/twitter/android/LoginVerificationFragment;Lcom/twitter/library/service/x;II)Z
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/LoginVerificationFragment;->c(Lcom/twitter/library/service/x;II)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/twitter/android/LoginVerificationFragment;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/twitter/android/LoginVerificationFragment;->a:Lcom/twitter/library/client/Session;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/LoginVerificationFragment;)J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/twitter/android/LoginVerificationFragment;->aa:J

    return-wide v0
.end method

.method static synthetic e(Lcom/twitter/android/LoginVerificationFragment;)J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/twitter/android/LoginVerificationFragment;->aa:J

    return-wide v0
.end method

.method static synthetic f(Lcom/twitter/android/LoginVerificationFragment;)J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/twitter/android/LoginVerificationFragment;->aa:J

    return-wide v0
.end method

.method static synthetic g(Lcom/twitter/android/LoginVerificationFragment;)[Landroid/text/style/StyleSpan;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/twitter/android/LoginVerificationFragment;->b:[Landroid/text/style/StyleSpan;

    return-object v0
.end method

.method private m()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 157
    new-instance v0, Lbkx;

    invoke-virtual {p0}, Lcom/twitter/android/LoginVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/LoginVerificationFragment;->a:Lcom/twitter/library/client/Session;

    invoke-direct {v0, v1, v2}, Lbkx;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v4, v1}, Lcom/twitter/android/LoginVerificationFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 159
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/LoginVerificationFragment;->a:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "login_verification::::get_newer"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 160
    return-void
.end method


# virtual methods
.method a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 434
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 435
    const v1, 0x7f04001a

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 436
    const v0, 0x7f130132

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 437
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object v0, v1

    .line 439
    check-cast v0, Lcom/twitter/library/widget/UserView;

    .line 440
    iget-object v2, p0, Lcom/twitter/android/LoginVerificationFragment;->a:Lcom/twitter/library/client/Session;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/library/widget/UserView;->setUser(Lcom/twitter/model/core/TwitterUser;)V

    .line 441
    invoke-virtual {v0, v3}, Lcom/twitter/library/widget/UserView;->setVerified(Z)V

    .line 442
    invoke-virtual {v0, v3}, Lcom/twitter/library/widget/UserView;->setProtected(Z)V

    .line 443
    return-object v1
.end method

.method public a()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->a()V

    .line 108
    invoke-virtual {p0}, Lcom/twitter/android/LoginVerificationFragment;->aY()Lcom/twitter/android/client/c;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/LoginVerificationFragment;->e:Lcom/twitter/library/client/aa;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/c;->a(Lcom/twitter/library/client/aa;)V

    .line 109
    invoke-direct {p0}, Lcom/twitter/android/LoginVerificationFragment;->m()V

    .line 110
    return-void
.end method

.method protected a(Lcom/twitter/library/service/x;II)V
    .locals 9
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/16 v5, 0x58

    const/16 v4, 0xc8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 241
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 242
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 243
    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->g()Lcom/twitter/internal/network/k;

    move-result-object v0

    iget v1, v0, Lcom/twitter/internal/network/k;->a:I

    .line 244
    packed-switch p2, :pswitch_data_0

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 247
    :pswitch_0
    if-ne v1, v4, :cond_2

    .line 248
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/LoginVerificationFragment;->a:Lcom/twitter/library/client/Session;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "login_verification::get_requests::success"

    aput-object v3, v2, v7

    .line 249
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    move-object v6, v0

    .line 254
    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->f(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 256
    check-cast p1, Lbkx;

    .line 258
    invoke-virtual {p1}, Lbkx;->b()Ljava/util/List;

    move-result-object v0

    .line 259
    if-ne v1, v4, :cond_3

    if-eqz v0, :cond_3

    .line 260
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 261
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v6, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(J)Lcom/twitter/library/scribe/ScribeLog;

    .line 262
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v5

    .line 263
    sget-object v1, Lcom/twitter/model/account/LoginVerificationRequest;->a:Lcom/twitter/model/account/LoginVerificationRequest;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 265
    new-instance v0, Lcom/twitter/android/jf;

    iget-object v2, p0, Lcom/twitter/android/LoginVerificationFragment;->a_:Landroid/content/Context;

    const v3, 0x7f04018a

    const v4, 0x7f130452

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/jf;-><init>(Lcom/twitter/android/LoginVerificationFragment;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/twitter/android/LoginVerificationFragment;->f:Landroid/widget/ArrayAdapter;

    .line 285
    :cond_1
    :goto_2
    invoke-static {v6}, Lbjf;->a(Lbjh;)V

    .line 286
    invoke-virtual {p0}, Lcom/twitter/android/LoginVerificationFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/twitter/android/LoginVerificationFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/LoginVerificationFragment;->f:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 251
    :cond_2
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/LoginVerificationFragment;->a:Lcom/twitter/library/client/Session;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "login_verification::get_requests::failure"

    aput-object v3, v2, v7

    .line 252
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    move-object v6, v0

    goto :goto_1

    .line 273
    :cond_3
    const-wide/16 v2, 0x0

    invoke-virtual {v6, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(J)Lcom/twitter/library/scribe/ScribeLog;

    .line 274
    iget-object v0, p0, Lcom/twitter/android/LoginVerificationFragment;->c:Lcom/twitter/android/jc;

    iput-object v0, p0, Lcom/twitter/android/LoginVerificationFragment;->f:Landroid/widget/ArrayAdapter;

    .line 275
    if-eq v1, v4, :cond_1

    .line 276
    invoke-virtual {p1}, Lbkx;->e()[I

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/LoginVerificationFragment;->a([I)I

    move-result v0

    .line 277
    if-ne v0, v5, :cond_4

    .line 278
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/LoginVerificationFragment;->a:Lcom/twitter/library/client/Session;

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "login_verification::get_requests::rate_limit"

    aput-object v3, v2, v7

    .line 279
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v1

    .line 278
    invoke-static {v1}, Lbjf;->a(Lbjh;)V

    .line 281
    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->d(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 282
    const v0, 0x7f0a04e3

    invoke-direct {p0, v0}, Lcom/twitter/android/LoginVerificationFragment;->a(I)V

    goto :goto_2

    .line 292
    :pswitch_1
    invoke-virtual {p0}, Lcom/twitter/android/LoginVerificationFragment;->l()V

    .line 293
    if-ne v1, v4, :cond_5

    .line 294
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/LoginVerificationFragment;->a:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v2, "login_verification::request:reject:success"

    aput-object v2, v1, v7

    .line 295
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 294
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 296
    const v0, 0x7f0a04f3

    invoke-direct {p0, v0}, Lcom/twitter/android/LoginVerificationFragment;->a(I)V

    .line 297
    check-cast p1, Lblm;

    iget-object v0, p1, Lblm;->a:Lblg;

    iget-object v0, v0, Lblg;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/twitter/android/LoginVerificationFragment;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 299
    :cond_5
    check-cast p1, Lblm;

    invoke-virtual {p1}, Lblm;->b()[I

    move-result-object v0

    .line 300
    invoke-direct {p0, v0}, Lcom/twitter/android/LoginVerificationFragment;->b([I)V

    .line 302
    invoke-static {v0}, Lcom/twitter/android/LoginVerificationFragment;->a([I)I

    move-result v2

    .line 303
    if-ne v2, v5, :cond_6

    .line 304
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v3, p0, Lcom/twitter/android/LoginVerificationFragment;->a:Lcom/twitter/library/client/Session;

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "login_verification::request:reject:rate_limit"

    aput-object v4, v3, v7

    .line 305
    invoke-virtual {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 304
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 308
    :cond_6
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v3, p0, Lcom/twitter/android/LoginVerificationFragment;->a:Lcom/twitter/library/client/Session;

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "login_verification::request:reject:failure"

    aput-object v4, v3, v7

    .line 309
    invoke-virtual {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 310
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->f(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 311
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->d(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 308
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_0

    .line 316
    :pswitch_2
    invoke-virtual {p0}, Lcom/twitter/android/LoginVerificationFragment;->l()V

    .line 317
    if-ne v1, v4, :cond_7

    .line 318
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/LoginVerificationFragment;->a:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v2, "login_verification::request:accept:success"

    aput-object v2, v1, v7

    .line 319
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 318
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 320
    const v0, 0x7f0a04f1

    invoke-direct {p0, v0}, Lcom/twitter/android/LoginVerificationFragment;->a(I)V

    .line 321
    check-cast p1, Lbko;

    iget-object v0, p1, Lbko;->a:Lblg;

    iget-object v0, v0, Lblg;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/twitter/android/LoginVerificationFragment;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 323
    :cond_7
    check-cast p1, Lbko;

    invoke-virtual {p1}, Lbko;->b()[I

    move-result-object v0

    .line 324
    invoke-direct {p0, v0}, Lcom/twitter/android/LoginVerificationFragment;->b([I)V

    .line 326
    invoke-static {v0}, Lcom/twitter/android/LoginVerificationFragment;->a([I)I

    move-result v2

    .line 327
    if-ne v2, v5, :cond_8

    .line 328
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v3, p0, Lcom/twitter/android/LoginVerificationFragment;->a:Lcom/twitter/library/client/Session;

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "login_verification::request:accept:rate_limit"

    aput-object v4, v3, v7

    .line 329
    invoke-virtual {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 328
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 332
    :cond_8
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v3, p0, Lcom/twitter/android/LoginVerificationFragment;->a:Lcom/twitter/library/client/Session;

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "login_verification::request:accept:failure"

    aput-object v4, v3, v7

    .line 333
    invoke-virtual {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 334
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->f(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 335
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->d(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 332
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-virtual {p0}, Lcom/twitter/android/LoginVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    .line 170
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/twitter/android/LoginVerificationFragment;->d:Landroid/app/ProgressDialog;

    .line 171
    iget-object v0, p0, Lcom/twitter/android/LoginVerificationFragment;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 172
    iget-object v0, p0, Lcom/twitter/android/LoginVerificationFragment;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/twitter/android/LoginVerificationFragment;->d:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 174
    iget-object v0, p0, Lcom/twitter/android/LoginVerificationFragment;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 175
    iget-object v0, p0, Lcom/twitter/android/LoginVerificationFragment;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 177
    :cond_0
    return-void
.end method

.method protected d()V
    .locals 4

    .prologue
    .line 115
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->d()V

    .line 116
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/LoginVerificationFragment;->a:Lcom/twitter/library/client/Session;

    .line 117
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "login_verification::::impression"

    aput-object v3, v1, v2

    .line 118
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 119
    invoke-virtual {p0}, Lcom/twitter/android/LoginVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/LoginVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/twitter/android/LoginVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/twitter/android/LoginVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".twitter."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    const-string/jumbo v1, "settings"

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->i(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 126
    :goto_0
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 127
    return-void

    .line 124
    :cond_0
    const-string/jumbo v1, "push"

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->i(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/twitter/android/LoginVerificationFragment;->aY()Lcom/twitter/android/client/c;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/LoginVerificationFragment;->e:Lcom/twitter/library/client/aa;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/c;->b(Lcom/twitter/library/client/aa;)V

    .line 132
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->e()V

    .line 133
    return-void
.end method

.method protected g()V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/twitter/android/LoginVerificationFragment;->m()V

    .line 165
    return-void
.end method

.method l()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/twitter/android/LoginVerificationFragment;->d:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/twitter/android/LoginVerificationFragment;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 183
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const v3, 0x7f0a04fa

    .line 93
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 95
    new-instance v5, Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 96
    invoke-virtual {p0, v3}, Lcom/twitter/android/LoginVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 97
    invoke-virtual {p0, v3}, Lcom/twitter/android/LoginVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 96
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 98
    new-instance v0, Lcom/twitter/android/jc;

    .line 99
    invoke-virtual {p0}, Lcom/twitter/android/LoginVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f040189

    const v4, 0x7f130452

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/jc;-><init>(Lcom/twitter/android/LoginVerificationFragment;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/twitter/android/LoginVerificationFragment;->c:Lcom/twitter/android/jc;

    .line 103
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 73
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0, v3}, Lcom/twitter/android/LoginVerificationFragment;->setRetainInstance(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/twitter/android/LoginVerificationFragment;->p()Lcom/twitter/app/common/list/w;

    move-result-object v0

    const-string/jumbo v1, "lv_account_name"

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/w;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/twitter/android/LoginVerificationFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/LoginVerificationFragment;->a:Lcom/twitter/library/client/Session;

    .line 84
    :goto_0
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/style/StyleSpan;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    aput-object v2, v0, v1

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/twitter/android/LoginVerificationFragment;->b:[Landroid/text/style/StyleSpan;

    .line 89
    return-void

    .line 81
    :cond_0
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bk;->b(Ljava/lang/String;)Lcom/twitter/library/client/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/LoginVerificationFragment;->a:Lcom/twitter/library/client/Session;

    goto :goto_0
.end method
