.class public Lbsf;
.super Lcom/twitter/library/service/o;
.source "Twttr"


# instance fields
.field private final a:I

.field private final b:[J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;ILjava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/library/client/Session;",
            "I",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    const-class v0, Lbsf;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/service/o;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 38
    iput p3, p0, Lbsf;->a:I

    .line 39
    invoke-static {p4}, Lcom/twitter/util/collection/CollectionUtils;->e(Ljava/util/Collection;)[J

    move-result-object v0

    iput-object v0, p0, Lbsf;->b:[J

    .line 40
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 44
    invoke-virtual {p0}, Lbsf;->h()Lcom/twitter/library/service/ab;

    move-result-object v1

    .line 45
    iget-wide v2, v1, Lcom/twitter/library/service/ab;->c:J

    .line 46
    iget v4, p0, Lbsf;->a:I

    .line 47
    invoke-virtual {p0}, Lbsf;->s()Lcom/twitter/library/provider/dm;

    move-result-object v1

    .line 48
    invoke-virtual {p0}, Lbsf;->t()Lcom/twitter/library/provider/b;

    move-result-object v8

    .line 49
    iget-object v7, p0, Lbsf;->b:[J

    .line 51
    if-eqz v7, :cond_0

    .line 53
    const-wide/16 v5, -0x1

    invoke-virtual/range {v1 .. v8}, Lcom/twitter/library/provider/dm;->a(JIJ[JLcom/twitter/library/provider/b;)V

    .line 74
    :goto_0
    invoke-virtual {v8}, Lcom/twitter/library/provider/b;->a()V

    .line 75
    return-void

    .line 56
    :cond_0
    iget-object v6, p0, Lbsf;->h:Landroid/content/Context;

    invoke-static {v6}, Lcom/twitter/library/provider/ar;->a(Landroid/content/Context;)Lcom/twitter/library/provider/ar;

    move-result-object v7

    .line 57
    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 59
    :sswitch_0
    const-string/jumbo v4, "tweet"

    move-object v1, v7

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/library/provider/ar;->a(JLjava/lang/String;ILcom/twitter/library/provider/b;)I

    goto :goto_0

    .line 63
    :sswitch_1
    const/4 v4, 0x1

    invoke-virtual {v1, v5, v8, v4}, Lcom/twitter/library/provider/dm;->a(ILcom/twitter/library/provider/b;Z)V

    .line 65
    const-string/jumbo v4, "mention"

    move-object v1, v7

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/library/provider/ar;->a(JLjava/lang/String;ILcom/twitter/library/provider/b;)I

    .line 66
    const-string/jumbo v4, "unread_interactions"

    move-object v1, v7

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/library/provider/ar;->a(JLjava/lang/String;ILcom/twitter/library/provider/b;)I

    goto :goto_0

    .line 57
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method
