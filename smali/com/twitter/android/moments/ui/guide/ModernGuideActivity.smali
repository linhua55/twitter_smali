.class public Lcom/twitter/android/moments/ui/guide/ModernGuideActivity;
.super Lcom/twitter/android/ListFragmentActivity;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/twitter/android/ListFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;Lcom/twitter/app/common/base/y;)Lcom/twitter/android/ic;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 57
    new-instance v0, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;

    invoke-direct {v0}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;-><init>()V

    .line 58
    const-string/jumbo v1, "guide_type"

    .line 59
    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 60
    const-string/jumbo v2, "guide_category_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    const-string/jumbo v3, "guide_category_name"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    const-string/jumbo v4, "show_category_pills"

    .line 63
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 64
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 65
    new-instance v5, Lcom/twitter/android/moments/ui/guide/au;

    invoke-direct {v5}, Lcom/twitter/android/moments/ui/guide/au;-><init>()V

    .line 67
    invoke-virtual {v5, v2, v3}, Lcom/twitter/android/moments/ui/guide/au;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/android/moments/ui/guide/au;

    move-result-object v2

    .line 68
    invoke-virtual {v2, v4}, Lcom/twitter/android/moments/ui/guide/au;->a(Z)Lcom/twitter/android/moments/ui/guide/au;

    move-result-object v2

    .line 69
    invoke-virtual {v2, v1}, Lcom/twitter/android/moments/ui/guide/au;->a(I)Lcom/twitter/android/moments/ui/guide/au;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/guide/au;->a()Lcom/twitter/android/moments/ui/guide/at;

    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->a(Lcom/twitter/app/common/base/f;)V

    .line 93
    :goto_0
    new-instance v1, Lcom/twitter/android/ic;

    invoke-direct {v1, v0}, Lcom/twitter/android/ic;-><init>(Lcom/twitter/app/common/list/TwitterListFragment;)V

    return-object v1

    .line 71
    :cond_0
    const-string/jumbo v2, "add_to_moment_tweet_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    const-string/jumbo v2, "add_to_moment_tweet_id"

    .line 73
    invoke-virtual {p1, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 74
    new-instance v4, Lcom/twitter/android/moments/ui/guide/au;

    invoke-direct {v4}, Lcom/twitter/android/moments/ui/guide/au;-><init>()V

    .line 76
    invoke-virtual {v4, v2, v3}, Lcom/twitter/android/moments/ui/guide/au;->a(J)Lcom/twitter/android/moments/ui/guide/au;

    move-result-object v2

    .line 77
    invoke-virtual {v2, v1}, Lcom/twitter/android/moments/ui/guide/au;->a(I)Lcom/twitter/android/moments/ui/guide/au;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/guide/au;->a()Lcom/twitter/android/moments/ui/guide/at;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->a(Lcom/twitter/app/common/base/f;)V

    goto :goto_0

    .line 79
    :cond_1
    const-string/jumbo v2, "moments_owner_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    const-string/jumbo v2, "moments_owner_id"

    invoke-virtual {p1, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 81
    new-instance v4, Lcom/twitter/android/moments/ui/guide/au;

    invoke-direct {v4}, Lcom/twitter/android/moments/ui/guide/au;-><init>()V

    .line 83
    invoke-virtual {v4, v2, v3}, Lcom/twitter/android/moments/ui/guide/au;->b(J)Lcom/twitter/android/moments/ui/guide/au;

    move-result-object v2

    .line 84
    invoke-virtual {v2, v1}, Lcom/twitter/android/moments/ui/guide/au;->a(I)Lcom/twitter/android/moments/ui/guide/au;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/guide/au;->a()Lcom/twitter/android/moments/ui/guide/at;

    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->a(Lcom/twitter/app/common/base/f;)V

    goto :goto_0

    .line 87
    :cond_2
    new-instance v2, Lcom/twitter/android/moments/ui/guide/au;

    invoke-direct {v2}, Lcom/twitter/android/moments/ui/guide/au;-><init>()V

    .line 89
    invoke-virtual {v2, v4}, Lcom/twitter/android/moments/ui/guide/au;->a(Z)Lcom/twitter/android/moments/ui/guide/au;

    move-result-object v2

    .line 90
    invoke-virtual {v2, v1}, Lcom/twitter/android/moments/ui/guide/au;->a(I)Lcom/twitter/android/moments/ui/guide/au;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/guide/au;->a()Lcom/twitter/android/moments/ui/guide/at;

    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/guide/MomentsGuideFragment;->a(Lcom/twitter/app/common/base/f;)V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-super {p0, p1, p2}, Lcom/twitter/android/ListFragmentActivity;->a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;

    move-result-object v0

    .line 46
    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/y;->a(I)V

    .line 48
    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/y;->a(Z)V

    .line 50
    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/y;->b(Z)V

    .line 51
    return-object v0
.end method

.method protected a(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 29
    const-string/jumbo v0, "guide_category_name"

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0573

    .line 31
    invoke-virtual {p0, v1}, Lcom/twitter/android/moments/ui/guide/ModernGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0, p1, p2}, Lcom/twitter/android/ListFragmentActivity;->b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V

    .line 37
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/guide/ModernGuideActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Lahi;->a(J)V

    .line 38
    return-void
.end method
