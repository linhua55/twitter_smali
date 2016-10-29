.class public Lcom/twitter/android/MediaTagActivity;
.super Lcom/twitter/app/common/base/TwitterFragmentActivity;
.source "Twttr"


# instance fields
.field private a:Lcom/twitter/android/MediaTagFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/twitter/app/common/base/TwitterFragmentActivity;-><init>()V

    return-void
.end method

.method private a(Lcom/twitter/model/media/EditableImage;)V
    .locals 4

    .prologue
    .line 108
    new-instance v0, Lcom/twitter/android/MediaTagFragment;

    invoke-direct {v0}, Lcom/twitter/android/MediaTagFragment;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/MediaTagActivity;->a:Lcom/twitter/android/MediaTagFragment;

    .line 109
    iget-object v0, p0, Lcom/twitter/android/MediaTagActivity;->a:Lcom/twitter/android/MediaTagFragment;

    new-instance v1, Lcom/twitter/app/common/base/g;

    invoke-direct {v1}, Lcom/twitter/app/common/base/g;-><init>()V

    const-string/jumbo v2, "editable_image"

    .line 110
    invoke-virtual {v1, v2, p1}, Lcom/twitter/app/common/base/g;->a(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/twitter/app/common/base/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/app/common/base/g;->c()Lcom/twitter/app/common/base/f;

    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Lcom/twitter/android/MediaTagFragment;->a(Lcom/twitter/app/common/base/f;)V

    .line 111
    invoke-virtual {p0}, Lcom/twitter/android/MediaTagActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f130473

    iget-object v2, p0, Lcom/twitter/android/MediaTagActivity;->a:Lcom/twitter/android/MediaTagFragment;

    const-string/jumbo v3, "user_select"

    .line 113
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 115
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/twitter/android/MediaTagActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 125
    new-instance v1, Lcom/twitter/library/client/l;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    const-string/jumbo v0, "media_tags"

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    .line 126
    invoke-virtual {v1}, Lcom/twitter/library/client/l;->a()Lcom/twitter/library/client/n;

    move-result-object v0

    const-string/jumbo v1, "recent_tags"

    sget-object v2, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    .line 127
    invoke-static {v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/twitter/library/client/n;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/library/client/n;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/twitter/library/client/n;->apply()V

    .line 129
    return-void
.end method

.method private c()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/twitter/android/MediaTagActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 119
    new-instance v1, Lcom/twitter/library/client/l;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    const-string/jumbo v0, "media_tags"

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    .line 120
    const-string/jumbo v0, "recent_tags"

    sget-object v2, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    invoke-static {v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/client/l;->a(Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 1

    .prologue
    .line 41
    const v0, 0x7f0401a5

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->d(I)V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->a(Z)V

    .line 43
    return-object p2
.end method

.method public a(Lcyd;)Z
    .locals 9

    .prologue
    const v3, 0x7f1307e9

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 70
    invoke-interface {p1}, Lcyd;->a()I

    move-result v0

    .line 71
    if-eq v0, v3, :cond_0

    const v2, 0x7f13003d

    if-ne v0, v2, :cond_6

    .line 72
    :cond_0
    if-ne v0, v3, :cond_5

    .line 73
    iget-object v0, p0, Lcom/twitter/android/MediaTagActivity;->a:Lcom/twitter/android/MediaTagFragment;

    invoke-virtual {v0}, Lcom/twitter/android/MediaTagFragment;->c()Ljava/util/List;

    move-result-object v2

    .line 74
    const/4 v0, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "photo_tags"

    sget-object v5, Lcom/twitter/model/core/am;->a:Lcom/twitter/util/serialization/ah;

    .line 75
    invoke-static {v5}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v5

    .line 74
    invoke-static {v3, v4, v2, v5}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/twitter/android/MediaTagActivity;->setResult(ILandroid/content/Intent;)V

    .line 76
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 77
    invoke-static {}, Lcom/twitter/util/collection/r;->f()Lcom/twitter/util/collection/r;

    move-result-object v3

    .line 78
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/am;

    .line 79
    iget-wide v6, v0, Lcom/twitter/model/core/am;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_0

    .line 81
    :cond_1
    invoke-direct {p0}, Lcom/twitter/android/MediaTagActivity;->c()Ljava/util/List;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {v3, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Iterable;)Lcom/twitter/util/collection/r;

    .line 85
    :cond_2
    invoke-virtual {v3}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/16 v3, 0x14

    invoke-static {v0, v8, v3}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/MediaTagActivity;->a(Ljava/util/List;)V

    .line 87
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 89
    if-nez v0, :cond_4

    .line 90
    invoke-virtual {p0}, Lcom/twitter/android/MediaTagActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0526

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_1
    invoke-virtual {p0}, Lcom/twitter/android/MediaTagActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 96
    iget-object v0, p0, Lcom/twitter/android/MediaTagActivity;->a:Lcom/twitter/android/MediaTagFragment;

    invoke-virtual {v0}, Lcom/twitter/android/MediaTagFragment;->h()V

    .line 100
    :goto_2
    invoke-virtual {p0}, Lcom/twitter/android/MediaTagActivity;->finish()V

    move v0, v1

    .line 103
    :goto_3
    return v0

    .line 92
    :cond_4
    invoke-virtual {p0}, Lcom/twitter/android/MediaTagActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000e

    new-array v4, v1, [Ljava/lang/Object;

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 98
    :cond_5
    invoke-virtual {p0, v8}, Lcom/twitter/android/MediaTagActivity;->setResult(I)V

    goto :goto_2

    .line 103
    :cond_6
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Lcyd;)Z

    move-result v0

    goto :goto_3
.end method

.method public a(Lcyg;)Z
    .locals 1

    .prologue
    .line 64
    const v0, 0x7f14001a

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 65
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->a(Lcyg;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V
    .locals 3

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/twitter/android/MediaTagActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 51
    invoke-virtual {p0}, Lcom/twitter/android/MediaTagActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "user_select"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/MediaTagFragment;

    iput-object v0, p0, Lcom/twitter/android/MediaTagActivity;->a:Lcom/twitter/android/MediaTagFragment;

    .line 53
    iget-object v0, p0, Lcom/twitter/android/MediaTagActivity;->a:Lcom/twitter/android/MediaTagFragment;

    if-nez v0, :cond_0

    .line 54
    const-string/jumbo v0, "editable_image"

    .line 55
    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/media/EditableImage;

    .line 56
    invoke-direct {p0, v0}, Lcom/twitter/android/MediaTagActivity;->a(Lcom/twitter/model/media/EditableImage;)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/MediaTagActivity;->a:Lcom/twitter/android/MediaTagFragment;

    invoke-direct {p0}, Lcom/twitter/android/MediaTagActivity;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/MediaTagFragment;->a(Ljava/util/List;)V

    .line 60
    return-void
.end method
