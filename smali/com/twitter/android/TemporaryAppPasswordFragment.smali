.class public Lcom/twitter/android/TemporaryAppPasswordFragment;
.super Lcom/twitter/app/common/list/TwitterListFragment;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/app/common/list/TwitterListFragment",
        "<",
        "Landroid/database/Cursor;",
        "Lcom/twitter/android/qy;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/twitter/app/common/list/TwitterListFragment;-><init>()V

    return-void
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    invoke-static {p0}, Lcom/twitter/android/TemporaryAppPasswordFragment;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 104
    iget-object v0, p0, Lcom/twitter/android/TemporaryAppPasswordFragment;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-static {p1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v3

    const-string/jumbo v2, "code"

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 108
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 112
    :goto_0
    new-instance v1, Lcmb;

    invoke-direct {v1, v0}, Lcmb;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {p0, v1}, Lcom/twitter/android/TemporaryAppPasswordFragment;->b(Lcmf;)V

    .line 113
    iput-object p1, p0, Lcom/twitter/android/TemporaryAppPasswordFragment;->a:Ljava/lang/String;

    .line 115
    :cond_0
    return-void

    .line 110
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    .line 224
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    .line 225
    :cond_0
    const-string/jumbo v0, ""

    .line 227
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private l()V
    .locals 3

    .prologue
    .line 205
    new-instance v0, Lblr;

    invoke-virtual {p0}, Lcom/twitter/android/TemporaryAppPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/android/TemporaryAppPasswordFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lblr;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/TemporaryAppPasswordFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 207
    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/twitter/android/TemporaryAppPasswordFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/twitter/android/TemporaryAppPasswordFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 212
    if-eqz v0, :cond_0

    .line 213
    invoke-static {v0}, Lcom/twitter/android/qy;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/twitter/android/TemporaryAppPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/twitter/library/util/an;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 216
    const v0, 0x7f0a0226

    invoke-virtual {p0, v0}, Lcom/twitter/android/TemporaryAppPasswordFragment;->a(I)V

    .line 220
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->a()V

    .line 71
    iget-object v0, p0, Lcom/twitter/android/TemporaryAppPasswordFragment;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TemporaryAppPasswordFragment;->l(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/twitter/android/TemporaryAppPasswordFragment;->l()V

    .line 74
    :cond_0
    return-void
.end method

.method a(I)V
    .locals 3

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/twitter/android/TemporaryAppPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 232
    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0, p1}, Lcom/twitter/android/TemporaryAppPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 235
    :cond_0
    return-void
.end method

.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/twitter/android/TemporaryAppPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    .line 187
    packed-switch p3, :pswitch_data_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 189
    :pswitch_0
    invoke-direct {p0}, Lcom/twitter/android/TemporaryAppPasswordFragment;->m()V

    goto :goto_0

    .line 193
    :pswitch_1
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/twitter/android/TemporaryAppPasswordFragment;->c(Ljava/lang/String;)V

    .line 194
    invoke-direct {p0}, Lcom/twitter/android/TemporaryAppPasswordFragment;->l()V

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Lcom/twitter/app/common/list/aj;)V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcom/twitter/app/common/list/aj;)V

    .line 79
    const v0, 0x7f0403a9

    invoke-virtual {p1, v0}, Lcom/twitter/app/common/list/aj;->c(I)Lcom/twitter/app/common/list/aj;

    .line 80
    return-void
.end method

.method protected a(Lcom/twitter/library/service/x;II)V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 85
    packed-switch p2, :pswitch_data_0

    .line 101
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p1

    .line 87
    check-cast v0, Lblr;

    .line 88
    invoke-virtual {v0}, Lblr;->e()Lcom/twitter/model/account/h;

    move-result-object v0

    .line 89
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->U()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/twitter/model/account/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TemporaryAppPasswordFragment;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_0
    const v0, 0x7f0a04e3

    invoke-virtual {p0, v0}, Lcom/twitter/android/TemporaryAppPasswordFragment;->a(I)V

    .line 93
    invoke-virtual {p0}, Lcom/twitter/android/TemporaryAppPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/twitter/android/TemporaryAppPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 119
    invoke-static {p1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    const v1, 0x7f0a04ee

    invoke-virtual {p0, v1}, Lcom/twitter/android/TemporaryAppPasswordFragment;->a(I)V

    .line 121
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-direct {p0, p1}, Lcom/twitter/android/TemporaryAppPasswordFragment;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 47
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0, v4}, Lcom/twitter/android/TemporaryAppPasswordFragment;->setRetainInstance(Z)V

    .line 50
    invoke-virtual {p0}, Lcom/twitter/android/TemporaryAppPasswordFragment;->p()Lcom/twitter/app/common/list/w;

    move-result-object v0

    .line 51
    const-string/jumbo v1, "account_id"

    invoke-virtual {p0}, Lcom/twitter/android/TemporaryAppPasswordFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/app/common/list/w;->a(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/TemporaryAppPasswordFragment;->aa:J

    .line 53
    if-nez p1, :cond_0

    .line 54
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/TemporaryAppPasswordFragment;->aa:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "temporary_app_password::::impression"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 56
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Lcom/twitter/app/common/list/TwitterListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/twitter/android/TemporaryAppPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 62
    new-instance v1, Lcom/twitter/android/qy;

    invoke-direct {v1, v0}, Lcom/twitter/android/qy;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {p0}, Lcom/twitter/android/TemporaryAppPasswordFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v2

    new-instance v3, Lcom/twitter/android/qz;

    invoke-direct {v3, v0, v1}, Lcom/twitter/android/qz;-><init>(Landroid/content/Context;Lcom/twitter/android/qy;)V

    invoke-virtual {v2, v1, v3}, Lcom/twitter/app/common/list/aa;->a(Lcvt;Landroid/widget/ListAdapter;)V

    .line 65
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/twitter/android/TemporaryAppPasswordFragment;->c(Ljava/lang/String;)V

    .line 66
    return-void
.end method
