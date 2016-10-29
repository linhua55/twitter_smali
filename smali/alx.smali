.class Lalx;
.super Lach;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lach",
        "<",
        "Ljava/util/List",
        "<",
        "Lalz;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lalu;


# direct methods
.method constructor <init>(Lalu;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lalx;->a:Lalu;

    invoke-direct {p0}, Lach;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lalz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lalx;->a:Lalu;

    invoke-static {v0}, Lalu;->a(Lalu;)Lczf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lczf;->a(Ljava/util/List;)V

    .line 76
    iget-object v0, p0, Lalx;->a:Lalu;

    invoke-static {v0}, Lalu;->a(Lalu;)Lczf;

    move-result-object v0

    new-instance v1, Laly;

    invoke-direct {v1, p0}, Laly;-><init>(Lalx;)V

    invoke-virtual {v0, v1}, Lczf;->a(Lcom/twitter/ui/widget/o;)V

    .line 84
    return-void
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 72
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lalx;->a(Ljava/util/List;)V

    return-void
.end method
