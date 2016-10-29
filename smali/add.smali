.class public Ladd;
.super Lbab;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbab",
        "<",
        "Ljava/lang/Long;",
        "Lcom/twitter/util/collection/ab",
        "<",
        "Lcom/twitter/model/core/TwitterUser;",
        ">;",
        "Lbvg;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/library/client/Session;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lbab;-><init>()V

    .line 20
    iput-object p1, p0, Ladd;->a:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Ladd;->b:Lcom/twitter/library/client/Session;

    .line 22
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Long;)Lbvg;
    .locals 7

    .prologue
    .line 33
    if-nez p1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Cannot query for user with null user ID"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    new-instance v1, Lbvg;

    iget-object v2, p0, Ladd;->a:Landroid/content/Context;

    iget-object v3, p0, Ladd;->b:Lcom/twitter/library/client/Session;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lbvg;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLjava/lang/String;)V

    return-object v1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Lcom/twitter/library/service/x;
    .locals 1

    .prologue
    .line 14
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Ladd;->a(Ljava/lang/Long;)Lbvg;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lbvg;)Lcom/twitter/util/collection/ab;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbvg;",
            ")",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p1, Lbvg;->a:Lcom/twitter/model/core/TwitterUser;

    invoke-static {v0}, Lcom/twitter/util/collection/ab;->b(Ljava/lang/Object;)Lcom/twitter/util/collection/ab;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/twitter/library/service/x;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lbvg;

    invoke-virtual {p0, p1}, Ladd;->a(Lbvg;)Lcom/twitter/util/collection/ab;

    move-result-object v0

    return-object v0
.end method
