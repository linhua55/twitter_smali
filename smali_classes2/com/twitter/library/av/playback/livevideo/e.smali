.class public Lcom/twitter/library/av/playback/livevideo/e;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbwt;


# instance fields
.field private a:Lbps;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lbps;->a:Lbps;

    iput-object v0, p0, Lcom/twitter/library/av/playback/livevideo/e;->a:Lbps;

    return-void
.end method


# virtual methods
.method public a()Lbps;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/twitter/library/av/playback/livevideo/e;->a:Lbps;

    return-object v0
.end method

.method public a(JLandroid/content/Context;)Lcom/twitter/model/av/m;
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lbpr;

    .line 28
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-direct {v0, p3, v1, p1, p2}, Lbpr;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;J)V

    .line 29
    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/livevideo/e;->a(Lbpr;)Lcom/twitter/model/av/m;

    move-result-object v0

    return-object v0
.end method

.method a(Lbpr;)Lcom/twitter/model/av/m;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 35
    invoke-static {}, Ljava/net/CookieManager;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lbps;->a:Lbps;

    iput-object v0, p0, Lcom/twitter/library/av/playback/livevideo/e;->a:Lbps;

    .line 39
    invoke-virtual {p1}, Lbpr;->P()Lcom/twitter/library/service/aa;

    .line 40
    invoke-virtual {p1}, Lbpr;->g()Lbps;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/av/playback/livevideo/e;->a:Lbps;

    .line 41
    invoke-virtual {p1}, Lbpr;->e()Lcom/twitter/model/av/m;

    move-result-object v0

    return-object v0
.end method
