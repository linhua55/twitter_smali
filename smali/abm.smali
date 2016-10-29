.class Labm;
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
        "Lcom/twitter/model/livevideo/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Labl;


# direct methods
.method constructor <init>(Labl;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Labm;->a:Labl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/livevideo/d;)V
    .locals 1

    .prologue
    .line 59
    if-eqz p1, :cond_0

    .line 60
    iget-object v0, p0, Labm;->a:Labl;

    invoke-static {v0}, Labl;->a(Labl;)Labk;

    move-result-object v0

    .line 61
    invoke-interface {v0, p1}, Labk;->a(Lcom/twitter/model/livevideo/d;)Lrx/o;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lrx/o;->n()Lrx/ap;

    .line 64
    :cond_0
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 56
    check-cast p1, Lcom/twitter/model/livevideo/d;

    invoke-virtual {p0, p1}, Labm;->a(Lcom/twitter/model/livevideo/d;)V

    return-void
.end method
