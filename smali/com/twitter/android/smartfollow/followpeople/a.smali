.class public Lcom/twitter/android/smartfollow/followpeople/a;
.super Lcom/twitter/android/smartfollow/followpeople/e;
.source "Twttr"


# instance fields
.field private final m:Lcom/twitter/android/people/s;

.field private final n:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/android/people/s;Lcom/twitter/app/common/util/StateSaver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/people/s;",
            "Lcom/twitter/app/common/util/StateSaver",
            "<",
            "Lcom/twitter/android/smartfollow/followpeople/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p2}, Lcom/twitter/android/smartfollow/followpeople/e;-><init>(Lcom/twitter/app/common/util/StateSaver;)V

    .line 42
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/smartfollow/followpeople/a;->n:Landroid/support/v4/util/LongSparseArray;

    .line 48
    iput-object p1, p0, Lcom/twitter/android/smartfollow/followpeople/a;->m:Lcom/twitter/android/people/s;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/smartfollow/followpeople/a;)Landroid/support/v4/util/LongSparseArray;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/twitter/android/smartfollow/followpeople/a;->n:Landroid/support/v4/util/LongSparseArray;

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/smartfollow/followpeople/a;Ljava/lang/Iterable;)Lcmf;
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/twitter/android/smartfollow/followpeople/a;->a(Ljava/lang/Iterable;)Lcmf;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Iterable;)Lcmf;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/twitter/android/people/adapters/i;",
            ">;)",
            "Lcmf",
            "<",
            "Lcom/twitter/android/qj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v3, Lcmp;

    invoke-direct {v3}, Lcmp;-><init>()V

    .line 78
    iget-object v0, p0, Lcom/twitter/android/smartfollow/followpeople/a;->n:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 79
    const/4 v0, 0x0

    .line 81
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/people/adapters/i;

    .line 82
    instance-of v1, v0, Lcom/twitter/android/people/adapters/p;

    if-eqz v1, :cond_0

    .line 83
    invoke-static {v0}, Lcom/twitter/android/smartfollow/followpeople/a;->a(Lcom/twitter/android/people/adapters/i;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/qj;->a(Ljava/lang/String;)Lcom/twitter/android/qj;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcmp;->a(Ljava/lang/Object;)Lcmp;

    move v0, v2

    :goto_1
    move v2, v0

    .line 100
    goto :goto_0

    .line 84
    :cond_0
    instance-of v1, v0, Lcom/twitter/android/people/adapters/u;

    if-eqz v1, :cond_1

    .line 85
    invoke-static {v0}, Lcom/twitter/android/smartfollow/followpeople/a;->a(Lcom/twitter/android/people/adapters/i;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/qj;->b(Ljava/lang/String;)Lcom/twitter/android/qj;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcmp;->a(Ljava/lang/Object;)Lcmp;

    move v0, v2

    goto :goto_1

    .line 86
    :cond_1
    instance-of v1, v0, Lcom/twitter/android/people/adapters/v;

    if-eqz v1, :cond_4

    move-object v1, v0

    .line 87
    check-cast v1, Lcom/twitter/android/people/adapters/v;

    iget-object v1, v1, Lcom/twitter/android/people/adapters/v;->a:Lcom/twitter/model/people/am;

    .line 88
    iget-object v5, v1, Lcom/twitter/model/people/am;->a:Lcom/twitter/model/core/TwitterUser;

    .line 89
    invoke-static {v0}, Lcom/twitter/android/smartfollow/followpeople/a;->a(Lcom/twitter/android/people/adapters/i;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    invoke-static {v5, v0, v6}, Lcom/twitter/android/qj;->a(Lcom/twitter/model/core/TwitterUser;Ljava/lang/String;Z)Lcom/twitter/android/qj;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcmp;->a(Ljava/lang/Object;)Lcmp;

    .line 91
    iget-boolean v0, v1, Lcom/twitter/model/people/am;->d:Z

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/twitter/android/smartfollow/followpeople/a;->j:Ljava/util/Set;

    invoke-virtual {v5}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/smartfollow/followpeople/a;->n:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v5}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v6

    iget-object v1, v1, Lcom/twitter/model/people/am;->c:Ljava/lang/String;

    .line 96
    invoke-static {v5, v2, v1}, Lcom/twitter/android/smartfollow/ac;->b(Lcom/twitter/model/core/TwitterUser;ILjava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v1

    .line 95
    invoke-virtual {v0, v6, v7, v1}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 98
    add-int/lit8 v2, v2, 0x1

    move v0, v2

    goto :goto_1

    .line 101
    :cond_3
    invoke-virtual {v3}, Lcmp;->a()Lcmo;

    move-result-object v0

    return-object v0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method private static a(Lcom/twitter/android/people/adapters/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    instance-of v0, p0, Lcom/twitter/android/people/adapters/viewbinders/ak;

    if-eqz v0, :cond_0

    .line 107
    check-cast p0, Lcom/twitter/android/people/adapters/viewbinders/ak;

    .line 108
    invoke-interface {p0}, Lcom/twitter/android/people/adapters/viewbinders/ak;->b()Lcom/twitter/model/people/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/model/people/g;->c()Lcom/twitter/model/people/t;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/model/people/t;->c:Lcom/twitter/model/people/w;

    iget-object v0, v0, Lcom/twitter/model/people/w;->a:Lcom/twitter/model/people/l;

    iget-object v0, v0, Lcom/twitter/model/people/l;->c:Lcom/twitter/model/people/ModuleTitle;

    iget-object v0, v0, Lcom/twitter/model/people/ModuleTitle;->c:Ljava/lang/String;

    .line 110
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method public aO_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string/jumbo v0, "presenter_follow_people_discovery"

    return-object v0
.end method

.method protected r()V
    .locals 3

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/followpeople/a;->b()Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string/jumbo v0, "people_discovery_for_smart_nux_enabled"

    .line 55
    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    .line 54
    invoke-static {v0}, Lcom/twitter/util/h;->b(Z)Z

    .line 57
    iget-object v0, p0, Lcom/twitter/android/smartfollow/followpeople/a;->l:Lcom/twitter/android/qk;

    if-nez v0, :cond_0

    .line 58
    new-instance v1, Lcom/twitter/android/qk;

    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/followpeople/a;->b()Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/smartfollow/followpeople/FollowPeopleScreen;

    invoke-virtual {v0}, Lcom/twitter/android/smartfollow/followpeople/FollowPeopleScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/smartfollow/followpeople/a;->j:Ljava/util/Set;

    invoke-direct {v1, v0, p0, v2}, Lcom/twitter/android/qk;-><init>(Landroid/content/Context;Lcom/twitter/android/qo;Ljava/util/Set;)V

    iput-object v1, p0, Lcom/twitter/android/smartfollow/followpeople/a;->l:Lcom/twitter/android/qk;

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/followpeople/a;->f()Lcom/twitter/android/smartfollow/SmartFollowFlowData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->g()Ljava/util/Map;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/twitter/android/smartfollow/followpeople/a;->m:Lcom/twitter/android/people/s;

    invoke-virtual {v1, v0}, Lcom/twitter/android/people/s;->a(Ljava/util/Map;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/smartfollow/followpeople/b;

    invoke-direct {v1, p0}, Lcom/twitter/android/smartfollow/followpeople/b;-><init>(Lcom/twitter/android/smartfollow/followpeople/a;)V

    invoke-virtual {v0, v1}, Lrx/o;->c(Ldjf;)Lrx/ap;

    .line 70
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/followpeople/a;->b()Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/smartfollow/followpeople/FollowPeopleScreen;

    iget-object v1, p0, Lcom/twitter/android/smartfollow/followpeople/a;->l:Lcom/twitter/android/qk;

    iget-object v2, p0, Lcom/twitter/android/smartfollow/followpeople/a;->k:Lcom/twitter/refresh/widget/a;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/smartfollow/followpeople/FollowPeopleScreen;->a(Lcom/twitter/android/qk;Lcom/twitter/refresh/widget/a;)V

    .line 71
    return-void
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
    .line 117
    iget-object v0, p0, Lcom/twitter/android/smartfollow/followpeople/a;->j:Ljava/util/Set;

    new-instance v1, Lcom/twitter/android/smartfollow/followpeople/c;

    invoke-direct {v1, p0}, Lcom/twitter/android/smartfollow/followpeople/c;-><init>(Lcom/twitter/android/smartfollow/followpeople/a;)V

    invoke-static {v0, v1}, Lczz;->a(Ljava/lang/Iterable;Lczn;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lczz;->c(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
