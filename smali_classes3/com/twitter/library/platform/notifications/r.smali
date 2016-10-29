.class public Lcom/twitter/library/platform/notifications/r;
.super Lcom/twitter/library/platform/notifications/y;
.source "Twttr"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/twitter/library/platform/notifications/y;-><init>()V

    .line 46
    iput p1, p0, Lcom/twitter/library/platform/notifications/r;->a:I

    .line 47
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;
    .locals 8

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/provider/cw;->a:Landroid/net/Uri;

    .line 132
    invoke-static {v1, p2, p3}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lbnw;->a:[Ljava/lang/String;

    const-string/jumbo v3, "conversations_conversation_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    .line 131
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 136
    if-nez v1, :cond_0

    .line 137
    const/4 v1, 0x0

    .line 152
    :goto_0
    return-object v1

    .line 140
    :cond_0
    new-instance v0, Lcgf;

    const/4 v6, 0x0

    move-wide v2, p2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcgf;-><init>(Landroid/database/Cursor;JLandroid/content/Context;Ljava/lang/String;Z)V

    .line 144
    :try_start_0
    invoke-virtual {v0}, Lcgf;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    invoke-virtual {v0}, Lcgf;->g()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 150
    :goto_1
    invoke-virtual {v0}, Lcgf;->close()V

    goto :goto_0

    .line 147
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 150
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcgf;->close()V

    throw v1
.end method

.method public static a(Lcom/twitter/model/dms/l;ILcom/twitter/library/platform/notifications/ae;)[B
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/twitter/model/dms/l;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    invoke-virtual {p0}, Lcom/twitter/model/dms/l;->p()Lcom/twitter/model/dms/i;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/bk;

    .line 108
    invoke-virtual {v0}, Lcom/twitter/model/dms/bk;->j()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-virtual {p0}, Lcom/twitter/model/dms/l;->u()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    iput-object v1, p2, Lcom/twitter/library/platform/notifications/ae;->n:Ljava/lang/String;

    .line 112
    :cond_0
    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {v0}, Lcom/twitter/model/dms/bk;->a()I

    move-result v0

    .line 112
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/twitter/util/serialization/i;->c:Lcom/twitter/util/serialization/ah;

    invoke-static {v0, v1}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v0

    .line 120
    :goto_1
    return-object v0

    .line 113
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 114
    :cond_2
    sget-object v0, Lcom/twitter/model/dms/i;->b:[I

    invoke-static {v0, p1}, Lcom/twitter/util/collection/CollectionUtils;->a([II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/twitter/util/serialization/i;->c:Lcom/twitter/util/serialization/ah;

    invoke-static {v0, v1}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v0

    goto :goto_1

    .line 117
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/twitter/library/platform/notifications/a;Landroid/os/Bundle;JLjava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/twitter/library/provider/ar;Lcom/twitter/library/provider/dm;Lcom/twitter/library/provider/b;)V
    .locals 15

    .prologue
    .line 54
    const-string/jumbo v2, "notification_dm_data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    const-string/jumbo v2, "notification_dm_data"

    sget-object v3, Lcom/twitter/model/dms/bo;->h:Lcom/twitter/util/serialization/ah;

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/twitter/model/dms/l;

    .line 59
    const-string/jumbo v2, "recipient_id"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 60
    const/16 v2, 0x16

    iget v3, p0, Lcom/twitter/library/platform/notifications/r;->a:I

    if-ne v2, v3, :cond_1

    .line 61
    new-instance v2, Lcom/twitter/model/dms/dn;

    invoke-direct {v2}, Lcom/twitter/model/dms/dn;-><init>()V

    .line 63
    invoke-virtual {v13}, Lcom/twitter/model/dms/l;->f()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/twitter/model/dms/dn;->a(J)Lcom/twitter/model/dms/dm;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/dms/dn;

    .line 64
    invoke-virtual {v2}, Lcom/twitter/model/dms/dn;->q()Ljava/lang/Object;

    move-result-object v3

    const/4 v2, 0x1

    new-array v6, v2, [Lcom/twitter/model/dms/Participant;

    const/4 v7, 0x0

    new-instance v2, Lcom/twitter/model/dms/dn;

    invoke-direct {v2}, Lcom/twitter/model/dms/dn;-><init>()V

    .line 66
    invoke-virtual {v2, v4, v5}, Lcom/twitter/model/dms/dn;->a(J)Lcom/twitter/model/dms/dm;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/dms/dn;

    .line 67
    invoke-virtual {v2}, Lcom/twitter/model/dms/dn;->q()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/dms/Participant;

    aput-object v2, v6, v7

    .line 61
    invoke-static {v3, v6}, Lcom/twitter/util/collection/au;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    .line 69
    const/4 v2, 0x0

    .line 74
    :goto_0
    const-string/jumbo v6, "notification_dm_attachment_type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 75
    new-instance v7, Lcom/twitter/model/dms/an;

    invoke-direct {v7}, Lcom/twitter/model/dms/an;-><init>()V

    .line 76
    invoke-virtual {v7, v2}, Lcom/twitter/model/dms/an;->a(I)Lcom/twitter/model/dms/an;

    move-result-object v2

    .line 77
    invoke-virtual {v2, v3}, Lcom/twitter/model/dms/an;->a(Ljava/util/Collection;)Lcom/twitter/model/dms/an;

    move-result-object v2

    iget-object v3, v13, Lcom/twitter/model/dms/l;->e:Ljava/lang/String;

    .line 78
    invoke-virtual {v2, v3}, Lcom/twitter/model/dms/an;->c(Ljava/lang/String;)Lcom/twitter/model/dms/an;

    move-result-object v2

    iget-wide v8, v13, Lcom/twitter/model/dms/l;->d:J

    .line 79
    invoke-virtual {v2, v8, v9}, Lcom/twitter/model/dms/an;->b(J)Lcom/twitter/model/dms/an;

    move-result-object v2

    iget-wide v8, v13, Lcom/twitter/model/dms/l;->f:J

    .line 80
    invoke-virtual {v2, v8, v9}, Lcom/twitter/model/dms/an;->c(J)Lcom/twitter/model/dms/an;

    move-result-object v2

    .line 81
    invoke-virtual {v2}, Lcom/twitter/model/dms/an;->q()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/dms/al;

    .line 82
    const/4 v3, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/provider/dm;->a(Lcom/twitter/model/dms/al;Z)V

    .line 83
    const/4 v2, 0x0

    move-object/from16 v0, p9

    move-object/from16 v1, p10

    invoke-virtual {v0, v13, v2, v1}, Lcom/twitter/library/provider/dm;->a(Lcom/twitter/model/dms/b;ZLcom/twitter/library/provider/b;)V

    .line 84
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    invoke-static {v13, v6, v2}, Lcom/twitter/library/platform/notifications/r;->a(Lcom/twitter/model/dms/l;ILcom/twitter/library/platform/notifications/ae;)[B

    move-result-object v12

    .line 85
    invoke-static {}, Lbnv;->p()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    const-string/jumbo v3, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/twitter/library/platform/notifications/ae;->f:Ljava/lang/String;

    .line 91
    :goto_1
    const-string/jumbo v2, "text"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 92
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    const/16 v5, 0xd

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    .line 93
    invoke-virtual {v2}, Lcom/twitter/library/platform/notifications/ae;->a()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    iget-wide v8, v2, Lcom/twitter/library/platform/notifications/ae;->i:J

    iget-object v11, v13, Lcom/twitter/model/dms/l;->e:Ljava/lang/String;

    move-object/from16 v2, p9

    move-wide/from16 v3, p3

    move-object/from16 v6, p6

    .line 92
    invoke-virtual/range {v2 .. v12}, Lcom/twitter/library/provider/dm;->a(JILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;[B)I

    move-result v2

    iput v2, v14, Lcom/twitter/library/platform/notifications/ae;->r:I

    .line 95
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    iget-object v3, v13, Lcom/twitter/model/dms/l;->e:Ljava/lang/String;

    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Lcom/twitter/library/provider/dm;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/twitter/library/platform/notifications/ae;->w:Ljava/util/List;

    .line 96
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    iget-object v3, v13, Lcom/twitter/model/dms/l;->e:Ljava/lang/String;

    iput-object v3, v2, Lcom/twitter/library/platform/notifications/ae;->k:Ljava/lang/String;

    .line 97
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    iget-object v3, v3, Lcom/twitter/library/platform/notifications/ae;->w:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, v2, Lcom/twitter/library/platform/notifications/ae;->c:I

    .line 99
    :cond_0
    return-void

    .line 71
    :cond_1
    const/4 v3, 0x0

    .line 72
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 88
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    iget-object v3, v13, Lcom/twitter/model/dms/l;->e:Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-static {v0, v3, v4, v5}, Lcom/twitter/library/platform/notifications/r;->a(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/twitter/library/platform/notifications/ae;->f:Ljava/lang/String;

    goto :goto_1
.end method
