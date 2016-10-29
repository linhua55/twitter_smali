.class public abstract Lcom/twitter/android/TweetListFragment;
.super Lcom/twitter/android/widget/ScrollingHeaderListFragment;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/kn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "A:",
        "Lcvt",
        "<TT;>;>",
        "Lcom/twitter/android/widget/ScrollingHeaderListFragment",
        "<TT;TA;>;",
        "Lcom/twitter/android/kn",
        "<",
        "Landroid/view/View;",
        "Lcom/twitter/model/core/Tweet;",
        ">;"
    }
.end annotation


# instance fields
.field protected H:Lcom/twitter/model/core/Tweet;

.field protected I:Lcom/twitter/android/sn;

.field protected J:Lcom/twitter/android/tj;

.field protected K:I

.field protected L:Lcom/twitter/library/scribe/TwitterScribeItem;

.field protected M:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;-><init>()V

    .line 53
    iput-object v1, p0, Lcom/twitter/android/TweetListFragment;->I:Lcom/twitter/android/sn;

    .line 55
    iput-object v1, p0, Lcom/twitter/android/TweetListFragment;->J:Lcom/twitter/android/tj;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/android/TweetListFragment;->K:I

    .line 59
    iput-object v1, p0, Lcom/twitter/android/TweetListFragment;->L:Lcom/twitter/library/scribe/TwitterScribeItem;

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/TweetListFragment;)V
    .locals 0

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/twitter/android/TweetListFragment;->aK()V

    return-void
.end method


# virtual methods
.method protected V()Lcom/twitter/android/sn;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Lcom/twitter/android/sn;

    invoke-virtual {p0}, Lcom/twitter/android/TweetListFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/sn;-><init>(Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    return-object v0
.end method

.method W_()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 86
    invoke-virtual {p0}, Lcom/twitter/android/TweetListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/twitter/app/common/list/aa;->a(Lcom/twitter/app/common/list/af;)V

    .line 87
    return-object v0
.end method

.method public a(Landroid/view/View;Lcom/twitter/model/core/Tweet;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 32
    check-cast p2, Lcom/twitter/model/core/Tweet;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/TweetListFragment;->a(Landroid/view/View;Lcom/twitter/model/core/Tweet;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/widget/AbsListView;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 146
    invoke-super {p0, p1, p2}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->a(Landroid/widget/AbsListView;I)Z

    .line 147
    invoke-virtual {p0, p2}, Lcom/twitter/android/TweetListFragment;->o(I)V

    .line 149
    if-eq p2, v0, :cond_0

    if-nez p2, :cond_1

    .line 150
    :cond_0
    if-ne p2, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetListFragment;->e(Z)V

    .line 153
    :cond_1
    return v1

    :cond_2
    move v0, v1

    .line 150
    goto :goto_0
.end method

.method protected g()V
    .locals 4

    .prologue
    .line 158
    invoke-super {p0}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->g()V

    .line 160
    new-instance v0, Lvp;

    iget-object v1, p0, Lcom/twitter/android/TweetListFragment;->a_:Landroid/content/Context;

    .line 161
    invoke-virtual {p0}, Lcom/twitter/android/TweetListFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lvp;-><init>(Landroid/content/Context;J)V

    .line 162
    new-instance v1, Lcom/twitter/android/vu;

    invoke-direct {v1, p0}, Lcom/twitter/android/vu;-><init>(Lcom/twitter/android/TweetListFragment;)V

    invoke-virtual {v0, v1}, Lvp;->a(Lcom/twitter/internal/android/service/c;)Lcom/twitter/internal/android/service/AsyncOperation;

    .line 163
    iget-object v1, p0, Lcom/twitter/android/TweetListFragment;->a_:Landroid/content/Context;

    invoke-static {v1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 164
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    if-eqz p1, :cond_0

    .line 77
    const-string/jumbo v0, "state_delete_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    iput-object v0, p0, Lcom/twitter/android/TweetListFragment;->H:Lcom/twitter/model/core/Tweet;

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/TweetListFragment;->p()Lcom/twitter/app/common/list/w;

    move-result-object v0

    const-string/jumbo v1, "en_act"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/twitter/app/common/list/w;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/TweetListFragment;->M:Z

    .line 81
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 66
    iget-object v0, p0, Lcom/twitter/android/TweetListFragment;->H:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    .line 67
    const-string/jumbo v0, "state_delete_key"

    iget-object v1, p0, Lcom/twitter/android/TweetListFragment;->H:Lcom/twitter/model/core/Tweet;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 69
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    .line 92
    invoke-super {p0, p1, p2}, Lcom/twitter/android/widget/ScrollingHeaderListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/twitter/android/TweetListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 95
    invoke-virtual {p0}, Lcom/twitter/android/TweetListFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v6

    .line 96
    iget-boolean v0, p0, Lcom/twitter/android/TweetListFragment;->U:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/TweetListFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/twitter/android/TweetListFragment;->M:Z

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/twitter/android/TweetListFragment;->I:Lcom/twitter/android/sn;

    if-nez v0, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/twitter/android/TweetListFragment;->V()Lcom/twitter/android/sn;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetListFragment;->I:Lcom/twitter/android/sn;

    .line 100
    :cond_1
    new-instance v0, Lcom/twitter/android/tj;

    iget-object v2, p0, Lcom/twitter/android/TweetListFragment;->I:Lcom/twitter/android/sn;

    iget-object v3, v6, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    .line 101
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    .line 102
    invoke-virtual {p0}, Lcom/twitter/android/TweetListFragment;->W_()Z

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/tj;-><init>(Lcom/twitter/app/common/list/TwitterListFragment;Lciv;Landroid/widget/ListView;IZ)V

    iput-object v0, p0, Lcom/twitter/android/TweetListFragment;->J:Lcom/twitter/android/tj;

    .line 103
    iget-object v0, p0, Lcom/twitter/android/TweetListFragment;->J:Lcom/twitter/android/tj;

    invoke-virtual {v6, v0}, Lcom/twitter/app/common/list/aa;->a(Landroid/view/View$OnTouchListener;)V

    .line 106
    :cond_2
    iget-object v0, v6, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    instance-of v0, v0, Lcom/twitter/refresh/widget/RefreshableListView;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/twitter/android/TweetListFragment;->aG()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "timeline:list_layout_duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/twitter/android/TweetListFragment;->K:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timeline:list_layout_count:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/twitter/android/TweetListFragment;->K:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    sget-object v2, Laxz;->n:Laye;

    .line 110
    invoke-static {}, Layj;->b()Layj;

    move-result-object v3

    const/4 v4, 0x1

    .line 109
    invoke-static {v1, v2, v3, v4, v8}, Laxs;->a(Ljava/lang/String;Laye;Layj;ZI)Laxs;

    move-result-object v7

    .line 111
    invoke-static {}, Layj;->b()Layj;

    move-result-object v1

    .line 112
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    sget-object v4, Laxz;->n:Laye;

    move v5, v8

    .line 111
    invoke-static/range {v0 .. v5}, Laxu;->a(Ljava/lang/String;Layj;JLaye;I)Laxu;

    move-result-object v1

    .line 114
    invoke-virtual {v7}, Laxs;->i()V

    .line 115
    invoke-virtual {v1}, Laxu;->i()V

    .line 116
    iget-object v0, v6, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    check-cast v0, Lcom/twitter/refresh/widget/RefreshableListView;

    new-instance v2, Lcom/twitter/android/timeline/aa;

    invoke-direct {v2, v7, v1}, Lcom/twitter/android/timeline/aa;-><init>(Laxs;Laxu;)V

    invoke-virtual {v0, v2}, Lcom/twitter/refresh/widget/RefreshableListView;->setViewLayoutListener(Lcom/twitter/refresh/widget/l;)V

    .line 119
    :cond_3
    return-void
.end method
