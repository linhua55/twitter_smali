.class Lcom/twitter/android/ax;
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
.field final synthetic a:Lcom/twitter/android/au;


# direct methods
.method constructor <init>(Lcom/twitter/android/au;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/twitter/android/ax;->a:Lcom/twitter/android/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 417
    iget-object v0, p0, Lcom/twitter/android/ax;->a:Lcom/twitter/android/au;

    invoke-static {v0}, Lcom/twitter/android/au;->a(Lcom/twitter/android/au;)V

    .line 418
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
    .line 414
    invoke-virtual {p0}, Lcom/twitter/android/ax;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
