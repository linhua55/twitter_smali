.class Lwi;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/library/api/upload/h;

.field final synthetic b:Lwe;


# direct methods
.method constructor <init>(Lwe;Lcom/twitter/library/api/upload/h;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lwi;->b:Lwe;

    iput-object p2, p0, Lwi;->a:Lcom/twitter/library/api/upload/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lwi;->b:Lwe;

    iget-object v0, v0, Lwe;->a:Lcom/twitter/util/concurrent/ObservablePromise;

    iget-object v1, p0, Lwi;->a:Lcom/twitter/library/api/upload/h;

    invoke-virtual {v1}, Lcom/twitter/library/api/upload/h;->c()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/concurrent/ObservablePromise;->setException(Ljava/lang/Throwable;)V

    .line 174
    const/4 v0, 0x0

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
    .line 170
    invoke-virtual {p0}, Lwi;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
