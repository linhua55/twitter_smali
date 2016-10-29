.class public Lcom/twitter/android/commerce/view/OrderHistoryFragment;
.super Lcom/twitter/app/common/list/TwitterListFragment;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/app/common/list/TwitterListFragment",
        "<",
        "Landroid/database/Cursor;",
        "Lcvt",
        "<",
        "Landroid/database/Cursor;",
        ">;>;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/twitter/android/commerce/network/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/twitter/app/common/list/TwitterListFragment;-><init>()V

    return-void
.end method

.method private a(Lcom/twitter/media/request/a;)V
    .locals 4

    .prologue
    .line 153
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/twitter/media/request/a;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p1}, Lcom/twitter/media/request/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 157
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/OrderHistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/twitter/android/commerce/view/CommerceImageActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "image_url"

    .line 159
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 157
    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/OrderHistoryFragment;->startActivity(Landroid/content/Intent;)V

    .line 161
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->a()V

    .line 87
    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/OrderHistoryFragment;->ag_()V

    .line 89
    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/OrderHistoryFragment;->aP()Lcvt;

    move-result-object v0

    invoke-virtual {v0}, Lcvt;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/OrderHistoryFragment;->a(I)V

    .line 92
    :cond_0
    return-void
.end method

.method protected a(I)V
    .locals 5

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/OrderHistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/twitter/android/commerce/view/OrderHistoryFragment;->b:Lcom/twitter/android/commerce/network/e;

    invoke-virtual {v1}, Lcom/twitter/android/commerce/network/e;->a()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 119
    new-instance v2, Lbzq;

    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/OrderHistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lbzq;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/Long;)V

    .line 120
    new-instance v1, Lcom/twitter/android/commerce/view/w;

    invoke-direct {v1, p0}, Lcom/twitter/android/commerce/view/w;-><init>(Lcom/twitter/android/commerce/view/OrderHistoryFragment;)V

    invoke-virtual {v0, v2, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 121
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/OrderHistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 165
    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/OrderHistoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 164
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 167
    return-void
.end method

.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 131
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 132
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 133
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/OrderHistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/twitter/android/commerce/view/OrderHistoryDetailsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 135
    const-string/jumbo v3, "commerce_order_history_item"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 136
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v1}, Lcom/twitter/android/commerce/view/OrderHistoryFragment;->startActivity(Landroid/content/Intent;)V

    .line 138
    return-void
.end method

.method protected a(Lcmf;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/twitter/android/commerce/view/OrderHistoryFragment;->b(Lcmf;)V

    .line 111
    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/OrderHistoryFragment;->aP()Lcvt;

    move-result-object v0

    invoke-virtual {v0}, Lcvt;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/commerce/view/OrderHistoryFragment;->a:Z

    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/OrderHistoryFragment;->a(I)V

    .line 114
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/android/commerce/network/e;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/twitter/android/commerce/view/OrderHistoryFragment;->b:Lcom/twitter/android/commerce/network/e;

    .line 175
    return-void
.end method

.method protected a(Lcom/twitter/app/common/list/aj;)V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcom/twitter/app/common/list/aj;)V

    .line 75
    const v0, 0x7f04007a

    invoke-virtual {p1, v0}, Lcom/twitter/app/common/list/aj;->f(I)Lcom/twitter/app/common/list/aj;

    .line 76
    return-void
.end method

.method public a(Lcom/twitter/library/commerce/model/v;)V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/commerce/view/OrderHistoryFragment;->a:Z

    .line 142
    return-void
.end method

.method protected g()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->g()V

    .line 126
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/OrderHistoryFragment;->a(I)V

    .line 127
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/OrderHistoryFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/commerce/view/v;

    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/OrderHistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/twitter/android/commerce/view/v;-><init>(Lcom/twitter/android/commerce/view/OrderHistoryFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/aa;->a(Lcvt;)V

    .line 82
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f130240

    if-ne v0, v1, :cond_0

    .line 147
    check-cast p1, Lcom/twitter/media/ui/image/MediaImageView;

    .line 148
    invoke-virtual {p1}, Lcom/twitter/media/ui/image/MediaImageView;->getImageRequest()Lcom/twitter/media/request/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/commerce/view/OrderHistoryFragment;->a(Lcom/twitter/media/request/a;)V

    .line 150
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    new-instance v0, Lcom/twitter/android/commerce/network/e;

    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/OrderHistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 63
    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/OrderHistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/commerce/network/e;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0, v0}, Lcom/twitter/android/commerce/view/OrderHistoryFragment;->a(Lcom/twitter/android/commerce/network/e;)V

    .line 65
    if-nez p1, :cond_0

    .line 66
    iput-boolean v3, p0, Lcom/twitter/android/commerce/view/OrderHistoryFragment;->a:Z

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    const-string/jumbo v0, "state_fetched"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/commerce/view/OrderHistoryFragment;->a:Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 97
    const-string/jumbo v0, "state_fetched"

    iget-boolean v1, p0, Lcom/twitter/android/commerce/view/OrderHistoryFragment;->a:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    return-void
.end method

.method protected v_()Landroid/support/v4/content/Loader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 102
    new-instance v0, Lcom/twitter/android/bt;

    invoke-virtual {p0}, Lcom/twitter/android/commerce/view/OrderHistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/twitter/library/provider/dd;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/twitter/android/commerce/view/OrderHistoryFragment;->b:Lcom/twitter/android/commerce/network/e;

    .line 103
    invoke-virtual {v3}, Lcom/twitter/android/commerce/network/e;->a()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    .line 102
    invoke-static {v2, v6, v7}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcgw;->a:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
