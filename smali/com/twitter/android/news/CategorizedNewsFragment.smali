.class public Lcom/twitter/android/news/CategorizedNewsFragment;
.super Lcom/twitter/app/common/list/TwitterListFragment;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/app/common/list/TwitterListFragment",
        "<",
        "Landroid/database/Cursor;",
        "Lcom/twitter/android/news/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/twitter/android/metrics/b;

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/twitter/app/common/list/TwitterListFragment;-><init>()V

    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 6

    .prologue
    .line 196
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(I)Lcom/twitter/util/collection/r;

    move-result-object v0

    .line 198
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/news/CategorizedNewsFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 202
    new-instance v2, Lcom/twitter/library/client/l;

    invoke-virtual {p0}, Lcom/twitter/android/news/CategorizedNewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 203
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    const-string/jumbo v1, "news"

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    .line 204
    invoke-virtual {v2}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v1

    const-string/jumbo v2, "latestTopNewsIds"

    invoke-virtual {v0}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/twitter/util/serialization/i;->j:Lcom/twitter/util/serialization/ah;

    .line 205
    invoke-static {v3}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v3

    .line 204
    invoke-virtual {v1, v2, v0, v3}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/library/client/n;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    .line 207
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;JLjava/lang/String;)V
    .locals 4

    .prologue
    .line 161
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/news/CategorizedNewsFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 162
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 163
    invoke-virtual {v0, p2, p3}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(J)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 164
    invoke-virtual {v0, p4}, Lcom/twitter/library/scribe/TwitterScribeLog;->f(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 161
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 165
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 157
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/news/CategorizedNewsFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 158
    return-void
.end method


# virtual methods
.method public N()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->N()V

    .line 110
    const-string/jumbo v0, "news:headline:::pull_to_refresh"

    invoke-direct {p0, v0}, Lcom/twitter/android/news/CategorizedNewsFragment;->b(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5

    .prologue
    .line 169
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 170
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 171
    new-instance v2, Lcom/twitter/app/common/base/z;

    invoke-direct {v2}, Lcom/twitter/app/common/base/z;-><init>()V

    const/4 v3, 0x1

    .line 172
    invoke-virtual {v2, v3}, Lcom/twitter/app/common/base/z;->d(Z)Lcom/twitter/app/common/base/z;

    move-result-object v2

    .line 173
    invoke-virtual {p0}, Lcom/twitter/android/news/CategorizedNewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/twitter/android/news/NewsDetailActivity;

    invoke-virtual {v2, v3, v4}, Lcom/twitter/app/common/base/z;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "news_id"

    .line 174
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "tweet_count"

    const/16 v4, 0x9

    .line 175
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 176
    invoke-virtual {p0, v0}, Lcom/twitter/android/news/CategorizedNewsFragment;->startActivity(Landroid/content/Intent;)V

    .line 177
    const-string/jumbo v0, "news:headline::details:click"

    add-int/lit8 v2, p3, -0x1

    int-to-long v2, v2

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/twitter/android/news/CategorizedNewsFragment;->a(Ljava/lang/String;JLjava/lang/String;)V

    .line 178
    return-void
.end method

.method protected a(Lcmf;)V
    .locals 2
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
    .line 129
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcmf;)V

    .line 130
    invoke-virtual {p0}, Lcom/twitter/android/news/CategorizedNewsFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/news/a;

    invoke-virtual {v0}, Lcom/twitter/android/news/a;->g()Landroid/database/Cursor;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/twitter/android/news/CategorizedNewsFragment;->c:Lcom/twitter/android/metrics/b;

    invoke-virtual {v1}, Lcom/twitter/android/metrics/b;->aU_()V

    .line 133
    iget-boolean v1, p0, Lcom/twitter/android/news/CategorizedNewsFragment;->e:Z

    if-nez v1, :cond_1

    .line 134
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/news/CategorizedNewsFragment;->a(I)Z

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/news/CategorizedNewsFragment;->e:Z

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget v1, p0, Lcom/twitter/android/news/CategorizedNewsFragment;->d:I

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 137
    invoke-direct {p0, v0}, Lcom/twitter/android/news/CategorizedNewsFragment;->a(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method protected a(Lcom/twitter/app/common/list/aj;)V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcom/twitter/app/common/list/aj;)V

    .line 61
    const v0, 0x7f040060

    invoke-virtual {p1, v0}, Lcom/twitter/app/common/list/aj;->d(I)Lcom/twitter/app/common/list/aj;

    .line 62
    return-void
.end method

.method protected a(Lcom/twitter/library/service/x;II)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 182
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 183
    invoke-virtual {p0}, Lcom/twitter/android/news/CategorizedNewsFragment;->t_()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/twitter/android/news/CategorizedNewsFragment;->c:Lcom/twitter/android/metrics/b;

    invoke-virtual {v0}, Lcom/twitter/android/metrics/b;->g()V

    .line 185
    iget-object v0, p0, Lcom/twitter/android/news/CategorizedNewsFragment;->c:Lcom/twitter/android/metrics/b;

    invoke-virtual {v0}, Lcom/twitter/android/metrics/b;->j()V

    .line 190
    :goto_0
    if-ne p2, v2, :cond_0

    invoke-virtual {p1}, Lcom/twitter/library/service/x;->U()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/twitter/android/news/CategorizedNewsFragment;->a_:Landroid/content/Context;

    const v1, 0x7f0a059b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 193
    :cond_0
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/news/CategorizedNewsFragment;->c:Lcom/twitter/android/metrics/b;

    invoke-virtual {v0}, Lcom/twitter/android/metrics/b;->k()V

    goto :goto_0
.end method

.method protected a(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 142
    invoke-virtual {p0, p1}, Lcom/twitter/android/news/CategorizedNewsFragment;->a_(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    const/4 v0, 0x0

    .line 153
    :goto_0
    return v0

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/news/CategorizedNewsFragment;->c:Lcom/twitter/android/metrics/b;

    invoke-virtual {v1}, Lcom/twitter/android/metrics/b;->f()V

    .line 146
    new-instance v1, Lbql;

    invoke-virtual {p0}, Lcom/twitter/android/news/CategorizedNewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twitter/android/news/CategorizedNewsFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lbql;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    iget-object v2, p0, Lcom/twitter/android/news/CategorizedNewsFragment;->a:Ljava/lang/String;

    .line 147
    invoke-virtual {v1, v2}, Lbql;->a(Ljava/lang/String;)Lbql;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/news/CategorizedNewsFragment;->b:Ljava/lang/String;

    .line 148
    invoke-virtual {v1, v2}, Lbql;->b(Ljava/lang/String;)Lbql;

    move-result-object v1

    iget v2, p0, Lcom/twitter/android/news/CategorizedNewsFragment;->d:I

    int-to-long v2, v2

    .line 149
    invoke-virtual {v1, v2, v3}, Lbql;->a(J)Lbql;

    move-result-object v1

    const/16 v2, 0x1e

    .line 150
    invoke-virtual {v1, v2}, Lbql;->a(I)Lbql;

    move-result-object v1

    .line 146
    invoke-virtual {p0, v1, v0, p1}, Lcom/twitter/android/news/CategorizedNewsFragment;->c(Lcom/twitter/library/service/x;II)Z

    goto :goto_0
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->d()V

    .line 104
    const-string/jumbo v0, "news:headline:::impression"

    invoke-direct {p0, v0}, Lcom/twitter/android/news/CategorizedNewsFragment;->b(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method protected g()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/twitter/android/news/CategorizedNewsFragment;->a(I)Z

    .line 125
    return-void
.end method

.method protected h()V
    .locals 1

    .prologue
    .line 212
    const-string/jumbo v0, "news:headline::last:impression"

    invoke-direct {p0, v0}, Lcom/twitter/android/news/CategorizedNewsFragment;->b(Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method protected l()V
    .locals 5

    .prologue
    .line 71
    new-instance v0, Lcom/twitter/android/metrics/b;

    const-string/jumbo v1, "news:timeline:load"

    const-string/jumbo v2, "news:timeline:load"

    sget-object v3, Laxz;->m:Laye;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/metrics/b;-><init>(Ljava/lang/String;Ljava/lang/String;Laye;Layf;)V

    iput-object v0, p0, Lcom/twitter/android/news/CategorizedNewsFragment;->c:Lcom/twitter/android/metrics/b;

    .line 74
    iget-object v0, p0, Lcom/twitter/android/news/CategorizedNewsFragment;->c:Lcom/twitter/android/metrics/b;

    invoke-virtual {v0}, Lcom/twitter/android/metrics/b;->i()V

    .line 75
    return-void
.end method

.method public m()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/twitter/android/news/CategorizedNewsFragment;->d:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/twitter/android/news/CategorizedNewsFragment;->p()Lcom/twitter/app/common/list/w;

    move-result-object v0

    const-string/jumbo v1, "topicId"

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/w;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/news/CategorizedNewsFragment;->d:I

    .line 84
    if-eqz p1, :cond_0

    .line 85
    const-string/jumbo v0, "forceReload"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/news/CategorizedNewsFragment;->e:Z

    .line 88
    :cond_0
    invoke-static {}, Lcfl;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/news/CategorizedNewsFragment;->a:Ljava/lang/String;

    .line 89
    invoke-static {}, Lcfl;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/news/CategorizedNewsFragment;->b:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/twitter/android/news/CategorizedNewsFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/news/a;

    invoke-virtual {p0}, Lcom/twitter/android/news/CategorizedNewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/twitter/android/news/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/aa;->a(Lcvt;)V

    .line 92
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/twitter/android/news/CategorizedNewsFragment;->l()V

    .line 68
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 97
    const-string/jumbo v0, "forceReload"

    iget-boolean v1, p0, Lcom/twitter/android/news/CategorizedNewsFragment;->e:Z

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
    .line 115
    iget-object v0, p0, Lcom/twitter/android/news/CategorizedNewsFragment;->c:Lcom/twitter/android/metrics/b;

    invoke-virtual {v0}, Lcom/twitter/android/metrics/b;->aT_()V

    .line 116
    sget-object v0, Lcom/twitter/library/provider/da;->a:Landroid/net/Uri;

    iget v1, p0, Lcom/twitter/android/news/CategorizedNewsFragment;->d:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Lcom/twitter/android/news/CategorizedNewsFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 116
    invoke-static {v0, v2, v3}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 118
    new-instance v0, Lcom/twitter/android/bt;

    invoke-virtual {p0}, Lcom/twitter/android/news/CategorizedNewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcgu;->a:[Ljava/lang/String;

    const-string/jumbo v4, "country=? AND language=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/twitter/android/news/CategorizedNewsFragment;->a:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/twitter/android/news/CategorizedNewsFragment;->b:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
