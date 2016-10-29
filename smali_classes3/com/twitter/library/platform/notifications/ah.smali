.class public Lcom/twitter/library/platform/notifications/ah;
.super Lcom/twitter/library/platform/notifications/y;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/twitter/library/platform/notifications/y;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/platform/notifications/a;Landroid/os/Bundle;JLjava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/twitter/library/provider/ar;Lcom/twitter/library/provider/dm;Lcom/twitter/library/provider/b;)V
    .locals 13

    .prologue
    .line 22
    const-string/jumbo v4, "tweet"

    const/4 v5, 0x1

    move-object/from16 v1, p8

    move-wide/from16 v2, p3

    move-object/from16 v6, p10

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/library/provider/ar;->a(JLjava/lang/String;ILcom/twitter/library/provider/b;)I

    .line 23
    const-string/jumbo v0, "text"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 24
    iget-object v11, p1, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    const/4 v3, 0x1

    iget-object v0, p1, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    .line 25
    invoke-virtual {v0}, Lcom/twitter/library/platform/notifications/ae;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p1, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    iget-wide v6, v0, Lcom/twitter/library/platform/notifications/ae;->i:J

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p9

    move-wide/from16 v1, p3

    move-object/from16 v4, p6

    .line 24
    invoke-virtual/range {v0 .. v10}, Lcom/twitter/library/provider/dm;->a(JILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;[B)I

    move-result v0

    iput v0, v11, Lcom/twitter/library/platform/notifications/ae;->r:I

    .line 26
    iget-object v0, p1, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    iget-object v0, v0, Lcom/twitter/library/platform/notifications/ae;->z:Ljava/util/List;

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p1, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    sget-object v1, Lcrp;->d:Ljava/util/List;

    iput-object v1, v0, Lcom/twitter/library/platform/notifications/ae;->z:Ljava/util/List;

    .line 29
    :cond_0
    iget-object v0, p1, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    invoke-virtual/range {p9 .. p9}, Lcom/twitter/library/provider/dm;->n()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/library/platform/notifications/ae;->w:Ljava/util/List;

    .line 30
    return-void
.end method
