.class public Lcom/twitter/library/api/dm/requests/g;
.super Lcom/twitter/library/api/dm/requests/m;
.source "Twttr"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lbof;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/twitter/library/api/dm/requests/m;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    .line 42
    invoke-static {p3}, Lcom/twitter/util/object/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/api/dm/requests/g;->a:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/service/ab;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/twitter/library/api/dm/requests/m;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;)V

    .line 48
    invoke-static {p3}, Lcom/twitter/util/object/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/api/dm/requests/g;->a:Ljava/lang/String;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/twitter/library/api/dm/requests/g;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/g;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public a(Lbof;)V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/library/api/dm/requests/g;->b:Ljava/lang/ref/WeakReference;

    .line 70
    return-void
.end method

.method a(Lcom/twitter/model/dms/ak;Lcom/twitter/library/provider/dm;Lcom/twitter/library/provider/b;)V
    .locals 6

    .prologue
    .line 78
    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/g;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 79
    invoke-virtual {p1}, Lcom/twitter/model/dms/ak;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/g;

    .line 80
    invoke-virtual {v0}, Lcom/twitter/model/dms/g;->i()I

    move-result v2

    if-nez v2, :cond_1

    .line 81
    invoke-virtual {v0}, Lcom/twitter/model/dms/g;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Lcom/twitter/model/dms/g;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {v0}, Lrx/o;->b(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    .line 82
    invoke-static {}, Ldiz;->a()Lrx/t;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/o;->a(Lrx/t;)Lrx/o;

    move-result-object v0

    new-instance v2, Lcom/twitter/library/api/dm/requests/h;

    invoke-direct {v2, p0}, Lcom/twitter/library/api/dm/requests/h;-><init>(Lcom/twitter/library/api/dm/requests/g;)V

    .line 83
    invoke-virtual {v0, v2}, Lrx/o;->c(Ldjf;)Lrx/ap;

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v0}, Lcom/twitter/model/dms/g;->i()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 93
    iget-object v2, p0, Lcom/twitter/library/api/dm/requests/g;->b:Ljava/lang/ref/WeakReference;

    invoke-static {v2}, Lrx/o;->b(Ljava/lang/Object;)Lrx/o;

    move-result-object v2

    invoke-static {}, Ldls;->d()Lrx/t;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/o;->a(Lrx/t;)Lrx/o;

    move-result-object v2

    new-instance v3, Lcom/twitter/library/api/dm/requests/i;

    invoke-direct {v3, p0, v0, p2}, Lcom/twitter/library/api/dm/requests/i;-><init>(Lcom/twitter/library/api/dm/requests/g;Lcom/twitter/model/dms/g;Lcom/twitter/library/provider/dm;)V

    invoke-virtual {v2, v3}, Lrx/o;->c(Ldjf;)Lrx/ap;

    goto :goto_0

    .line 113
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/library/api/dm/requests/m;->a(Lcom/twitter/model/dms/ak;Lcom/twitter/library/provider/dm;Lcom/twitter/library/provider/b;)V

    .line 114
    return-void
.end method

.method protected b()Lcom/twitter/library/service/e;
    .locals 3

    .prologue
    .line 54
    invoke-super {p0}, Lcom/twitter/library/api/dm/requests/m;->b()Lcom/twitter/library/service/e;

    move-result-object v1

    .line 56
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/account/UserSettings;

    .line 57
    invoke-virtual {v0}, Lcom/twitter/model/account/UserSettings;->e()Z

    move-result v0

    .line 58
    invoke-static {v0}, Lbnv;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/api/dm/requests/g;->a:Ljava/lang/String;

    .line 59
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const-string/jumbo v0, "active_conversation_id"

    iget-object v2, p0, Lcom/twitter/library/api/dm/requests/g;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 62
    :cond_0
    return-object v1
.end method
