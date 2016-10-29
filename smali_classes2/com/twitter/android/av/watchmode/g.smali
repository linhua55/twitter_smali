.class public Lcom/twitter/android/av/watchmode/g;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/av/watchmode/view/p;
.implements Lcom/twitter/android/kn;
.implements Lcom/twitter/app/common/di/g;
.implements Lcom/twitter/app/common/inject/d;
.implements Lcom/twitter/app/common/inject/l;
.implements Lcwb;


# instance fields
.field private final a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private final b:Lcom/twitter/library/av/playback/AVDataSource;

.field private final c:Landroid/content/Context;

.field private d:I

.field private final e:Lcom/twitter/android/vs;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/av/playback/AVDataSource;)V
    .locals 6

    .prologue
    .line 78
    new-instance v0, Lcom/twitter/android/vt;

    invoke-direct {v0}, Lcom/twitter/android/vt;-><init>()V

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 80
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    .line 79
    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/vt;->a(Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeAssociation;ILcom/twitter/library/scribe/TwitterScribeItem;Lcom/twitter/library/client/bk;)Lcom/twitter/android/vs;

    move-result-object v0

    .line 78
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/twitter/android/av/watchmode/g;-><init>(Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/av/playback/AVDataSource;Lcom/twitter/android/vs;)V

    .line 81
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/av/playback/AVDataSource;Lcom/twitter/android/vs;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 64
    iput v0, p0, Lcom/twitter/android/av/watchmode/g;->d:I

    .line 67
    iput-boolean v0, p0, Lcom/twitter/android/av/watchmode/g;->f:Z

    .line 68
    iput-boolean v0, p0, Lcom/twitter/android/av/watchmode/g;->g:Z

    .line 86
    iput-object p2, p0, Lcom/twitter/android/av/watchmode/g;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 87
    iput-object p3, p0, Lcom/twitter/android/av/watchmode/g;->b:Lcom/twitter/library/av/playback/AVDataSource;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/watchmode/g;->c:Landroid/content/Context;

    .line 89
    iput-object p4, p0, Lcom/twitter/android/av/watchmode/g;->e:Lcom/twitter/android/vs;

    .line 92
    const-string/jumbo v0, "impression"

    invoke-direct {p0, v0}, Lcom/twitter/android/av/watchmode/g;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 93
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/twitter/android/av/watchmode/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/twitter/android/av/watchmode/g;->b:Lcom/twitter/library/av/playback/AVDataSource;

    invoke-interface {v1}, Lcom/twitter/library/av/playback/AVDataSource;->c()Lcom/twitter/model/core/Tweet;

    move-result-object v6

    .line 99
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->d(J)Lcom/twitter/library/scribe/bo;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/av/watchmode/g;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 100
    invoke-virtual {v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a()Ljava/lang/String;

    move-result-object v1

    move-object v3, v2

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/library/scribe/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/bo;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/twitter/library/scribe/bo;->a()Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    .line 103
    if-eqz v6, :cond_0

    .line 104
    iget-object v1, p0, Lcom/twitter/android/av/watchmode/g;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/android/av/watchmode/g;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {v0, v1, v6, v3, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 107
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 138
    iget v0, p0, Lcom/twitter/android/av/watchmode/g;->d:I

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/av/watchmode/g;->f:Z

    if-nez v0, :cond_0

    .line 139
    iput-boolean v1, p0, Lcom/twitter/android/av/watchmode/g;->f:Z

    .line 140
    const-string/jumbo v0, "suggestions"

    const-string/jumbo v1, "show"

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/av/watchmode/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 142
    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 149
    iput p1, p0, Lcom/twitter/android/av/watchmode/g;->d:I

    .line 150
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 117
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "orientation_change_portrait"

    .line 119
    :goto_0
    invoke-direct {p0, v0}, Lcom/twitter/android/av/watchmode/g;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 120
    return-void

    .line 117
    :cond_0
    const-string/jumbo v0, "orientation_change_landscape"

    goto :goto_0
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 165
    if-eqz p2, :cond_0

    .line 166
    check-cast p2, Lcom/twitter/library/av/playback/AVDataSource;

    .line 167
    invoke-interface {p2}, Lcom/twitter/library/av/playback/AVDataSource;->c()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_0

    .line 169
    iget-object v1, p0, Lcom/twitter/android/av/watchmode/g;->e:Lcom/twitter/android/vs;

    invoke-virtual {v1, v0, p3}, Lcom/twitter/android/vs;->b(Lcom/twitter/model/core/Tweet;Landroid/os/Bundle;)V

    .line 172
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/app/common/di/InjectionScope;)V
    .locals 2

    .prologue
    .line 154
    sget-object v0, Lcom/twitter/app/common/di/InjectionScope;->c:Lcom/twitter/app/common/di/InjectionScope;

    if-ne p1, v0, :cond_0

    .line 156
    iget v0, p0, Lcom/twitter/android/av/watchmode/g;->d:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/av/watchmode/g;->g:Z

    if-nez v0, :cond_0

    .line 157
    const-string/jumbo v0, "abandoned"

    invoke-direct {p0, v0}, Lcom/twitter/android/av/watchmode/g;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 160
    :cond_0
    return-void
.end method

.method public aL_()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public aM_()V
    .locals 4

    .prologue
    .line 194
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/g;->e:Lcom/twitter/android/vs;

    .line 195
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    const-string/jumbo v1, "watch_mode:stream::results"

    .line 194
    invoke-virtual {v0, v2, v3, v1}, Lcom/twitter/android/vs;->a(JLjava/lang/String;)V

    .line 196
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 200
    const-string/jumbo v0, "expand_button"

    const-string/jumbo v1, "click"

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/av/watchmode/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 201
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 176
    const-string/jumbo v0, "swipe_to_dismiss"

    invoke-direct {p0, v0}, Lcom/twitter/android/av/watchmode/g;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 177
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 205
    const-string/jumbo v0, "collapse_button"

    const-string/jumbo v1, "click"

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/av/watchmode/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 206
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 125
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 126
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 127
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/av/watchmode/g;->g:Z

    .line 131
    :cond_0
    return-void
.end method
