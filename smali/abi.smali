.class Labi;
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
.field final synthetic a:J

.field final synthetic b:Labg;


# direct methods
.method constructor <init>(Labg;J)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Labi;->b:Labg;

    iput-wide p2, p0, Labi;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/livevideo/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Labi;->b:Labg;

    iget-wide v2, p0, Labi;->a:J

    invoke-static {v0, v2, v3}, Labg;->a(Labg;J)Lcom/twitter/model/livevideo/d;

    move-result-object v0

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
    .line 54
    invoke-virtual {p0}, Labi;->a()Lcom/twitter/model/livevideo/d;

    move-result-object v0

    return-object v0
.end method
