.class public Lcom/twitter/library/api/dm/requests/n;
.super Lcom/twitter/library/api/dm/requests/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/api/dm/requests/d",
        "<",
        "Lcom/twitter/library/api/t;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/twitter/library/api/dm/requests/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/library/api/dm/requests/n;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/twitter/library/api/dm/requests/n;->a:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/api/dm/requests/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 36
    invoke-static {p3}, Lcom/twitter/util/object/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/api/dm/requests/n;->b:Ljava/lang/String;

    .line 37
    iput-boolean p4, p0, Lcom/twitter/library/api/dm/requests/n;->c:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/service/ab;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/twitter/library/api/dm/requests/n;->a:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/api/dm/requests/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/service/ab;)V

    .line 43
    invoke-static {p3}, Lcom/twitter/util/object/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/api/dm/requests/n;->b:Ljava/lang/String;

    .line 44
    iput-boolean p4, p0, Lcom/twitter/library/api/dm/requests/n;->c:Z

    .line 45
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/t;)V
    .locals 4

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/twitter/library/api/dm/requests/n;->S()Lcom/twitter/library/provider/dm;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Lcom/twitter/library/api/dm/requests/n;->T()Lcom/twitter/library/provider/b;

    move-result-object v1

    .line 89
    invoke-virtual {p1}, Lcom/twitter/internal/network/HttpOperation;->l()Lcom/twitter/internal/network/k;

    move-result-object v2

    iget v2, v2, Lcom/twitter/internal/network/k;->a:I

    const/16 v3, 0x194

    if-eq v2, v3, :cond_0

    .line 90
    invoke-virtual {p1}, Lcom/twitter/internal/network/HttpOperation;->l()Lcom/twitter/internal/network/k;

    move-result-object v2

    iget v2, v2, Lcom/twitter/internal/network/k;->a:I

    const/16 v3, 0x191

    if-ne v2, v3, :cond_1

    .line 94
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/twitter/library/service/aa;->a(Z)V

    .line 97
    :cond_1
    invoke-virtual {p2}, Lcom/twitter/library/service/aa;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    iget-object v2, p0, Lcom/twitter/library/api/dm/requests/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/twitter/library/provider/dm;->b(Ljava/lang/String;Lcom/twitter/library/provider/b;)V

    .line 104
    :goto_0
    invoke-virtual {v1}, Lcom/twitter/library/provider/b;->a()V

    .line 105
    return-void

    .line 102
    :cond_2
    iget-object v2, p0, Lcom/twitter/library/api/dm/requests/n;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/twitter/library/provider/dm;->b(Ljava/lang/String;ZLcom/twitter/library/provider/b;)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/service/c;)V
    .locals 0

    .prologue
    .line 26
    check-cast p3, Lcom/twitter/library/api/t;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/library/api/dm/requests/n;->a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/t;)V

    return-void
.end method

.method protected b()Lcom/twitter/library/service/e;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 72
    invoke-virtual {p0}, Lcom/twitter/library/api/dm/requests/n;->K()Lcom/twitter/library/service/e;

    move-result-object v0

    sget-object v1, Lcom/twitter/internal/network/HttpOperation$RequestMethod;->b:Lcom/twitter/internal/network/HttpOperation$RequestMethod;

    .line 73
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a(Lcom/twitter/internal/network/HttpOperation$RequestMethod;)Lcom/twitter/library/service/e;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "dm"

    aput-object v3, v1, v2

    const-string/jumbo v2, "conversation"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/twitter/library/api/dm/requests/n;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "delete"

    aput-object v3, v1, v2

    .line 74
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "last_event_id"

    .line 75
    invoke-virtual {p0}, Lcom/twitter/library/api/dm/requests/n;->S()Lcom/twitter/library/provider/dm;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/library/api/dm/requests/n;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/twitter/library/provider/dm;->a(Ljava/lang/String;Z)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;J)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "request_id"

    .line 76
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    .line 72
    return-object v0
.end method

.method protected b(Lcom/twitter/library/service/aa;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 49
    iget-object v2, p0, Lcom/twitter/library/api/dm/requests/n;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    :goto_0
    return v1

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/library/api/dm/requests/n;->S()Lcom/twitter/library/provider/dm;

    move-result-object v2

    .line 54
    invoke-virtual {p0}, Lcom/twitter/library/api/dm/requests/n;->T()Lcom/twitter/library/provider/b;

    move-result-object v3

    .line 56
    iget-object v4, p0, Lcom/twitter/library/api/dm/requests/n;->b:Ljava/lang/String;

    invoke-static {v4}, Lbnx;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/twitter/library/api/dm/requests/n;->c:Z

    if-eqz v4, :cond_2

    .line 57
    :cond_1
    iget-object v4, p0, Lcom/twitter/library/api/dm/requests/n;->b:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Lcom/twitter/library/provider/dm;->b(Ljava/lang/String;Lcom/twitter/library/provider/b;)V

    .line 58
    invoke-virtual {p1, v0}, Lcom/twitter/library/service/aa;->a(Z)V

    move v0, v1

    .line 65
    :goto_1
    invoke-virtual {v3}, Lcom/twitter/library/provider/b;->a()V

    move v1, v0

    .line 66
    goto :goto_0

    .line 62
    :cond_2
    iget-object v1, p0, Lcom/twitter/library/api/dm/requests/n;->b:Ljava/lang/String;

    invoke-virtual {v2, v1, v0, v3}, Lcom/twitter/library/provider/dm;->b(Ljava/lang/String;ZLcom/twitter/library/provider/b;)V

    goto :goto_1
.end method

.method protected e()Lcom/twitter/library/api/t;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic f()Lcom/twitter/library/service/c;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/twitter/library/api/dm/requests/n;->e()Lcom/twitter/library/api/t;

    move-result-object v0

    return-object v0
.end method
