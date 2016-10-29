.class public Lcom/twitter/android/media/stickers/data/j;
.super Lcom/twitter/internal/android/service/AsyncOperation;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/internal/android/service/AsyncOperation",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/library/provider/dm;

.field private final b:Lcpj;


# direct methods
.method public constructor <init>(Lcom/twitter/library/provider/dm;Lcpj;)V
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "write_stickers_to_db"

    invoke-direct {p0, v0}, Lcom/twitter/internal/android/service/AsyncOperation;-><init>(Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/twitter/android/media/stickers/data/j;->a:Lcom/twitter/library/provider/dm;

    .line 38
    iput-object p2, p0, Lcom/twitter/android/media/stickers/data/j;->b:Lcpj;

    .line 39
    return-void
.end method

.method private static a(Lcom/twitter/database/hydrator/a;Lbhz;Lcpf;)Lbhz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/database/hydrator/a",
            "<-",
            "Lcpf;",
            "Lbhz;",
            ">;",
            "Lbhz;",
            "Lcpf;",
            ")",
            "Lbhz;"
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0, p2, p1}, Lcom/twitter/database/hydrator/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhz;

    const/4 v1, 0x1

    .line 160
    invoke-interface {v0, v1}, Lbhz;->a(Z)Lbhz;

    move-result-object v0

    .line 157
    return-object v0
.end method

.method private static a(Lcom/twitter/database/model/k;Lcom/twitter/database/model/k;Lcom/twitter/database/model/k;Lcom/twitter/database/model/l;Ljava/util/List;Z)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/database/model/k",
            "<",
            "Lbid;",
            ">;",
            "Lcom/twitter/database/model/k",
            "<",
            "Lbhx;",
            ">;",
            "Lcom/twitter/database/model/k",
            "<",
            "Lbhz;",
            ">;",
            "Lcom/twitter/database/model/l;",
            "Ljava/util/List",
            "<",
            "Lcpy;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 90
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcpy;

    .line 91
    iget-wide v6, v2, Lcpy;->a:J

    .line 92
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/database/model/k;->d:Ljava/lang/Object;

    check-cast v3, Lbid;

    .line 93
    invoke-interface {v3, v6, v7}, Lbid;->c(J)Lbid;

    move-result-object v3

    iget-wide v8, v2, Lcpy;->b:J

    .line 94
    invoke-interface {v3, v8, v9}, Lbid;->d(J)Lbid;

    move-result-object v3

    iget-object v5, v2, Lcpy;->e:Ljava/lang/String;

    .line 95
    invoke-interface {v3, v5}, Lbid;->a(Ljava/lang/String;)Lbid;

    move-result-object v3

    iget-object v5, v2, Lcpy;->d:Lcpk;

    .line 96
    invoke-interface {v3, v5}, Lbid;->a(Lcpk;)Lbid;

    move-result-object v3

    .line 97
    move/from16 v0, p5

    invoke-interface {v3, v0}, Lbid;->a(Z)Lbid;

    move-result-object v3

    iget-boolean v5, v2, Lcpy;->g:Z

    .line 98
    invoke-interface {v3, v5}, Lbid;->b(Z)Lbid;

    move-result-object v3

    iget-object v5, v2, Lcpy;->h:Ljava/lang/String;

    .line 99
    invoke-interface {v3, v5}, Lbid;->b(Ljava/lang/String;)Lbid;

    move-result-object v3

    iget-object v5, v2, Lcpy;->i:Lcqb;

    iget-wide v8, v5, Lcqb;->b:J

    .line 100
    invoke-interface {v3, v8, v9}, Lbid;->e(J)Lbid;

    move-result-object v3

    iget-object v5, v2, Lcpy;->i:Lcqb;

    iget-wide v8, v5, Lcqb;->c:J

    .line 101
    invoke-interface {v3, v8, v9}, Lbid;->f(J)Lbid;

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/database/model/k;->b()J

    move-result-wide v8

    .line 103
    const-wide/16 v10, -0x1

    cmp-long v3, v8, v10

    if-nez v3, :cond_0

    .line 104
    const/4 v2, 0x0

    .line 151
    :goto_1
    return v2

    .line 106
    :cond_0
    invoke-interface/range {p3 .. p3}, Lcom/twitter/database/model/l;->h()Lcom/twitter/database/model/w;

    move-result-object v5

    .line 109
    :try_start_0
    const-class v3, Lcpf;

    const-class v8, Lbhz;

    invoke-static {v3, v8}, Lcom/twitter/database/hydrator/d;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/twitter/database/hydrator/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 110
    if-nez v8, :cond_1

    .line 111
    const/4 v2, 0x0

    .line 148
    invoke-interface {v5}, Lcom/twitter/database/model/w;->close()V

    goto :goto_1

    .line 114
    :cond_1
    :try_start_1
    iget-object v2, v2, Lcpy;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcqa;

    .line 115
    invoke-virtual {v2}, Lcqa;->a()Lcpf;

    move-result-object v10

    .line 116
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/twitter/database/model/k;->d:Ljava/lang/Object;

    check-cast v3, Lbhz;

    invoke-static {v8, v3, v10}, Lcom/twitter/android/media/stickers/data/j;->a(Lcom/twitter/database/hydrator/a;Lbhz;Lcpf;)Lbhz;

    .line 117
    invoke-virtual/range {p2 .. p2}, Lcom/twitter/database/model/k;->c()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v12

    .line 118
    const-wide/16 v14, -0x1

    cmp-long v3, v12, v14

    if-nez v3, :cond_3

    .line 119
    const/4 v2, 0x0

    .line 148
    invoke-interface {v5}, Lcom/twitter/database/model/w;->close()V

    goto :goto_1

    .line 122
    :cond_3
    :try_start_2
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/twitter/database/model/k;->d:Ljava/lang/Object;

    check-cast v3, Lbhx;

    iget-wide v12, v10, Lcpf;->h:J

    .line 123
    invoke-interface {v3, v12, v13}, Lbhx;->b(J)Lcom/twitter/database/model/v;

    move-result-object v3

    check-cast v3, Lbhx;

    .line 124
    invoke-interface {v3, v6, v7}, Lbhx;->c(J)Lbhx;

    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/twitter/database/model/k;->c()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v12

    .line 126
    const-wide/16 v14, -0x1

    cmp-long v3, v12, v14

    if-nez v3, :cond_4

    .line 127
    const/4 v2, 0x0

    .line 148
    invoke-interface {v5}, Lcom/twitter/database/model/w;->close()V

    goto :goto_1

    .line 129
    :cond_4
    :try_start_3
    iget-object v2, v2, Lcqa;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcpf;

    .line 130
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/twitter/database/model/k;->d:Ljava/lang/Object;

    check-cast v3, Lbhz;

    invoke-static {v8, v3, v2}, Lcom/twitter/android/media/stickers/data/j;->a(Lcom/twitter/database/hydrator/a;Lbhz;Lcpf;)Lbhz;

    move-result-object v3

    iget-wide v12, v10, Lcpf;->h:J

    .line 131
    invoke-interface {v3, v12, v13}, Lbhz;->f(J)Lbhz;

    .line 132
    invoke-virtual/range {p2 .. p2}, Lcom/twitter/database/model/k;->c()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v12

    .line 133
    const-wide/16 v14, -0x1

    cmp-long v3, v12, v14

    if-nez v3, :cond_6

    .line 134
    const/4 v2, 0x0

    .line 148
    invoke-interface {v5}, Lcom/twitter/database/model/w;->close()V

    goto/16 :goto_1

    .line 137
    :cond_6
    :try_start_4
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/twitter/database/model/k;->d:Ljava/lang/Object;

    check-cast v3, Lbhx;

    iget-wide v12, v2, Lcpf;->h:J

    .line 138
    invoke-interface {v3, v12, v13}, Lbhx;->b(J)Lcom/twitter/database/model/v;

    move-result-object v2

    check-cast v2, Lbhx;

    .line 139
    invoke-interface {v2, v6, v7}, Lbhx;->c(J)Lbhx;

    .line 140
    invoke-virtual/range {p1 .. p1}, Lcom/twitter/database/model/k;->c()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v2

    .line 141
    const-wide/16 v12, -0x1

    cmp-long v2, v2, v12

    if-nez v2, :cond_5

    .line 142
    const/4 v2, 0x0

    .line 148
    invoke-interface {v5}, Lcom/twitter/database/model/w;->close()V

    goto/16 :goto_1

    .line 146
    :cond_7
    :try_start_5
    invoke-interface {v5}, Lcom/twitter/database/model/w;->a()Lcom/twitter/database/model/w;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 148
    invoke-interface {v5}, Lcom/twitter/database/model/w;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v5}, Lcom/twitter/database/model/w;->close()V

    throw v2

    .line 151
    :cond_8
    const/4 v2, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method protected a()Ljava/lang/Boolean;
    .locals 14

    .prologue
    .line 43
    iget-object v0, p0, Lcom/twitter/android/media/stickers/data/j;->a:Lcom/twitter/library/provider/dm;

    invoke-virtual {v0}, Lcom/twitter/library/provider/dm;->d()Lcom/twitter/database/schema/TwitterSchema;

    move-result-object v3

    .line 44
    const-class v0, Lbic;

    .line 45
    invoke-interface {v3, v0}, Lcom/twitter/database/model/l;->c(Ljava/lang/Class;)Lcom/twitter/database/model/r;

    move-result-object v7

    .line 46
    invoke-interface {v7}, Lcom/twitter/database/model/r;->b()Lcom/twitter/database/model/k;

    move-result-object v0

    .line 47
    const-class v1, Lbhw;

    .line 48
    invoke-interface {v3, v1}, Lcom/twitter/database/model/l;->c(Ljava/lang/Class;)Lcom/twitter/database/model/r;

    move-result-object v8

    .line 49
    invoke-interface {v8}, Lcom/twitter/database/model/r;->b()Lcom/twitter/database/model/k;

    move-result-object v1

    .line 50
    const-class v2, Lbhy;

    invoke-interface {v3, v2}, Lcom/twitter/database/model/l;->c(Ljava/lang/Class;)Lcom/twitter/database/model/r;

    move-result-object v2

    .line 51
    invoke-interface {v2}, Lcom/twitter/database/model/r;->b()Lcom/twitter/database/model/k;

    move-result-object v2

    .line 52
    iget-object v4, p0, Lcom/twitter/android/media/stickers/data/j;->b:Lcpj;

    iget-object v4, v4, Lcpj;->a:Ljava/util/List;

    invoke-static {v4}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 54
    const-string/jumbo v4, ""

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v7, v4, v5}, Lcom/twitter/database/model/r;->a(Ljava/lang/String;[Ljava/lang/String;)I

    .line 55
    const-string/jumbo v4, ""

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v8, v4, v5}, Lcom/twitter/database/model/r;->a(Ljava/lang/String;[Ljava/lang/String;)I

    .line 67
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/twitter/android/media/stickers/data/j;->b:Lcpj;

    iget-object v4, v4, Lcpj;->a:Ljava/util/List;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/media/stickers/data/j;->a(Lcom/twitter/database/model/k;Lcom/twitter/database/model/k;Lcom/twitter/database/model/k;Lcom/twitter/database/model/l;Ljava/util/List;Z)Z

    move-result v6

    .line 69
    iget-object v4, p0, Lcom/twitter/android/media/stickers/data/j;->b:Lcpj;

    iget-object v4, v4, Lcpj;->b:Ljava/util/List;

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/media/stickers/data/j;->a(Lcom/twitter/database/model/k;Lcom/twitter/database/model/k;Lcom/twitter/database/model/k;Lcom/twitter/database/model/l;Ljava/util/List;Z)Z

    move-result v0

    .line 73
    if-eqz v6, :cond_1

    if-nez v0, :cond_2

    .line 74
    :cond_1
    const-string/jumbo v1, ""

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v7, v1, v2}, Lcom/twitter/database/model/r;->a(Ljava/lang/String;[Ljava/lang/String;)I

    .line 75
    const-string/jumbo v1, ""

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v8, v1, v2}, Lcom/twitter/database/model/r;->a(Ljava/lang/String;[Ljava/lang/String;)I

    .line 77
    :cond_2
    if-eqz v6, :cond_5

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 56
    :cond_3
    iget-object v4, p0, Lcom/twitter/android/media/stickers/data/j;->b:Lcpj;

    iget-object v4, v4, Lcpj;->b:Ljava/util/List;

    invoke-static {v4}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 58
    const-string/jumbo v4, "is_featured"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lbar;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v7, v4, v5}, Lcom/twitter/database/model/r;->a(Ljava/lang/String;[Ljava/lang/String;)I

    .line 59
    iget-object v4, p0, Lcom/twitter/android/media/stickers/data/j;->b:Lcpj;

    iget-object v4, v4, Lcpj;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v9, v4, [Ljava/lang/Long;

    .line 60
    const/4 v4, 0x0

    .line 61
    iget-object v5, p0, Lcom/twitter/android/media/stickers/data/j;->b:Lcpj;

    iget-object v5, v5, Lcpj;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v5, v4

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcpy;

    .line 62
    add-int/lit8 v6, v5, 0x1

    iget-wide v12, v4, Lcpy;->a:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v9, v5

    move v5, v6

    .line 63
    goto :goto_2

    .line 64
    :cond_4
    const-string/jumbo v4, "category_id"

    invoke-static {v4, v9}, Lbar;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v8, v4, v5}, Lcom/twitter/database/model/r;->a(Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 77
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected b()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/data/j;->b()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/twitter/android/media/stickers/data/j;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
