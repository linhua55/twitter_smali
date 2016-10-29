.class public Lbpr;
.super Lcom/twitter/library/service/b;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/service/b",
        "<",
        "Lbpt;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:J

.field private b:Lcom/twitter/model/av/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;J)V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lbpr;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/service/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 34
    iput-wide p3, p0, Lbpr;->a:J

    .line 35
    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/library/service/d;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 40
    invoke-virtual {p0}, Lbpr;->K()Lcom/twitter/library/service/e;

    move-result-object v0

    sget-object v1, Lcom/twitter/internal/network/HttpOperation$RequestMethod;->a:Lcom/twitter/internal/network/HttpOperation$RequestMethod;

    .line 41
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a(Lcom/twitter/internal/network/HttpOperation$RequestMethod;)Lcom/twitter/library/service/e;

    move-result-object v0

    const-string/jumbo v1, "1.1"

    .line 42
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;)Lcom/twitter/library/service/e;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "live_video_stream"

    aput-object v2, v1, v4

    .line 43
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->b([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "status"

    aput-object v2, v1, v4

    .line 44
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->b([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    iget-wide v2, p0, Lbpr;->a:J

    .line 45
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/twitter/library/service/e;->a()Lcom/twitter/library/service/d;

    move-result-object v0

    .line 40
    return-object v0
.end method

.method protected a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lbpt;)V
    .locals 1

    .prologue
    .line 59
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/twitter/internal/network/HttpOperation;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p3}, Lbpt;->b()Lcom/twitter/model/av/m;

    move-result-object v0

    iput-object v0, p0, Lbpr;->b:Lcom/twitter/model/av/m;

    .line 66
    :cond_0
    :goto_0
    invoke-virtual {p2, p1}, Lcom/twitter/library/service/aa;->a(Lcom/twitter/internal/network/HttpOperation;)V

    .line 67
    return-void

    .line 61
    :cond_1
    invoke-virtual {p1}, Lcom/twitter/internal/network/HttpOperation;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/twitter/internal/android/service/ab;

    invoke-direct {v0}, Lcom/twitter/internal/android/service/ab;-><init>()V

    .line 63
    invoke-virtual {v0, p2}, Lcom/twitter/internal/android/service/ab;->a(Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p0, v0}, Lbpr;->c(Lcom/twitter/internal/android/service/ab;)Lcom/twitter/internal/android/service/AsyncOperation;

    goto :goto_0
.end method

.method protected bridge synthetic a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/service/c;)V
    .locals 0

    .prologue
    .line 20
    check-cast p3, Lbpt;

    invoke-virtual {p0, p1, p2, p3}, Lbpr;->a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lbpt;)V

    return-void
.end method

.method protected b()Lbpt;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lbpt;

    invoke-direct {v0}, Lbpt;-><init>()V

    return-object v0
.end method

.method public e()Lcom/twitter/model/av/m;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lbpr;->b:Lcom/twitter/model/av/m;

    return-object v0
.end method

.method protected synthetic f()Lcom/twitter/library/service/c;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lbpr;->b()Lbpt;

    move-result-object v0

    return-object v0
.end method

.method public g()Lbps;
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p0}, Lbpr;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 84
    if-eqz v0, :cond_0

    .line 85
    new-instance v1, Lbps;

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->d()I

    move-result v2

    invoke-virtual {v0}, Lcom/twitter/library/service/aa;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lbps;-><init>(ILjava/lang/String;)V

    move-object v0, v1

    .line 88
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lbps;->a:Lbps;

    goto :goto_0
.end method
