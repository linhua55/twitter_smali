.class public Lcom/twitter/android/CollectionPermalinkFragment;
.super Lcom/twitter/android/TimelineFragment;
.source "Twttr"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/TimelineFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private o:Landroid/widget/FrameLayout;

.field private p:Lcom/twitter/android/widget/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/twitter/android/TimelineFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 82
    :pswitch_0
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/twitter/android/CollectionPermalinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/twitter/android/CollectionPermalinkFragment;->p:Lcom/twitter/android/widget/p;

    .line 85
    invoke-virtual {v1, v0, p2}, Lcom/twitter/android/widget/p;->a(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 86
    iget-object v0, p0, Lcom/twitter/android/CollectionPermalinkFragment;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/p;->a(Landroid/view/ViewGroup;)V

    .line 87
    invoke-virtual {p0}, Lcom/twitter/android/CollectionPermalinkFragment;->aV()Lcyj;

    move-result-object v0

    iget-object v1, v1, Lcom/twitter/android/widget/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcyj;->a(Ljava/lang/CharSequence;)Z

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Lcom/twitter/app/common/list/aj;)V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/twitter/android/TimelineFragment;->a(Lcom/twitter/app/common/list/aj;)V

    .line 45
    const v0, 0x7f0a010d

    invoke-virtual {p1, v0}, Lcom/twitter/app/common/list/aj;->a(I)Lcom/twitter/app/common/list/aj;

    move-result-object v0

    const v1, 0x7f0a010e

    .line 46
    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/aj;->b(I)Lcom/twitter/app/common/list/aj;

    .line 47
    return-void
.end method

.method protected a(Lcom/twitter/library/service/x;II)V
    .locals 3

    .prologue
    .line 122
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/TimelineFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 123
    invoke-virtual {p0}, Lcom/twitter/android/CollectionPermalinkFragment;->t_()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    invoke-virtual {p1}, Lcom/twitter/library/service/x;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/twitter/android/CollectionPermalinkFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 126
    :cond_0
    return-void
.end method

.method protected a(Lcom/twitter/refresh/widget/a;Z)V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public a(Lcyd;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 147
    iget-object v5, p0, Lcom/twitter/android/CollectionPermalinkFragment;->p:Lcom/twitter/android/widget/p;

    .line 148
    invoke-interface {p1}, Lcyd;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 157
    invoke-super {p0, p1}, Lcom/twitter/android/TimelineFragment;->a(Lcyd;)Z

    move-result v0

    :goto_0
    return v0

    .line 150
    :pswitch_0
    invoke-virtual {p0}, Lcom/twitter/android/CollectionPermalinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, v5, Lcom/twitter/android/widget/p;->f:Ljava/lang/String;

    iget-object v2, v5, Lcom/twitter/android/widget/p;->g:Ljava/lang/String;

    iget-object v3, v5, Lcom/twitter/android/widget/p;->c:Ljava/lang/String;

    iget-object v4, v5, Lcom/twitter/android/widget/p;->d:Ljava/lang/String;

    iget-object v5, v5, Lcom/twitter/android/widget/p;->h:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/twitter/library/util/an;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/CollectionPermalinkFragment;->aa:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/twitter/android/CollectionPermalinkFragment;->i()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object v7, v1, v6

    const/4 v2, 0x2

    aput-object v7, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "custom_timeline"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "share"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 152
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    move v0, v6

    .line 154
    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x7f1307f6
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcyg;)Z
    .locals 1

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/twitter/android/TimelineFragment;->a(Lcyg;)Z

    .line 131
    const v0, 0x7f14002e

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcyg;)I
    .locals 2

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/twitter/android/TimelineFragment;->b(Lcyg;)I

    .line 139
    invoke-interface {p1}, Lcyg;->j()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/ToolBar;

    .line 140
    const v1, 0x7f1307f6

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/android/CollectionPermalinkFragment;->p:Lcom/twitter/android/widget/p;

    iget-object v0, v0, Lcom/twitter/android/widget/p;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lbjl;->b(Z)Lbjl;

    .line 141
    const/4 v0, 0x2

    return v0

    .line 140
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()V
    .locals 3

    .prologue
    .line 103
    invoke-super {p0}, Lcom/twitter/android/TimelineFragment;->c()V

    .line 104
    invoke-virtual {p0}, Lcom/twitter/android/CollectionPermalinkFragment;->aD()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/twitter/android/CollectionPermalinkFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 107
    :cond_0
    return-void
.end method

.method protected l()Z
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/twitter/android/CollectionPermalinkFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/CollectionPermalinkFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/vz;

    invoke-virtual {v0}, Lcom/twitter/android/vz;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/twitter/android/CollectionPermalinkFragment;->b:Z

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected m()I
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/twitter/android/CollectionPermalinkFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/CollectionPermalinkFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/vz;

    invoke-virtual {v0}, Lcom/twitter/android/vz;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public n()Lcom/twitter/android/timeline/k;
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/twitter/android/CollectionPermalinkFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/timeline/k;->a(Landroid/os/Bundle;)Lcom/twitter/android/timeline/k;

    move-result-object v0

    return-object v0
.end method

.method public synthetic o()Lcom/twitter/android/timeline/bm;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/twitter/android/CollectionPermalinkFragment;->n()Lcom/twitter/android/timeline/k;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 175
    :goto_0
    return-void

    .line 166
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/CollectionPermalinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "user_id"

    iget-object v2, p0, Lcom/twitter/android/CollectionPermalinkFragment;->p:Lcom/twitter/android/widget/p;

    iget-wide v2, v2, Lcom/twitter/android/widget/p;->e:J

    .line 167
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 166
    invoke-virtual {p0, v0}, Lcom/twitter/android/CollectionPermalinkFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x7f1301e4
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 65
    packed-switch p1, :pswitch_data_0

    move-object v0, v6

    .line 73
    :goto_0
    return-object v0

    .line 67
    :pswitch_0
    new-instance v0, Lcom/twitter/android/bt;

    invoke-virtual {p0}, Lcom/twitter/android/CollectionPermalinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/twitter/library/provider/cz;->a:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/twitter/android/CollectionPermalinkFragment;->aa:J

    .line 68
    invoke-static {v2, v4, v5}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcgn;->a:[Ljava/lang/String;

    const-string/jumbo v4, "topics_ev_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/twitter/android/CollectionPermalinkFragment;->a:Ljava/lang/String;

    aput-object v8, v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/CollectionPermalinkFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lcom/twitter/android/TimelineFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/twitter/android/CollectionPermalinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 53
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/twitter/android/CollectionPermalinkFragment;->o:Landroid/widget/FrameLayout;

    .line 54
    invoke-virtual {p0}, Lcom/twitter/android/CollectionPermalinkFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v1

    iget-object v1, v1, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/twitter/android/CollectionPermalinkFragment;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 56
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040067

    const/4 v2, 0x0

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/twitter/android/widget/p;

    invoke-direct {v1, v0}, Lcom/twitter/android/widget/p;-><init>(Landroid/view/View;)V

    .line 59
    iget-object v0, v1, Lcom/twitter/android/widget/p;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iput-object v1, p0, Lcom/twitter/android/CollectionPermalinkFragment;->p:Lcom/twitter/android/widget/p;

    .line 61
    return-void
.end method

.method public synthetic p()Lcom/twitter/app/common/list/w;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/twitter/android/CollectionPermalinkFragment;->n()Lcom/twitter/android/timeline/k;

    move-result-object v0

    return-object v0
.end method

.method public synthetic q()Lcom/twitter/app/common/base/f;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/twitter/android/CollectionPermalinkFragment;->n()Lcom/twitter/android/timeline/k;

    move-result-object v0

    return-object v0
.end method
