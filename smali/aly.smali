.class Laly;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/ui/widget/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/ui/widget/o",
        "<",
        "Lalz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lalx;


# direct methods
.method constructor <init>(Lalx;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Laly;->a:Lalx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lalz;)V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Laly;->a:Lalx;

    iget-object v0, v0, Lalx;->a:Lalu;

    invoke-static {v0}, Lalu;->b(Lalu;)Lauf;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/ui/guide/ae;

    iget-object v2, p1, Lalz;->a:Lcom/twitter/model/moments/t;

    invoke-direct {v1, v2}, Lcom/twitter/android/moments/ui/guide/ae;-><init>(Lcom/twitter/model/moments/t;)V

    invoke-virtual {v0, v1}, Lauf;->b(Lauc;)V

    .line 81
    iget-object v0, p0, Laly;->a:Lalx;

    iget-object v0, v0, Lalx;->a:Lalu;

    invoke-static {v0}, Lalu;->c(Lalu;)Lahi;

    move-result-object v0

    iget-object v1, p1, Lalz;->a:Lcom/twitter/model/moments/t;

    iget-object v1, v1, Lcom/twitter/model/moments/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lahi;->a(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 76
    check-cast p1, Lalz;

    invoke-virtual {p0, p1}, Laly;->a(Lalz;)V

    return-void
.end method
