.class public Lbup;
.super Lbky;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbky",
        "<",
        "Lcom/twitter/library/api/as;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:I

.field private j:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lbur;)V
    .locals 3

    .prologue
    .line 52
    invoke-static {p1}, Lbur;->a(Lbur;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lbup;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-static {p1}, Lbur;->b(Lbur;)Lcom/twitter/library/service/ab;

    move-result-object v2

    .line 52
    invoke-direct {p0, v0, v1, v2}, Lbky;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/service/ab;)V

    .line 49
    const-string/jumbo v0, "create"

    iput-object v0, p0, Lbup;->j:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Lbur;->c(Lbur;)I

    move-result v0

    iput v0, p0, Lbup;->i:I

    .line 55
    invoke-static {p1}, Lbur;->d(Lbur;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbup;->a:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Lbur;->e(Lbur;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbup;->b:Ljava/lang/String;

    .line 57
    invoke-static {p1}, Lbur;->f(Lbur;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbup;->c:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Lbur;->g(Lbur;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbup;->h:Ljava/lang/String;

    .line 59
    invoke-static {p1}, Lbur;->h(Lbur;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbup;->j:Ljava/lang/String;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lbur;Lbuq;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lbup;-><init>(Lbur;)V

    return-void
.end method


# virtual methods
.method protected b()Lcom/twitter/library/service/e;
    .locals 4

    .prologue
    .line 65
    invoke-virtual {p0}, Lbup;->K()Lcom/twitter/library/service/e;

    move-result-object v0

    sget-object v1, Lcom/twitter/internal/network/HttpOperation$RequestMethod;->b:Lcom/twitter/internal/network/HttpOperation$RequestMethod;

    .line 66
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a(Lcom/twitter/internal/network/HttpOperation$RequestMethod;)Lcom/twitter/library/service/e;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "mobile"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "settings/guest"

    aput-object v3, v1, v2

    .line 67
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "udid"

    iget-object v2, p0, Lbup;->c:Ljava/lang/String;

    .line 68
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "token"

    iget-object v2, p0, Lbup;->a:Ljava/lang/String;

    .line 69
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "locale"

    iget-object v2, p0, Lbup;->b:Ljava/lang/String;

    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "app_version"

    iget v2, p0, Lbup;->i:I

    int-to-long v2, v2

    .line 71
    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;J)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "state"

    iget-object v2, p0, Lbup;->h:Ljava/lang/String;

    .line 72
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "action"

    iget-object v2, p0, Lbup;->j:Ljava/lang/String;

    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    .line 65
    return-object v0
.end method

.method protected e()Lcom/twitter/library/api/as;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic f()Lcom/twitter/library/service/c;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lbup;->e()Lcom/twitter/library/api/as;

    move-result-object v0

    return-object v0
.end method
