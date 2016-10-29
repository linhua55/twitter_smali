.class public Lcom/twitter/android/av/ViewMoreVideoFragment;
.super Lcom/twitter/app/common/list/TwitterListFragment;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/app/common/list/TwitterListFragment",
        "<",
        "Lcom/twitter/android/timeline/bp;",
        "Lcvt",
        "<",
        "Lcom/twitter/android/timeline/bp;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:J

.field private b:Lcom/twitter/model/core/Tweet;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/twitter/app/common/list/TwitterListFragment;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/av/ViewMoreVideoFragment;->c:Z

    return-void
.end method

.method private a(I)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 99
    if-ne p1, v5, :cond_0

    const/4 v5, 0x1

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/av/ViewMoreVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 102
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    iget-wide v2, p0, Lcom/twitter/android/av/ViewMoreVideoFragment;->a:J

    iget-object v4, p0, Lcom/twitter/android/av/ViewMoreVideoFragment;->b:Lcom/twitter/model/core/Tweet;

    .line 101
    invoke-static/range {v0 .. v5}, Lcom/twitter/android/av/bx;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcom/twitter/model/core/Tweet;I)Lcom/twitter/library/api/search/d;

    move-result-object v0

    .line 104
    invoke-virtual {p0, v0, p1, p1}, Lcom/twitter/android/av/ViewMoreVideoFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 105
    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/twitter/android/vw;
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    const-string/jumbo v1, "video_timeline"

    .line 161
    const-string/jumbo v1, ""

    .line 162
    invoke-virtual {p0}, Lcom/twitter/android/av/ViewMoreVideoFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v1

    .line 163
    const-string/jumbo v2, "avatar"

    const-string/jumbo v3, "profile_click"

    invoke-static {v1, p1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "video_timeline"

    aput-object v4, v3, v7

    const-string/jumbo v4, ""

    aput-object v4, v3, v8

    aput-object p1, v3, v9

    const-string/jumbo v4, "link"

    aput-object v4, v3, v10

    const-string/jumbo v4, "open_link"

    aput-object v4, v3, v11

    invoke-static {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "video_timeline"

    aput-object v5, v4, v7

    const-string/jumbo v5, ""

    aput-object v5, v4, v8

    aput-object p1, v4, v9

    const-string/jumbo v5, "platform_photo_card"

    aput-object v5, v4, v10

    const-string/jumbo v5, "click"

    aput-object v5, v4, v11

    invoke-static {v0, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 169
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "video_timeline"

    aput-object v6, v5, v7

    const-string/jumbo v6, ""

    aput-object v6, v5, v8

    aput-object p1, v5, v9

    const-string/jumbo v6, "platform_player_card"

    aput-object v6, v5, v10

    const-string/jumbo v6, "click"

    aput-object v6, v5, v11

    invoke-static {v0, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    new-instance v5, Lcom/twitter/android/vw;

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v0}, Lciw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lciw;

    move-result-object v0

    invoke-direct {v5, p0, v1, v6, v0}, Lcom/twitter/android/vw;-><init>(Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Lciw;)V

    return-object v5
.end method


# virtual methods
.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6

    .prologue
    .line 130
    invoke-super/range {p0 .. p5}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 131
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/vy;

    .line 132
    iget-object v0, v0, Lcom/twitter/android/vy;->d:Lcom/twitter/library/widget/TweetView;

    invoke-virtual {v0}, Lcom/twitter/library/widget/TweetView;->getTweet()Lcom/twitter/model/core/Tweet;

    move-result-object v1

    .line 133
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/av/ViewMoreVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 134
    invoke-virtual {p0}, Lcom/twitter/android/av/ViewMoreVideoFragment;->aM()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/twitter/android/RootTweetActivity;

    :goto_0
    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v0, "association"

    .line 136
    invoke-virtual {p0}, Lcom/twitter/android/av/ViewMoreVideoFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    iget-wide v2, v1, Lcom/twitter/model/core/Tweet;->C:J

    .line 138
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    .line 137
    invoke-static {v2, v3, v4, v5}, Lcom/twitter/library/provider/cn;->b(JJ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 140
    invoke-virtual {p0, v0}, Lcom/twitter/android/av/ViewMoreVideoFragment;->startActivity(Landroid/content/Intent;)V

    .line 141
    return-void

    .line 134
    :cond_0
    const-class v0, Lcom/twitter/android/TweetActivity;

    goto :goto_0
.end method

.method protected a(Lcom/twitter/library/service/x;II)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 120
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 121
    if-ne p2, v0, :cond_0

    .line 122
    check-cast p1, Lcom/twitter/library/api/search/d;

    invoke-virtual {p1}, Lcom/twitter/library/api/search/d;->h()I

    move-result v2

    if-lez v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/av/ViewMoreVideoFragment;->c:Z

    .line 125
    :cond_0
    invoke-virtual {p0, v1}, Lcom/twitter/android/av/ViewMoreVideoFragment;->a(Z)V

    .line 126
    return-void

    :cond_1
    move v0, v1

    .line 122
    goto :goto_0
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method protected g()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/twitter/android/av/ViewMoreVideoFragment;->a(I)V

    .line 96
    return-void
.end method

.method protected h()V
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/twitter/android/av/ViewMoreVideoFragment;->aD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/twitter/android/av/ViewMoreVideoFragment;->aQ()Landroid/database/Cursor;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Lcom/twitter/android/av/ViewMoreVideoFragment;->aG()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 112
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/av/ViewMoreVideoFragment;->c:Z

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/android/av/ViewMoreVideoFragment;->a(I)V

    .line 116
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/twitter/android/av/ViewMoreVideoFragment;->p()Lcom/twitter/app/common/list/w;

    move-result-object v1

    .line 68
    const-string/jumbo v0, "association"

    invoke-virtual {v1, v0}, Lcom/twitter/app/common/list/w;->h(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/ViewMoreVideoFragment;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 69
    const-string/jumbo v0, "search_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/twitter/app/common/list/w;->a(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/android/av/ViewMoreVideoFragment;->a:J

    .line 70
    const-string/jumbo v0, "tw"

    invoke-virtual {v1, v0}, Lcom/twitter/app/common/list/w;->h(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    iput-object v0, p0, Lcom/twitter/android/av/ViewMoreVideoFragment;->b:Lcom/twitter/model/core/Tweet;

    .line 71
    invoke-virtual {p0}, Lcom/twitter/android/av/ViewMoreVideoFragment;->aZ()Lcom/twitter/app/common/base/TwitterFragmentActivity;

    move-result-object v1

    .line 72
    invoke-virtual {p0}, Lcom/twitter/android/av/ViewMoreVideoFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v6

    new-instance v0, Lcom/twitter/android/vz;

    const/4 v2, 0x1

    const-string/jumbo v3, ""

    .line 73
    invoke-direct {p0, v3}, Lcom/twitter/android/av/ViewMoreVideoFragment;->b(Ljava/lang/String;)Lcom/twitter/android/vw;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/av/ViewMoreVideoFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/vz;-><init>(Lcom/twitter/app/common/base/TwitterFragmentActivity;ZLcom/twitter/library/view/aa;Lcom/twitter/library/util/FriendshipCache;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 72
    invoke-virtual {v6, v0}, Lcom/twitter/app/common/list/aa;->a(Lcvt;)V

    .line 74
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->c()V

    .line 75
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    if-eqz p1, :cond_0

    .line 54
    const-string/jumbo v0, "more_old_data_available"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/av/ViewMoreVideoFragment;->c:Z

    .line 56
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->onDestroyView()V

    .line 91
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 61
    const-string/jumbo v0, "more_old_data_available"

    iget-boolean v1, p0, Lcom/twitter/android/av/ViewMoreVideoFragment;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 62
    return-void
.end method

.method protected v_()Landroid/support/v4/content/Loader;
    .locals 10
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
    .line 145
    new-instance v0, Lcom/twitter/android/bt;

    invoke-virtual {p0}, Lcom/twitter/android/av/ViewMoreVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/twitter/library/provider/df;->a:Landroid/net/Uri;

    .line 147
    invoke-virtual {p0}, Lcom/twitter/android/av/ViewMoreVideoFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    .line 146
    invoke-static {v2, v4, v5}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcha;->a:[Ljava/lang/String;

    const-string/jumbo v4, "search_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-wide v8, p0, Lcom/twitter/android/av/ViewMoreVideoFragment;->a:J

    .line 150
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const-string/jumbo v6, "type_id ASC, _id ASC"

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-object v0
.end method
