.class public Lbsg;
.super Lbsn;
.source "Twttr"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;J)V
    .locals 9

    .prologue
    .line 19
    const-class v0, Lbsg;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v7}, Lbsn;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;JILjava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected h()Lcom/twitter/library/service/e;
    .locals 4

    .prologue
    .line 25
    invoke-virtual {p0}, Lbsg;->K()Lcom/twitter/library/service/e;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "statuses"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "media_timeline"

    aput-object v3, v1, v2

    .line 26
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    iget-wide v2, p0, Lbsg;->a:J

    .line 27
    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;J)Lcom/twitter/library/service/e;

    move-result-object v0

    .line 25
    return-object v0
.end method
