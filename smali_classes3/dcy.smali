.class final Ldcy;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/p",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Ldcy;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/ao;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Ldcz;

    iget-object v1, p0, Ldcy;->a:Landroid/view/View;

    invoke-direct {v0, v1, p1}, Ldcz;-><init>(Landroid/view/View;Lrx/ao;)V

    .line 31
    invoke-virtual {p1, v0}, Lrx/ao;->a(Lrx/ap;)V

    .line 32
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lrx/ao;

    invoke-virtual {p0, p1}, Ldcy;->a(Lrx/ao;)V

    return-void
.end method
