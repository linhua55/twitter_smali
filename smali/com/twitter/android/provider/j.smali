.class public Lcom/twitter/android/provider/j;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lsb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsb",
        "<",
        "Lcom/twitter/android/provider/l;",
        "Lcom/twitter/library/provider/h;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/twitter/android/provider/l;",
            "Lcmo",
            "<",
            "Lcom/twitter/library/provider/h;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lcom/twitter/util/collection/MutableMap;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/j;->b:Ljava/util/Map;

    .line 41
    iput-object p1, p0, Lcom/twitter/android/provider/j;->a:Landroid/content/Context;

    .line 42
    return-void
.end method

.method static a(Ljava/util/List;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/provider/h;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/provider/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {p0, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;JZ)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/database/dm/l;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/library/database/dm/d;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;JZ)",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/provider/h;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 118
    invoke-static {}, Lcom/twitter/util/collection/r;->f()Lcom/twitter/util/collection/r;

    move-result-object v5

    .line 119
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/database/dm/l;

    .line 120
    iget-boolean v1, v0, Lcom/twitter/library/database/dm/l;->b:Z

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, v0, Lcom/twitter/library/database/dm/l;->a:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/database/dm/d;

    .line 122
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/twitter/library/database/dm/d;->l:Z

    if-nez v2, :cond_0

    .line 123
    new-instance v2, Lcom/twitter/library/provider/e;

    invoke-direct {v2}, Lcom/twitter/library/provider/e;-><init>()V

    .line 124
    invoke-virtual {v2, v1}, Lcom/twitter/library/provider/e;->a(Lcom/twitter/library/database/dm/d;)Lcom/twitter/library/provider/e;

    move-result-object v1

    iget-object v0, v0, Lcom/twitter/library/database/dm/l;->c:Lcom/twitter/library/database/dm/ShareHistoryTable$Type;

    invoke-virtual {v1, v0}, Lcom/twitter/library/provider/e;->a(Lcom/twitter/library/database/dm/ShareHistoryTable$Type;)Lcom/twitter/library/provider/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/provider/i;->q()Ljava/lang/Object;

    move-result-object v0

    .line 123
    invoke-virtual {v5, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_0

    .line 127
    :cond_1
    iget-object v1, v0, Lcom/twitter/library/database/dm/l;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 128
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/core/TwitterUser;

    .line 129
    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9, p3, p4}, Lbnx;->a(JJ)Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/database/dm/d;

    .line 132
    if-nez v2, :cond_3

    if-nez p5, :cond_2

    move v2, v3

    .line 133
    :goto_1
    if-eqz v2, :cond_0

    .line 134
    new-instance v2, Lcom/twitter/library/provider/l;

    invoke-direct {v2}, Lcom/twitter/library/provider/l;-><init>()V

    .line 135
    invoke-virtual {v2, v1}, Lcom/twitter/library/provider/l;->a(Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/library/provider/l;

    move-result-object v1

    iget-object v0, v0, Lcom/twitter/library/database/dm/l;->c:Lcom/twitter/library/database/dm/ShareHistoryTable$Type;

    invoke-virtual {v1, v0}, Lcom/twitter/library/provider/l;->a(Lcom/twitter/library/database/dm/ShareHistoryTable$Type;)Lcom/twitter/library/provider/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/provider/i;->q()Ljava/lang/Object;

    move-result-object v0

    .line 134
    invoke-virtual {v5, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_0

    :cond_2
    move v2, v4

    .line 132
    goto :goto_1

    :cond_3
    iget-boolean v2, v2, Lcom/twitter/library/database/dm/d;->l:Z

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_1

    :cond_4
    move v2, v4

    goto :goto_1

    .line 141
    :cond_5
    invoke-virtual {v5}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method static a(Lcom/twitter/library/provider/g;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/provider/g;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/library/database/dm/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/twitter/library/provider/g;->a(Z)Ljava/util/List;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/twitter/util/collection/v;->a(I)Lcom/twitter/util/collection/v;

    move-result-object v1

    .line 92
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/database/dm/d;

    .line 93
    iget-object v3, v0, Lcom/twitter/library/database/dm/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v1}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method static a(Ljava/util/List;Lcom/twitter/library/provider/fl;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/database/dm/l;",
            ">;",
            "Lcom/twitter/library/provider/fl;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 102
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/database/dm/l;

    .line 103
    iget-boolean v3, v0, Lcom/twitter/library/database/dm/l;->b:Z

    if-nez v3, :cond_0

    .line 105
    :try_start_0
    iget-object v0, v0, Lcom/twitter/library/database/dm/l;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/twitter/library/provider/fl;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/android/provider/l;)Lcmf;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/provider/l;",
            ")",
            "Lcmf",
            "<",
            "Lcom/twitter/library/provider/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/twitter/android/provider/j;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/twitter/android/provider/j;->a:Landroid/content/Context;

    iget-wide v2, p1, Lcom/twitter/android/provider/l;->b:J

    invoke-static {v0, v2, v3}, Lcom/twitter/library/database/dm/a;->a(Landroid/content/Context;J)Lcom/twitter/library/database/dm/a;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/twitter/android/provider/j;->a:Landroid/content/Context;

    iget-wide v2, p1, Lcom/twitter/android/provider/l;->b:J

    .line 55
    invoke-static {v1, v2, v3}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v3

    .line 57
    iget-wide v4, p1, Lcom/twitter/android/provider/l;->a:J

    .line 58
    invoke-interface {v0, v4, v5}, Lcom/twitter/library/database/dm/c;->a(J)Ljava/util/Map;

    move-result-object v1

    .line 59
    new-instance v7, Lcom/twitter/android/provider/k;

    invoke-direct {v7, v1, p1}, Lcom/twitter/android/provider/k;-><init>(Ljava/util/Map;Lcom/twitter/android/provider/l;)V

    .line 61
    const/4 v1, -0x1

    .line 62
    invoke-interface {v0, v1}, Lcom/twitter/library/database/dm/c;->a(I)Ljava/util/List;

    move-result-object v1

    .line 63
    invoke-static {v3}, Lcom/twitter/android/provider/j;->a(Lcom/twitter/library/provider/g;)Ljava/util/Map;

    move-result-object v2

    .line 64
    invoke-static {v1, v3}, Lcom/twitter/android/provider/j;->a(Ljava/util/List;Lcom/twitter/library/provider/fl;)Ljava/util/Map;

    move-result-object v3

    .line 65
    iget-wide v4, p1, Lcom/twitter/android/provider/l;->b:J

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/twitter/android/provider/j;->a(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;JZ)Ljava/util/List;

    move-result-object v0

    .line 67
    invoke-static {v0, v7}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/lang/Iterable;Ldau;)Ljava/util/List;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/twitter/android/provider/j;->b:Ljava/util/Map;

    new-instance v2, Lcmo;

    iget v3, p1, Lcom/twitter/android/provider/l;->d:I

    invoke-static {v0, v3}, Lcom/twitter/android/provider/j;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Lcmo;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/provider/j;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcmf;

    return-object v0
.end method

.method public a(JI)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/provider/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/twitter/android/provider/j;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/twitter/library/database/dm/a;->a(Landroid/content/Context;J)Lcom/twitter/library/database/dm/a;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/twitter/android/provider/j;->a:Landroid/content/Context;

    .line 79
    invoke-static {v1, p1, p2}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v3

    .line 81
    invoke-interface {v0, p3}, Lcom/twitter/library/database/dm/c;->a(I)Ljava/util/List;

    move-result-object v1

    .line 82
    invoke-static {v3}, Lcom/twitter/android/provider/j;->a(Lcom/twitter/library/provider/g;)Ljava/util/Map;

    move-result-object v2

    .line 83
    invoke-static {v1, v3}, Lcom/twitter/android/provider/j;->a(Ljava/util/List;Lcom/twitter/library/provider/fl;)Ljava/util/Map;

    move-result-object v3

    .line 84
    const/4 v6, 0x1

    move-wide v4, p1

    invoke-static/range {v1 .. v6}, Lcom/twitter/android/provider/j;->a(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;JZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public a(Lcom/twitter/android/provider/l;Lsc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/provider/l;",
            "Lsc",
            "<",
            "Lcom/twitter/android/provider/l;",
            "Lcom/twitter/library/provider/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/twitter/android/provider/j;->a(Lcom/twitter/android/provider/l;)Lcmf;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lsc;->a(Ljava/lang/Object;Lcmf;)V

    .line 48
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lsc;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Lcom/twitter/android/provider/l;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/provider/j;->a(Lcom/twitter/android/provider/l;Lsc;)V

    return-void
.end method
