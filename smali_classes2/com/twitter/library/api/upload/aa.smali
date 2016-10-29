.class Lcom/twitter/library/api/upload/aa;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/concurrent/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/concurrent/e",
        "<",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/ao;

.field final synthetic b:Lcom/twitter/library/api/upload/x;


# direct methods
.method constructor <init>(Lcom/twitter/library/api/upload/x;Lrx/ao;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/twitter/library/api/upload/aa;->b:Lcom/twitter/library/api/upload/x;

    iput-object p2, p0, Lcom/twitter/library/api/upload/aa;->a:Lrx/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/twitter/library/api/upload/aa;->a:Lrx/ao;

    invoke-virtual {v0}, Lrx/ao;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/twitter/library/api/upload/aa;->a:Lrx/ao;

    invoke-virtual {v0, p1}, Lrx/ao;->a(Ljava/lang/Throwable;)V

    .line 158
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 152
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/twitter/library/api/upload/aa;->a(Ljava/lang/Exception;)V

    return-void
.end method
