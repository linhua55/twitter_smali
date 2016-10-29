.class public Lcom/twitter/library/platform/notifications/g;
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
    .locals 17

    .prologue
    .line 22
    const/16 v4, 0x100

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

    iget-object v15, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    const/16 v7, 0xa

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    iget-wide v10, v4, Lcom/twitter/library/platform/notifications/ae;->i:J

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v4, p9

    move-wide/from16 v5, p3

    invoke-virtual/range {v4 .. v14}, Lcom/twitter/library/provider/dm;->a(JILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;[B)I

    move-result v4

    iput v4, v15, Lcom/twitter/library/platform/notifications/ae;->r:I

    .line 26
    const-string/jumbo v4, "uri_new"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 27
    invoke-static {v4}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 28
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    iput-object v4, v5, Lcom/twitter/library/platform/notifications/ae;->m:Ljava/lang/String;

    .line 32
    :goto_0
    const/16 v4, 0x100

    move-object/from16 v0, p1

    iput v4, v0, Lcom/twitter/library/platform/notifications/a;->f:I

    .line 33
    return-void

    .line 30
    :cond_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/twitter/library/platform/notifications/a;->h:Lcom/twitter/library/platform/notifications/ae;

    const-string/jumbo v5, "uri"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/twitter/library/platform/notifications/ae;->m:Ljava/lang/String;

    goto :goto_0
.end method
