.class public Lue;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Lazt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lazt",
            "<",
            "Lcom/twitter/library/av/playback/AVDataSource;",
            "Lui;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lazt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lazt",
            "<",
            "Lcom/twitter/library/av/playback/AVDataSource;",
            "Lui;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lazm;

    invoke-direct {v0, p1}, Lazm;-><init>(Lazt;)V

    iput-object v0, p0, Lue;->a:Lazt;

    .line 28
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/av/playback/AVDataSource;)Lrx/o;
    .locals 1
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
    .line 37
    iget-object v0, p0, Lue;->a:Lazt;

    invoke-interface {v0, p1}, Lazt;->a_(Ljava/lang/Object;)Lrx/o;

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
    .line 42
    iget-object v0, p0, Lue;->a:Lazt;

    invoke-interface {v0}, Lazt;->close()V

    .line 43
    return-void
.end method
