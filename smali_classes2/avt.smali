.class public Lavt;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/drafts/n;


# instance fields
.field final a:Lazt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lazt",
            "<",
            "Lcom/twitter/database/model/g;",
            "Lcmf",
            "<",
            "Lcom/twitter/model/drafts/d;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lazt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lazt",
            "<",
            "Lcom/twitter/database/model/g;",
            "Lcmf",
            "<",
            "Lcom/twitter/model/drafts/d;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lavt;->a:Lazt;

    .line 26
    return-void
.end method


# virtual methods
.method public a(J)Lrx/o;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/o",
            "<",
            "Lcmf",
            "<",
            "Lcom/twitter/model/drafts/d;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 31
    new-instance v0, Lcom/twitter/database/model/i;

    invoke-direct {v0}, Lcom/twitter/database/model/i;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "sending_state!=1"

    aput-object v2, v1, v4

    const-string/jumbo v2, "_id<>?"

    aput-object v2, v1, v3

    .line 32
    invoke-static {v1}, Lbar;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    .line 33
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/twitter/database/model/i;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/twitter/database/model/i;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/twitter/database/model/i;->a()Lcom/twitter/database/model/g;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lavt;->a:Lazt;

    invoke-interface {v1, v0}, Lazt;->a_(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lavt;->a:Lazt;

    invoke-interface {v0}, Lazt;->close()V

    .line 41
    return-void
.end method
