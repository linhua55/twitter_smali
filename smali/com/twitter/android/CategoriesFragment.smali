.class public Lcom/twitter/android/CategoriesFragment;
.super Lcom/twitter/app/common/list/TwitterListFragment;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/qt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/app/common/list/TwitterListFragment",
        "<",
        "Landroid/database/Cursor;",
        "Lbkj",
        "<",
        "Landroid/database/Cursor;",
        ">;>;",
        "Lcom/twitter/android/qt;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Landroid/content/SharedPreferences;

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/twitter/app/common/list/TwitterListFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/CategoriesFragment;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/android/CategoriesFragment;->e:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/CategoriesFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/android/CategoriesFragment;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/CategoriesFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/android/CategoriesFragment;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method private n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/twitter/android/CategoriesFragment;->a:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "welcome"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "interests"

    goto :goto_0
.end method

.method private o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/twitter/android/CategoriesFragment;->a:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "category"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private t()V
    .locals 4

    .prologue
    .line 262
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/CategoriesFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "interests::::impression"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 263
    return-void
.end method

.method private u()V
    .locals 1

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/twitter/android/CategoriesFragment;->v()V

    .line 267
    invoke-direct {p0}, Lcom/twitter/android/CategoriesFragment;->w()V

    .line 268
    iget-object v0, p0, Lcom/twitter/android/CategoriesFragment;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 269
    return-void
.end method

.method private v()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 273
    iget-object v0, p0, Lcom/twitter/android/CategoriesFragment;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/CategoriesFragment;->aa:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 275
    invoke-direct {p0}, Lcom/twitter/android/CategoriesFragment;->n()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/twitter/android/CategoriesFragment;->o()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v4, v1, v2

    const/4 v2, 0x3

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "results"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/CategoriesFragment;->f:Ljava/util/ArrayList;

    .line 276
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/util/List;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 274
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 277
    iget-object v0, p0, Lcom/twitter/android/CategoriesFragment;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 279
    :cond_0
    return-void
.end method

.method private w()V
    .locals 4

    .prologue
    .line 284
    iget-object v0, p0, Lcom/twitter/android/CategoriesFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/CategoriesFragment;->aa:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 286
    invoke-direct {p0}, Lcom/twitter/android/CategoriesFragment;->n()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/twitter/android/CategoriesFragment;->o()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "user"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "results"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/CategoriesFragment;->g:Ljava/util/ArrayList;

    .line 287
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/util/List;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 285
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 288
    iget-object v0, p0, Lcom/twitter/android/CategoriesFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 290
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->a()V

    .line 99
    invoke-virtual {p0}, Lcom/twitter/android/CategoriesFragment;->ag_()V

    .line 101
    iget-boolean v0, p0, Lcom/twitter/android/CategoriesFragment;->c:Z

    if-nez v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/twitter/android/CategoriesFragment;->t()V

    .line 104
    :cond_0
    return-void
.end method

.method protected a(I)V
    .locals 6

    .prologue
    .line 121
    new-instance v0, Lcom/twitter/library/api/j;

    iget-object v1, p0, Lcom/twitter/android/CategoriesFragment;->a_:Landroid/content/Context;

    .line 122
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    iget-wide v4, p0, Lcom/twitter/android/CategoriesFragment;->aa:J

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/twitter/library/api/j;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;J)V

    const/4 v1, 0x1

    .line 121
    invoke-virtual {p0, v0, v1, p1}, Lcom/twitter/android/CategoriesFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 123
    return-void
.end method

.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 155
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 156
    new-instance v1, Lcom/twitter/app/users/q;

    invoke-direct {v1}, Lcom/twitter/app/users/q;-><init>()V

    const/4 v2, 0x2

    .line 157
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/app/users/q;->a(Ljava/lang/String;)Lcom/twitter/app/users/q;

    move-result-object v1

    .line 158
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/app/users/q;->b(Ljava/lang/String;)Lcom/twitter/app/users/q;

    move-result-object v0

    const/4 v1, 0x6

    .line 159
    invoke-virtual {v0, v1}, Lcom/twitter/app/users/q;->a(I)Lcom/twitter/app/users/q;

    move-result-object v0

    .line 160
    invoke-virtual {v0, v3}, Lcom/twitter/app/users/q;->a(Z)Lcom/twitter/app/users/q;

    move-result-object v0

    .line 161
    invoke-virtual {v0, p3}, Lcom/twitter/app/users/q;->b(I)Lcom/twitter/app/users/q;

    move-result-object v0

    .line 162
    invoke-virtual {v0, v3}, Lcom/twitter/app/users/q;->b(Z)Lcom/twitter/app/users/q;

    move-result-object v0

    .line 163
    invoke-virtual {v0, v3}, Lcom/twitter/app/users/q;->c(Z)Lcom/twitter/app/users/q;

    move-result-object v0

    .line 164
    invoke-virtual {p0}, Lcom/twitter/android/CategoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/users/q;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 156
    invoke-virtual {p0, v0}, Lcom/twitter/android/CategoriesFragment;->startActivity(Landroid/content/Intent;)V

    .line 165
    return-void
.end method

.method protected a(Lcom/twitter/library/service/x;II)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 180
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 181
    if-ne p2, v0, :cond_0

    .line 182
    iput-boolean v0, p0, Lcom/twitter/android/CategoriesFragment;->b:Z

    .line 184
    :cond_0
    return-void
.end method

.method protected ag_()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 127
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->ag_()V

    .line 128
    iget-object v0, p0, Lcom/twitter/android/CategoriesFragment;->d:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "loc"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/CategoriesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0, v3}, Lcom/twitter/android/CategoriesFragment;->a(I)V

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/CategoriesFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lbkj;

    invoke-virtual {v0}, Lbkj;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {p0, v3}, Lcom/twitter/android/CategoriesFragment;->a(I)V

    .line 136
    :cond_1
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/twitter/android/CategoriesFragment;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 148
    const-string/jumbo v1, "loc"

    invoke-virtual {p0}, Lcom/twitter/android/CategoriesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 149
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 150
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->e()V

    .line 151
    return-void
.end method

.method protected g()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->g()V

    .line 141
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/CategoriesFragment;->a(I)V

    .line 142
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/CategoriesFragment;->c:Z

    .line 170
    invoke-direct {p0}, Lcom/twitter/android/CategoriesFragment;->t()V

    .line 171
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/CategoriesFragment;->c:Z

    .line 176
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/twitter/android/CategoriesFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/bg;

    invoke-virtual {p0}, Lcom/twitter/android/CategoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/twitter/android/bg;-><init>(Lcom/twitter/android/CategoriesFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/aa;->a(Lcvt;)V

    .line 88
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 62
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/twitter/android/CategoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/CategoriesFragment;->d:Landroid/content/SharedPreferences;

    .line 65
    invoke-virtual {p0}, Lcom/twitter/android/CategoriesFragment;->p()Lcom/twitter/app/common/list/w;

    move-result-object v0

    .line 66
    const-string/jumbo v1, "onboarding"

    invoke-virtual {v0, v1, v4}, Lcom/twitter/app/common/list/w;->a(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/CategoriesFragment;->a:Z

    .line 67
    const-string/jumbo v1, "is_hidden"

    invoke-virtual {v0, v1, v4}, Lcom/twitter/app/common/list/w;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/CategoriesFragment;->c:Z

    .line 69
    if-nez p1, :cond_1

    .line 70
    iget-boolean v0, p0, Lcom/twitter/android/CategoriesFragment;->a:Z

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/CategoriesFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Lcom/twitter/android/CategoriesFragment;->n()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/twitter/android/CategoriesFragment;->o()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v5, v1, v2

    const/4 v2, 0x3

    aput-object v5, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "impression"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 71
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 74
    :cond_0
    iput-boolean v4, p0, Lcom/twitter/android/CategoriesFragment;->b:Z

    .line 79
    :goto_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/CategoriesFragment;->e:Ljava/util/Set;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/CategoriesFragment;->f:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/CategoriesFragment;->g:Ljava/util/ArrayList;

    .line 82
    return-void

    .line 76
    :cond_1
    const-string/jumbo v0, "state_fetched"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/CategoriesFragment;->b:Z

    .line 77
    const-string/jumbo v0, "is_hidden"

    iget-boolean v1, p0, Lcom/twitter/android/CategoriesFragment;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/CategoriesFragment;->c:Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 109
    const-string/jumbo v0, "state_fetched"

    iget-boolean v1, p0, Lcom/twitter/android/CategoriesFragment;->b:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 110
    const-string/jumbo v0, "is_hidden"

    iget-boolean v1, p0, Lcom/twitter/android/CategoriesFragment;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 111
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/twitter/android/CategoriesFragment;->u()V

    .line 93
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->onStop()V

    .line 94
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

    .line 115
    new-instance v0, Lcom/twitter/android/bt;

    invoke-virtual {p0}, Lcom/twitter/android/CategoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/twitter/library/provider/cs;->a:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/twitter/android/CategoriesFragment;->aa:J

    invoke-static {v2, v6, v7}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcgm;->a:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
