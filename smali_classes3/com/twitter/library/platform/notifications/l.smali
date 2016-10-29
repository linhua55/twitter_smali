.class public Lcom/twitter/library/platform/notifications/l;
.super Lcom/twitter/library/platform/notifications/y;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/twitter/library/platform/notifications/y;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/platform/notifications/a;Landroid/os/Bundle;JLjava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/twitter/library/provider/ar;Lcom/twitter/library/provider/dm;Lcom/twitter/library/provider/b;)V
    .locals 15

    .prologue
    .line 30
    const-string/jumbo v2, "notification_dm_data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    const-string/jumbo v2, "recipient_id"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 32
    const-string/jumbo v2, "notification_dm_data"

    sget-object v3, Lcom/twitter/model/dms/cz;->g:Lcom/twitter/util/serialization/ah;

    .line 33
    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v2

    .line 32
    invoke-static {v2}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/twitter/model/dms/cz;

    .line 34
    new-instance v2, Lcom/twitter/model/dms/dn;

    invoke-direct {v2}, Lcom/twitter/model/dms/dn;-><init>()V

    .line 36
    invoke-virtual {v13}, Lcom/twitter/model/dms/cz;->f()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/twitter/model/dms/dn;->a(J)Lcom/twitter/model/dms/dm;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/dms/dn;

    .line 37
    invoke-virtual {v2}, Lcom/twitter/model/dms/dn;->q()Ljava/lang/Object;

    move-result-object v3

    const/4 v2, 0x1

    new-array v6, v2, [Lcom/twitter/model/dms/Participant;

    const/4 v7, 0x0

    new-instance v2, Lcom/twitter/model/dms/dn;

    invoke-direct {v2}, Lcom/twitter/model/dms/dn;-><init>()V

    .line 39
    invoke-virtual {v2, v4, v5}, Lcom/twitter/model/dms/dn;->a(J)Lcom/twitter/model/dms/dm;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/dms/dn;

    .line 40
    invoke-virtual {v2}, Lcom/twitter/model/dms/dn;->q()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/dms/Participant;

    aput-object v2, v6, v7

    .line 34
    invoke-static {v3, v6}, Lcom/twitter/util/collection/au;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 42
    new-instance v3, Lcom/twitter/model/dms/an;

    invoke-direct {v3}, Lcom/twitter/model/dms/an;-><init>()V

    const/4 v4, 0x1

    .line 43
    invoke-virtual {v3, v4}, Lcom/twitter/model/dms/an;->a(I)Lcom/twitter/model/dms/an;

    move-result-object v3

    .line 44
    invoke-virtual {v3, v2}, Lcom/twitter/model/dms/an;->a(Ljava/util/Collection;)Lcom/twitter/model/dms/an;

    move-result-object v2

    iget-object v3, v13, Lcom/twitter/model/dms/cz;->e:Ljava/lang/String;

    .line 45
    invoke-virtual {v2, v3}, Lcom/twitter/model/dms/an;->c(Ljava/lang/String;)Lcom/twitter/model/dms/an;

    move-result-object v2

    iget-wide v4, v13, Lcom/twitter/model/dms/cz;->d:J

    .line 46
    invoke-virtual {v2, v4, v5}, Lcom/twitter/model/dms/an;->b(J)Lcom/twitter/model/dms/an;

    move-result-object v2

    iget-wide v4, v13, Lcom/twitter/model/dms/cz;->f:J

    .line 47
    invoke-virtual {v2, v4, v5}, Lcom/twitter/model/dms/an;->c(J)Lcom/twitter/model/dms/an;

    move-result-object v2

    .line 48
    invoke-virtual {v2}, Lcom/twitter/model/dms/an;->q()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/dms/al;

    .line 49
    const/4 v3, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/provider/dm;->a(Lcom/twitter/model/dms/al;Z)V

    .line 50
    const/4 v2, 0x0

    move-object/from16 v0, p9

    move-object/from16 v1, p10

    invoke-virtual {v0, v13, v2, v1}, Lcom/twitter/library/provider/dm;->a(Lcom/twitter/model/dms/b;ZLcom/twitter/library/provider/b;)V

    .line 51
    const-string/jumbo v2, "text"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 52
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    const/16 v5, 0xd

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    .line 53
    invoke-virtual {v2}, Lcom/twitter/library/platform/notifications/ae;->a()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    iget-wide v8, v2, Lcom/twitter/library/platform/notifications/ae;->i:J

    iget-object v11, v13, Lcom/twitter/model/dms/cz;->e:Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v2, p9

    move-wide/from16 v3, p3

    move-object/from16 v6, p6

    .line 52
    invoke-virtual/range {v2 .. v12}, Lcom/twitter/library/provider/dm;->a(JILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;[B)I

    move-result v2

    iput v2, v14, Lcom/twitter/library/platform/notifications/ae;->r:I

    .line 55
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    iget-object v3, v13, Lcom/twitter/model/dms/cz;->e:Ljava/lang/String;

    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Lcom/twitter/library/provider/dm;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/twitter/library/platform/notifications/ae;->w:Ljava/util/List;

    .line 56
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    iget-object v3, v13, Lcom/twitter/model/dms/cz;->e:Ljava/lang/String;

    iput-object v3, v2, Lcom/twitter/library/platform/notifications/ae;->k:Ljava/lang/String;

    .line 58
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    iget-object v3, v3, Lcom/twitter/library/platform/notifications/ae;->w:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, v2, Lcom/twitter/library/platform/notifications/ae;->c:I

    .line 59
    return-void
.end method
