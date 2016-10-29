.class Labn;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/r",
        "<",
        "Lbpu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Labl;


# direct methods
.method constructor <init>(Labl;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Labn;->a:Labl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbpu;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Labn;->a:Labl;

    invoke-static {v0}, Labl;->b(Labl;)Lrx/subjects/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/subjects/e;->b_(Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Labn;->a:Labl;

    invoke-static {v0}, Labl;->b(Labl;)Lrx/subjects/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrx/subjects/e;->b_(Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 67
    check-cast p1, Lbpu;

    invoke-virtual {p0, p1}, Labn;->a(Lbpu;)V

    return-void
.end method

.method public bt_()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method
