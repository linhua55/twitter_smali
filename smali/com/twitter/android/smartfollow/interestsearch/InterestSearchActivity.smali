.class public Lcom/twitter/android/smartfollow/interestsearch/InterestSearchActivity;
.super Lcom/twitter/app/common/base/TwitterFragmentActivity;
.source "Twttr"


# instance fields
.field private a:Lcom/twitter/android/smartfollow/interestsearch/InterestSearchFragment;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 128
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/smartfollow/interestsearch/InterestSearchActivity;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "smart_follow_flow"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "interest_picker_search"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p1, v1, v2

    .line 129
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 131
    if-eqz p2, :cond_0

    .line 132
    iget-object v1, p0, Lcom/twitter/android/smartfollow/interestsearch/InterestSearchActivity;->a:Lcom/twitter/android/smartfollow/interestsearch/InterestSearchFragment;

    invoke-virtual {v1}, Lcom/twitter/android/smartfollow/interestsearch/InterestSearchFragment;->c()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/interestpicker/f;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/util/Collection;)Lcom/twitter/library/scribe/ScribeLog;

    .line 135
    :cond_0
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 136
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/interestsearch/InterestSearchActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/twitter/util/ui/r;->b(Landroid/content/Context;Landroid/view/View;Z)V

    .line 109
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->c(Z)V

    .line 46
    invoke-virtual {p2, v1}, Lcom/twitter/app/common/base/y;->b(Z)V

    .line 47
    invoke-virtual {p2, v1}, Lcom/twitter/app/common/base/y;->a(Z)V

    .line 48
    const v0, 0x7f04016c

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->d(I)V

    .line 49
    return-object p2
.end method

.method public a(Lcyd;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 90
    invoke-interface {p1}, Lcyd;->a()I

    move-result v1

    .line 91
    const v2, 0x7f1307d7

    if-ne v1, v2, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/twitter/android/smartfollow/interestsearch/InterestSearchActivity;->c()V

    .line 93
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 94
    const-string/jumbo v2, "extra_search_terms"

    iget-object v3, p0, Lcom/twitter/android/smartfollow/interestsearch/InterestSearchActivity;->a:Lcom/twitter/android/smartfollow/interestsearch/InterestSearchFragment;

    invoke-virtual {v3}, Lcom/twitter/android/smartfollow/interestsearch/InterestSearchFragment;->c()Ljava/util/List;

    move-result-object v3

    sget-object v4, Lcom/twitter/android/interestpicker/aw;->e:Lcom/twitter/android/interestpicker/az;

    .line 95
    invoke-static {v4}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v4

    .line 94
    invoke-static {v1, v2, v3, v4}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/content/Intent;

    .line 96
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/twitter/android/smartfollow/interestsearch/InterestSearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 97
    const-string/jumbo v1, "done"

    invoke-direct {p0, v1, v0}, Lcom/twitter/android/smartfollow/interestsearch/InterestSearchActivity;->a(Ljava/lang/String;Z)V

    .line 98
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/interestsearch/InterestSearchActivity;->finish()V

    .line 101
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Lcyd;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Lcyg;)Z
    .locals 1

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Lcyg;)Z

    .line 55
    const v0, 0x7f140010

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V
    .locals 5

    .prologue
    const v4, 0x7f130143

    .line 62
    invoke-super {p0, p1, p2}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V

    .line 63
    const v0, 0x7f0a0434

    invoke-virtual {p0, v0}, Lcom/twitter/android/smartfollow/interestsearch/InterestSearchActivity;->setTitle(I)V

    .line 65
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/interestsearch/InterestSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_parent_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 66
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/interestsearch/InterestSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_scribe_page"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/smartfollow/interestsearch/InterestSearchActivity;->b:Ljava/lang/String;

    .line 68
    if-nez p1, :cond_0

    .line 69
    new-instance v0, Lcom/twitter/android/smartfollow/interestsearch/InterestSearchFragment;

    invoke-direct {v0}, Lcom/twitter/android/smartfollow/interestsearch/InterestSearchFragment;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/smartfollow/interestsearch/InterestSearchActivity;->a:Lcom/twitter/android/smartfollow/interestsearch/InterestSearchFragment;

    .line 70
    new-instance v0, Lcom/twitter/android/smartfollow/interestsearch/f;

    invoke-direct {v0}, Lcom/twitter/android/smartfollow/interestsearch/f;-><init>()V

    .line 71
    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/smartfollow/interestsearch/f;->a(J)Lcom/twitter/android/smartfollow/interestsearch/f;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/smartfollow/interestsearch/InterestSearchActivity;->b:Ljava/lang/String;

    .line 72
    invoke-virtual {v0, v1}, Lcom/twitter/android/smartfollow/interestsearch/f;->a(Ljava/lang/String;)Lcom/twitter/android/smartfollow/interestsearch/f;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/twitter/android/smartfollow/interestsearch/f;->a()Lcom/twitter/android/smartfollow/interestsearch/e;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/twitter/android/smartfollow/interestsearch/InterestSearchActivity;->a:Lcom/twitter/android/smartfollow/interestsearch/InterestSearchFragment;

    invoke-virtual {v1, v0}, Lcom/twitter/android/smartfollow/interestsearch/InterestSearchFragment;->a(Lcom/twitter/app/common/base/f;)V

    .line 76
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/interestsearch/InterestSearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/smartfollow/interestsearch/InterestSearchActivity;->a:Lcom/twitter/android/smartfollow/interestsearch/InterestSearchFragment;

    .line 78
    invoke-virtual {v0, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 84
    :goto_0
    const-string/jumbo v0, "impression"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/smartfollow/interestsearch/InterestSearchActivity;->a(Ljava/lang/String;Z)V

    .line 85
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/interestsearch/InterestSearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/smartfollow/interestsearch/InterestSearchFragment;

    iput-object v0, p0, Lcom/twitter/android/smartfollow/interestsearch/InterestSearchActivity;->a:Lcom/twitter/android/smartfollow/interestsearch/InterestSearchFragment;

    goto :goto_0
.end method

.method public o()V
    .locals 2

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/twitter/android/smartfollow/interestsearch/InterestSearchActivity;->c()V

    .line 123
    const-string/jumbo v0, "back"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/smartfollow/interestsearch/InterestSearchActivity;->a(Ljava/lang/String;Z)V

    .line 124
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onBackPressed()V

    .line 125
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/twitter/android/smartfollow/interestsearch/InterestSearchActivity;->c()V

    .line 115
    const-string/jumbo v0, "back"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/smartfollow/interestsearch/InterestSearchActivity;->a(Ljava/lang/String;Z)V

    .line 116
    invoke-super {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->onBackPressed()V

    .line 117
    return-void
.end method
