.class Lcom/twitter/android/moments/data/av;
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
.field final synthetic a:Lcom/twitter/android/moments/data/at;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/data/at;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/twitter/android/moments/data/av;->a:Lcom/twitter/android/moments/data/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 99
    iget-object v0, p0, Lcom/twitter/android/moments/data/av;->a:Lcom/twitter/android/moments/data/at;

    invoke-static {v0}, Lcom/twitter/android/moments/data/at;->c(Lcom/twitter/android/moments/data/at;)Lcet;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/data/av;->a:Lcom/twitter/android/moments/data/at;

    invoke-static {v1}, Lcom/twitter/android/moments/data/at;->b(Lcom/twitter/android/moments/data/at;)Lcom/twitter/model/core/Tweet;

    move-result-object v1

    iget-wide v2, v1, Lcom/twitter/model/core/Tweet;->b:J

    invoke-virtual {v0, v2, v3}, Lcet;->b(J)V

    .line 100
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
    .line 96
    invoke-virtual {p0}, Lcom/twitter/android/moments/data/av;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
