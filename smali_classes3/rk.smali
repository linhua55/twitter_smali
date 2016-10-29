.class Lrk;
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
        "Lclh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lclh;

.field final synthetic b:Lrj;


# direct methods
.method constructor <init>(Lrj;Lclh;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lrk;->b:Lrj;

    iput-object p2, p0, Lrk;->a:Lclh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lclh;)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lrk;->b:Lrj;

    invoke-static {v0}, Lrj;->a(Lrj;)Lro;

    move-result-object v0

    iget-object v1, p0, Lrk;->a:Lclh;

    invoke-interface {v0, v1}, Lro;->a(Lclh;)Lrx/o;

    move-result-object v0

    invoke-virtual {v0}, Lrx/o;->n()Lrx/ap;

    .line 71
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 66
    check-cast p1, Lclh;

    invoke-virtual {p0, p1}, Lrk;->a(Lclh;)V

    return-void
.end method
