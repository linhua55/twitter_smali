.class public Lcom/twitter/android/smartfollow/followpeople/e;
.super Lcom/twitter/android/smartfollow/b;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/qo;


# annotations
.annotation build Lcom/twitter/app/AutoSaveState;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/smartfollow/b",
        "<",
        "Lcom/twitter/app/common/util/StateSaver",
        "<",
        "Lcom/twitter/android/smartfollow/followpeople/e;",
        ">;",
        "Lcom/twitter/android/smartfollow/followpeople/FollowPeopleScreen;",
        ">;",
        "Lcom/twitter/android/qo;"
    }
.end annotation


# instance fields
.field protected i:Z
    .annotation build Lcom/twitter/app/SaveState;
    .end annotation
.end field

.field protected j:Ljava/util/Set;
    .annotation build Lcom/twitter/app/SaveState;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected k:Lcom/twitter/refresh/widget/a;
    .annotation build Lcom/twitter/app/SaveState;
    .end annotation
.end field

.field protected l:Lcom/twitter/android/qk;


# direct methods
.method public constructor <init>(Lcom/twitter/app/common/util/StateSaver;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/app/common/util/StateSaver",
            "<",
            "Lcom/twitter/android/smartfollow/followpeople/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 53
    invoke-direct {p0}, Lcom/twitter/android/smartfollow/b;-><init>()V

    .line 45
    iput-boolean v4, p0, Lcom/twitter/android/smartfollow/followpeople/e;->i:Z

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/smartfollow/followpeople/e;->j:Ljava/util/Set;

    .line 48
    new-instance v0, Lcom/twitter/refresh/widget/a;

    const/4 v1, -0x1

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/refresh/widget/a;-><init>(IJI)V

    iput-object v0, p0, Lcom/twitter/android/smartfollow/followpeople/e;->k:Lcom/twitter/refresh/widget/a;

    .line 54
    invoke-virtual {p1, p0}, Lcom/twitter/app/common/util/StateSaver;->a(Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method protected static a(Lcom/twitter/model/core/bb;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 102
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/bb;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 105
    :cond_0
    const-string/jumbo v0, "PYMK"

    .line 114
    :goto_0
    return-object v0

    .line 106
    :cond_1
    const-string/jumbo v0, "INTEREST"

    iget-object v1, p0, Lcom/twitter/model/core/bb;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/twitter/model/core/bb;->c:Ljava/lang/String;

    goto :goto_0

    .line 108
    :cond_2
    const-string/jumbo v0, "LOCATION_COUNTRY"

    iget-object v1, p0, Lcom/twitter/model/core/bb;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    const-string/jumbo v0, "LOCATION_GEO"

    goto :goto_0

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/twitter/model/core/bb;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method protected static b(Ljava/util/List;)Lcmf;
    .locals 7
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;)",
            "Lcmf",
            "<",
            "Lcom/twitter/android/qj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 128
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 129
    iget-object v1, v0, Lcom/twitter/model/core/TwitterUser;->S:Lcom/twitter/model/search/TwitterUserMetadata;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, v0, Lcom/twitter/model/core/TwitterUser;->S:Lcom/twitter/model/search/TwitterUserMetadata;

    iget-object v1, v1, Lcom/twitter/model/search/TwitterUserMetadata;->b:Lcom/twitter/model/core/bb;

    invoke-static {v1}, Lcom/twitter/android/smartfollow/followpeople/e;->a(Lcom/twitter/model/core/bb;)Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcmf;

    .line 132
    new-instance v5, Lcmp;

    invoke-direct {v5}, Lcmp;-><init>()V

    .line 134
    instance-of v6, v1, Lcmo;

    if-eqz v6, :cond_1

    .line 135
    invoke-virtual {v5, v1}, Lcmp;->a(Ljava/lang/Iterable;)Lcmp;

    .line 137
    :cond_1
    invoke-virtual {v5, v0}, Lcmp;->a(Ljava/lang/Object;)Lcmp;

    move-result-object v0

    invoke-virtual {v0}, Lcmp;->a()Lcmo;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 141
    :cond_2
    new-instance v3, Lcmp;

    invoke-direct {v3}, Lcmp;-><init>()V

    .line 144
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 145
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 147
    invoke-static {v1}, Lcom/twitter/android/qj;->a(Ljava/lang/String;)Lcom/twitter/android/qj;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcmp;->a(Ljava/lang/Object;)Lcmp;

    move-result-object v4

    .line 148
    invoke-static {v1}, Lcom/twitter/android/qj;->b(Ljava/lang/String;)Lcom/twitter/android/qj;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcmp;->a(Ljava/lang/Object;)Lcmp;

    .line 150
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcmf;

    invoke-virtual {v0}, Lcmf;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 151
    iget-object v5, v0, Lcom/twitter/model/core/TwitterUser;->S:Lcom/twitter/model/search/TwitterUserMetadata;

    .line 152
    invoke-static {v5}, Lcom/twitter/android/smartfollow/ac;->a(Lcom/twitter/model/search/TwitterUserMetadata;)Z

    move-result v5

    .line 151
    invoke-static {v0, v1, v5}, Lcom/twitter/android/qj;->a(Lcom/twitter/model/core/TwitterUser;Ljava/lang/String;Z)Lcom/twitter/android/qj;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcmp;->a(Ljava/lang/Object;)Lcmp;

    goto :goto_1

    .line 156
    :cond_4
    invoke-virtual {v3}, Lcmp;->a()Lcmo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 182
    iget-object v0, p0, Lcom/twitter/android/smartfollow/followpeople/e;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/followpeople/e;->h()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a03bc

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/android/smartfollow/followpeople/e;->j:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 187
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/followpeople/e;->b()Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/followpeople/e;->b()Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/smartfollow/followpeople/FollowPeopleScreen;

    invoke-virtual {v0, v1}, Lcom/twitter/android/smartfollow/followpeople/FollowPeopleScreen;->setCtaCopy(Ljava/lang/String;)V

    .line 190
    :cond_0
    return-void

    .line 185
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/followpeople/e;->h()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0213

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 197
    if-eqz p2, :cond_0

    const-string/jumbo v0, "select"

    .line 198
    :goto_0
    const-string/jumbo v1, "category"

    invoke-virtual {p0, v1, v0, p1}, Lcom/twitter/android/smartfollow/followpeople/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void

    .line 197
    :cond_0
    const-string/jumbo v0, "unselect"

    goto :goto_0
.end method

.method protected a(Ljava/util/List;)V
    .locals 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/twitter/android/smartfollow/followpeople/e;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 88
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 89
    iget-object v2, v0, Lcom/twitter/model/core/TwitterUser;->S:Lcom/twitter/model/search/TwitterUserMetadata;

    invoke-static {v2}, Lcom/twitter/android/smartfollow/ac;->b(Lcom/twitter/model/search/TwitterUserMetadata;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/twitter/android/smartfollow/followpeople/e;->j:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_1
    return-void
.end method

.method public synthetic aH_()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/followpeople/e;->w()Lcom/twitter/app/common/util/StateSaver;

    move-result-object v0

    return-object v0
.end method

.method public aO_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string/jumbo v0, "presenter_follow_people"

    return-object v0
.end method

.method protected p()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Lcom/twitter/android/smartfollow/b;->p()V

    .line 162
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/followpeople/e;->b()Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/followpeople/e;->b()Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/smartfollow/followpeople/FollowPeopleScreen;

    invoke-virtual {v0}, Lcom/twitter/android/smartfollow/followpeople/FollowPeopleScreen;->getFirstVisibleItem()Lcom/twitter/refresh/widget/a;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/smartfollow/followpeople/e;->k:Lcom/twitter/refresh/widget/a;

    .line 165
    :cond_0
    return-void
.end method

.method protected q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    const-string/jumbo v0, "follow_people_screen"

    return-object v0
.end method

.method protected r()V
    .locals 4

    .prologue
    .line 65
    invoke-super {p0}, Lcom/twitter/android/smartfollow/b;->r()V

    .line 66
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/followpeople/e;->b()Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/followpeople/e;->f()Lcom/twitter/android/smartfollow/SmartFollowFlowData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->d()Ljava/util/List;

    move-result-object v1

    .line 70
    iget-boolean v0, p0, Lcom/twitter/android/smartfollow/followpeople/e;->i:Z

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/smartfollow/followpeople/e;->i:Z

    .line 72
    invoke-virtual {p0, v1}, Lcom/twitter/android/smartfollow/followpeople/e;->a(Ljava/util/List;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/smartfollow/followpeople/e;->l:Lcom/twitter/android/qk;

    if-nez v0, :cond_1

    .line 76
    new-instance v2, Lcom/twitter/android/qk;

    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/followpeople/e;->b()Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/smartfollow/followpeople/FollowPeopleScreen;

    invoke-virtual {v0}, Lcom/twitter/android/smartfollow/followpeople/FollowPeopleScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/twitter/android/smartfollow/followpeople/e;->j:Ljava/util/Set;

    invoke-direct {v2, v0, p0, v3}, Lcom/twitter/android/qk;-><init>(Landroid/content/Context;Lcom/twitter/android/qo;Ljava/util/Set;)V

    iput-object v2, p0, Lcom/twitter/android/smartfollow/followpeople/e;->l:Lcom/twitter/android/qk;

    .line 77
    iget-object v0, p0, Lcom/twitter/android/smartfollow/followpeople/e;->l:Lcom/twitter/android/qk;

    invoke-static {v1}, Lcom/twitter/android/smartfollow/followpeople/e;->b(Ljava/util/List;)Lcmf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/qk;->a(Lcmf;)Lcmf;

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/followpeople/e;->b()Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/smartfollow/followpeople/FollowPeopleScreen;

    iget-object v1, p0, Lcom/twitter/android/smartfollow/followpeople/e;->l:Lcom/twitter/android/qk;

    iget-object v2, p0, Lcom/twitter/android/smartfollow/followpeople/e;->k:Lcom/twitter/refresh/widget/a;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/smartfollow/followpeople/FollowPeopleScreen;->a(Lcom/twitter/android/qk;Lcom/twitter/refresh/widget/a;)V

    .line 82
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/followpeople/e;->a()V

    .line 83
    return-void
.end method

.method public t()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/twitter/android/smartfollow/followpeople/e;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 228
    invoke-super {p0}, Lcom/twitter/android/smartfollow/b;->t()V

    .line 229
    return-void
.end method

.method public u()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 205
    iget-object v0, p0, Lcom/twitter/android/smartfollow/followpeople/e;->j:Ljava/util/Set;

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->e(Ljava/util/Collection;)[J

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/followpeople/e;->f()Lcom/twitter/android/smartfollow/SmartFollowFlowData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->a([J)V

    .line 209
    :cond_0
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 210
    const-string/jumbo v1, "follow_many"

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/followpeople/e;->v()Ljava/util/List;

    move-result-object v2

    .line 210
    invoke-virtual {p0, v3, v1, v0, v2}, Lcom/twitter/android/smartfollow/followpeople/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 216
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/smartfollow/followpeople/e;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 217
    invoke-super {p0}, Lcom/twitter/android/smartfollow/b;->u()V

    .line 218
    return-void

    .line 213
    :cond_1
    const-string/jumbo v0, "follow_none"

    invoke-virtual {p0, v3, v0}, Lcom/twitter/android/smartfollow/followpeople/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected v()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/followpeople/e;->f()Lcom/twitter/android/smartfollow/SmartFollowFlowData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/smartfollow/followpeople/e;->j:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/twitter/android/smartfollow/ac;->a(Ljava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public w()Lcom/twitter/app/common/util/StateSaver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/app/common/util/StateSaver",
            "<",
            "Lcom/twitter/android/smartfollow/followpeople/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v0, Lcom/twitter/android/smartfollow/followpeople/FollowPeoplePresenterSavedState;

    invoke-direct {v0, p0}, Lcom/twitter/android/smartfollow/followpeople/FollowPeoplePresenterSavedState;-><init>(Lcom/twitter/android/smartfollow/followpeople/e;)V

    return-object v0
.end method
