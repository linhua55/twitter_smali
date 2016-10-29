.class Lcom/twitter/android/moments/data/bq;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjf",
        "<",
        "Ljava/util/List",
        "<",
        "Lcrc;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/data/bp;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/data/bp;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/twitter/android/moments/data/bq;->a:Lcom/twitter/android/moments/data/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcrc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/twitter/android/moments/data/bq;->a:Lcom/twitter/android/moments/data/bp;

    invoke-static {v0}, Lcom/twitter/android/moments/data/bp;->a(Lcom/twitter/android/moments/data/bp;)Ldjf;

    move-result-object v0

    invoke-interface {v0, p1}, Ldjf;->call(Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/twitter/android/moments/data/bq;->a:Lcom/twitter/android/moments/data/bp;

    invoke-static {v0}, Lcom/twitter/android/moments/data/bp;->b(Lcom/twitter/android/moments/data/bp;)Ldjf;

    move-result-object v0

    invoke-interface {v0, p1}, Ldjf;->call(Ljava/lang/Object;)V

    .line 171
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 166
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/data/bq;->a(Ljava/util/List;)V

    return-void
.end method
