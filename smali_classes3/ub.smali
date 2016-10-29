.class public Lub;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lazt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lazt",
        "<",
        "Lcom/twitter/library/av/playback/AVDataSource;",
        "Lui;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/library/av/playback/AVDataSource;

.field private final b:Ltz;

.field private final c:Lazt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lazt",
            "<",
            "Lcom/twitter/library/av/playback/AVDataSource;",
            "Lcmf",
            "<",
            "Lcom/twitter/model/av/ac;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/library/av/playback/AVDataSource;Lazt;Ltz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/av/playback/AVDataSource;",
            "Lazt",
            "<",
            "Lcom/twitter/library/av/playback/AVDataSource;",
            "Lcmf",
            "<",
            "Lcom/twitter/model/av/ac;",
            ">;>;",
            "Ltz;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lub;->a:Lcom/twitter/library/av/playback/AVDataSource;

    .line 46
    iput-object p2, p0, Lub;->c:Lazt;

    .line 47
    iput-object p3, p0, Lub;->b:Ltz;

    .line 48
    return-void
.end method

.method static synthetic a(Lub;)Ltz;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lub;->b:Ltz;

    return-object v0
.end method

.method static synthetic b(Lub;)Lcom/twitter/library/av/playback/AVDataSource;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lub;->a:Lcom/twitter/library/av/playback/AVDataSource;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/library/av/playback/AVDataSource;)Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/av/playback/AVDataSource;",
            ")",
            "Lrx/o",
            "<",
            "Lui;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lub;->c:Lazt;

    invoke-interface {v0, p1}, Lazt;->a_(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    .line 63
    invoke-static {}, Ldcn;->b()Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->d(Ldjj;)Lrx/o;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lub;->a()Lrx/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/t;)Lrx/o;

    move-result-object v0

    new-instance v1, Luc;

    invoke-direct {v1, p0}, Luc;-><init>(Lub;)V

    .line 65
    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lub;->a:Lcom/twitter/library/av/playback/AVDataSource;

    .line 71
    invoke-static {v1}, Lui;->a(Lcom/twitter/library/av/playback/AVDataSource;)Lui;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->d(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lub;->b()Lrx/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/t;)Lrx/o;

    move-result-object v0

    .line 62
    return-object v0
.end method

.method protected a()Lrx/t;
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Ldls;->d()Lrx/t;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a_(Ljava/lang/Object;)Lrx/o;
    .locals 1

    .prologue
    .line 28
    check-cast p1, Lcom/twitter/library/av/playback/AVDataSource;

    invoke-virtual {p0, p1}, Lub;->a(Lcom/twitter/library/av/playback/AVDataSource;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method protected b()Lrx/t;
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Ldiz;->a()Lrx/t;

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
    .line 93
    iget-object v0, p0, Lub;->c:Lazt;

    invoke-interface {v0}, Lazt;->close()V

    .line 94
    return-void
.end method
