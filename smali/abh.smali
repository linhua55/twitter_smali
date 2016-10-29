.class Labh;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/twitter/model/livevideo/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/model/livevideo/d;

.field final synthetic b:Labg;


# direct methods
.method constructor <init>(Labg;Lcom/twitter/model/livevideo/d;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Labh;->b:Labg;

    iput-object p2, p0, Labh;->a:Lcom/twitter/model/livevideo/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/livevideo/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Labh;->b:Labg;

    iget-object v1, p0, Labh;->a:Lcom/twitter/model/livevideo/d;

    invoke-static {v0, v1}, Labg;->a(Labg;Lcom/twitter/model/livevideo/d;)J

    .line 46
    iget-object v0, p0, Labh;->a:Lcom/twitter/model/livevideo/d;

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Labh;->a()Lcom/twitter/model/livevideo/d;

    move-result-object v0

    return-object v0
.end method
