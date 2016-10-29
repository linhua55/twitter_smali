.class public Lbsd;
.super Lbsn;
.source "Twttr"


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLjava/lang/String;)V
    .locals 9

    .prologue
    .line 19
    const-class v0, Lbsd;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xf

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lbsn;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;JILjava/lang/String;)V

    .line 20
    iput-object p5, p0, Lbsd;->b:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method protected h()Lcom/twitter/library/service/e;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 25
    invoke-virtual {p0}, Lbsd;->K()Lcom/twitter/library/service/e;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "lists"

    aput-object v3, v1, v2

    const-string/jumbo v2, "statuses"

    aput-object v2, v1, v4

    .line 26
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "list_id"

    iget-object v2, p0, Lbsd;->b:Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "include_rts"

    .line 28
    invoke-virtual {v0, v1, v4}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    move-result-object v0

    .line 25
    return-object v0
.end method
