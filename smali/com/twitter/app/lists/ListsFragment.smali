.class public Lcom/twitter/app/lists/ListsFragment;
.super Lcom/twitter/app/common/list/TwitterListFragment;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/app/common/list/TwitterListFragment",
        "<",
        "Lcom/twitter/model/core/cm;",
        "Lcom/twitter/app/lists/e;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Lcom/twitter/app/lists/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/twitter/app/common/list/TwitterListFragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/model/core/cm;)V
    .locals 6

    .prologue
    .line 193
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/app/lists/ListTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    const-string/jumbo v1, "owner_id"

    iget-wide v2, p1, Lcom/twitter/model/core/cm;->f:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "creator_id"

    iget-wide v4, p1, Lcom/twitter/model/core/cm;->g:J

    .line 195
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "list_id"

    iget-wide v4, p1, Lcom/twitter/model/core/cm;->e:J

    .line 196
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "list_name"

    iget-object v3, p1, Lcom/twitter/model/core/cm;->h:Ljava/lang/String;

    .line 197
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "list_description"

    iget-object v3, p1, Lcom/twitter/model/core/cm;->j:Ljava/lang/String;

    .line 198
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "list_fullname"

    iget-object v3, p1, Lcom/twitter/model/core/cm;->i:Ljava/lang/String;

    .line 199
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "is_private"

    iget-boolean v3, p1, Lcom/twitter/model/core/cm;->b:Z

    .line 200
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 202
    return-void
.end method

.method private c(I)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 142
    packed-switch p1, :pswitch_data_0

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid fetch type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move v0, v1

    .line 151
    :goto_0
    return v0

    .line 148
    :pswitch_1
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListsFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/app/lists/ListsFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/lists/e;

    invoke-virtual {v0}, Lcom/twitter/app/lists/e;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 149
    goto :goto_0

    .line 151
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 167
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cm;

    .line 168
    invoke-virtual {p1}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 178
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/twitter/app/lists/ListsFragment;->a(Landroid/content/Context;Lcom/twitter/model/core/cm;)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 171
    :pswitch_0
    iget-object v1, p0, Lcom/twitter/app/lists/ListsFragment;->d:Lcom/twitter/app/lists/i;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/twitter/app/lists/ListsFragment;->d:Lcom/twitter/app/lists/i;

    invoke-virtual {v0}, Lcom/twitter/model/core/cm;->a()J

    move-result-wide v2

    iget-object v0, v0, Lcom/twitter/model/core/cm;->h:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/twitter/app/lists/i;->a(JLjava/lang/String;)V

    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Lcmf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<",
            "Lcom/twitter/model/core/cm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcmf;)V

    .line 86
    iget-boolean v0, p0, Lcom/twitter/app/lists/ListsFragment;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcmf;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/app/lists/ListsFragment;->a:Z

    .line 88
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/app/lists/ListsFragment;->a(I)Z

    .line 90
    :cond_1
    return-void
.end method

.method a(Lcom/twitter/app/lists/i;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/twitter/app/lists/ListsFragment;->d:Lcom/twitter/app/lists/i;

    .line 162
    return-void
.end method

.method protected a(Lcom/twitter/library/service/x;II)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 186
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 187
    if-ne p2, v2, :cond_0

    invoke-virtual {p1}, Lcom/twitter/library/service/x;->U()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/twitter/app/lists/ListsFragment;->a_:Landroid/content/Context;

    const v1, 0x7f0a0488

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 190
    :cond_0
    return-void
.end method

.method protected a(I)Z
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 107
    invoke-virtual {p0, p1}, Lcom/twitter/app/lists/ListsFragment;->a_(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 131
    :goto_0
    return v0

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListsFragment;->l()Lcom/twitter/app/lists/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/lists/g;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "own_lists"

    :goto_1
    const/4 v3, 0x0

    invoke-static {v0, v3, p1}, Lcom/twitter/app/lists/ListsFragment;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 113
    iget-boolean v3, p0, Lcom/twitter/app/lists/ListsFragment;->b:Z

    if-eqz v3, :cond_2

    .line 114
    new-instance v3, Lbpm;

    invoke-virtual {p0}, Lcom/twitter/app/lists/ListsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/twitter/app/lists/ListsFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lbpm;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    .line 115
    invoke-virtual {v3, v1}, Lbpm;->a(I)Lbpm;

    move-result-object v1

    .line 116
    invoke-direct {p0, p1}, Lcom/twitter/app/lists/ListsFragment;->c(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lbpm;->c(I)Lbpm;

    move-result-object v1

    iget-object v3, p0, Lcom/twitter/app/lists/ListsFragment;->c:Ljava/lang/String;

    .line 117
    invoke-virtual {v1, v3}, Lbpm;->a(Ljava/lang/String;)Lbpm;

    move-result-object v1

    iget-wide v4, p0, Lcom/twitter/app/lists/ListsFragment;->aa:J

    .line 118
    invoke-virtual {v1, v4, v5}, Lbpm;->a(J)Lbpm;

    move-result-object v1

    .line 119
    invoke-virtual {v1, v6}, Lbpm;->d(I)Lbpm;

    move-result-object v1

    const-string/jumbo v3, "scribe_event"

    .line 120
    invoke-virtual {v1, v3, v0}, Lbpm;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/x;

    move-result-object v0

    .line 114
    invoke-virtual {p0, v0, v2, p1}, Lcom/twitter/app/lists/ListsFragment;->c(Lcom/twitter/library/service/x;II)Z

    :goto_2
    move v0, v2

    .line 131
    goto :goto_0

    .line 111
    :cond_1
    const-string/jumbo v0, "lists"

    goto :goto_1

    .line 123
    :cond_2
    new-instance v1, Lbpl;

    invoke-virtual {p0}, Lcom/twitter/app/lists/ListsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/twitter/app/lists/ListsFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lbpl;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    .line 124
    invoke-direct {p0, p1}, Lcom/twitter/app/lists/ListsFragment;->c(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lbpl;->a(I)Lbpl;

    move-result-object v1

    iget-wide v4, p0, Lcom/twitter/app/lists/ListsFragment;->aa:J

    .line 125
    invoke-virtual {v1, v4, v5}, Lbpl;->a(J)Lbpl;

    move-result-object v1

    iget-object v3, p0, Lcom/twitter/app/lists/ListsFragment;->c:Ljava/lang/String;

    .line 126
    invoke-virtual {v1, v3}, Lbpl;->a(Ljava/lang/String;)Lbpl;

    move-result-object v1

    .line 127
    invoke-virtual {v1, v6}, Lbpl;->c(I)Lbpl;

    move-result-object v1

    const-string/jumbo v3, "scribe_event"

    .line 128
    invoke-virtual {v1, v3, v0}, Lbpl;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/x;

    move-result-object v0

    .line 123
    invoke-virtual {p0, v0, v2, p1}, Lcom/twitter/app/lists/ListsFragment;->c(Lcom/twitter/library/service/x;II)Z

    goto :goto_2
.end method

.method protected f()Lavm;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lavm",
            "<",
            "Lcmf",
            "<",
            "Lcom/twitter/model/core/cm;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 74
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListsFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v6

    .line 75
    new-instance v0, Lawc;

    .line 77
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 79
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListsFragment;->l()Lcom/twitter/app/lists/g;

    move-result-object v4

    invoke-static {v4, v6, v7}, Lawe;->a(Lcom/twitter/app/lists/g;J)Lawe;

    move-result-object v4

    .line 80
    invoke-static {v1, v6, v7}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/library/provider/dm;->d()Lcom/twitter/database/schema/TwitterSchema;

    move-result-object v5

    const-class v6, Lbev;

    invoke-interface {v5, v6}, Lcom/twitter/database/schema/TwitterSchema;->a(Ljava/lang/Class;)Lcom/twitter/database/model/p;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lawc;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;ILawe;Lcom/twitter/database/model/p;)V

    .line 75
    return-object v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/app/lists/ListsFragment;->a(I)Z

    .line 95
    return-void
.end method

.method protected h()V
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListsFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/lists/e;

    invoke-virtual {v0}, Lcom/twitter/app/lists/e;->i()Lcmf;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawd;

    .line 100
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListsFragment;->aG()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lawd;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/app/lists/ListsFragment;->a(I)Z

    .line 103
    :cond_0
    return-void
.end method

.method public l()Lcom/twitter/app/lists/g;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/app/lists/g;->a(Landroid/os/Bundle;)Lcom/twitter/app/lists/g;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListsFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    new-instance v1, Lcom/twitter/app/lists/e;

    invoke-virtual {p0}, Lcom/twitter/app/lists/ListsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/twitter/app/lists/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/aa;->a(Lcvt;)V

    .line 68
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListsFragment;->l()Lcom/twitter/app/lists/g;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/twitter/app/lists/g;->c()Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/app/lists/ListsFragment;->a:Z

    .line 60
    invoke-virtual {v0}, Lcom/twitter/app/lists/g;->g()Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/app/lists/ListsFragment;->b:Z

    .line 61
    invoke-virtual {v0}, Lcom/twitter/app/lists/g;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/lists/ListsFragment;->c:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public synthetic p()Lcom/twitter/app/common/list/w;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListsFragment;->l()Lcom/twitter/app/lists/g;

    move-result-object v0

    return-object v0
.end method

.method public synthetic q()Lcom/twitter/app/common/base/f;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/twitter/app/lists/ListsFragment;->l()Lcom/twitter/app/lists/g;

    move-result-object v0

    return-object v0
.end method
