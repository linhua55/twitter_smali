.class public Lcom/twitter/library/media/manager/o;
.super Layp;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    const-string/jumbo v0, "total_request_time"

    invoke-direct {p0, v0}, Lcom/twitter/library/media/manager/o;-><init>(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resource:fetcher:"

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Laxz;->m:Laye;

    .line 49
    invoke-direct {p0, v0, v1, v2, v2}, Layp;-><init>(Ljava/lang/String;Laye;Ljava/lang/String;Layf;)V

    .line 56
    return-void
.end method


# virtual methods
.method public f()V
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Layj;->b()Layj;

    move-result-object v0

    .line 69
    invoke-interface {v0, p0}, Layl;->a(Laxz;)V

    .line 70
    return-void
.end method
