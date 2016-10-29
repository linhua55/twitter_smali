.class public Lcom/twitter/library/platform/notifications/e;
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
    .locals 15

    .prologue
    .line 22
    const/16 v4, 0x20

    move-object/from16 v0, p8

    move-wide/from16 v1, p3

    move-object/from16 v3, p10

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/twitter/library/provider/ar;->a(JILcom/twitter/library/provider/b;)I

    .line 23
    const-string/jumbo v4, "text"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 24
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    const/16 v7, 0x8

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    .line 25
    invoke-virtual {v4}, Lcom/twitter/library/platform/notifications/ae;->a()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    iget-wide v10, v4, Lcom/twitter/library/platform/notifications/ae;->i:J

    const/4 v13, 0x0

    move-object/from16 v4, p9

    move-wide/from16 v5, p3

    move-object/from16 v8, p6

    .line 24
    invoke-virtual/range {v4 .. v13}, Lcom/twitter/library/provider/dm;->a(JILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)I

    move-result v4

    iput v4, v14, Lcom/twitter/library/platform/notifications/ae;->r:I

    .line 27
    const/16 v4, 0x20

    move-object/from16 v0, p1

    iput v4, v0, Lcom/twitter/library/platform/notifications/a;->f:I

    .line 28
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    iget-object v4, v4, Lcom/twitter/library/platform/notifications/ae;->z:Ljava/util/List;

    if-nez v4, :cond_0

    .line 29
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    sget-object v5, Lcrp;->f:Ljava/util/List;

    iput-object v5, v4, Lcom/twitter/library/platform/notifications/ae;->z:Ljava/util/List;

    .line 31
    :cond_0
    return-void
.end method
