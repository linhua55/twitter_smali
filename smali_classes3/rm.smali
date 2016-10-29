.class Lrm;
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
.field final synthetic a:Lrj;


# direct methods
.method constructor <init>(Lrj;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lrm;->a:Lrj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lclh;)V
    .locals 1

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lrm;->a:Lrj;

    invoke-static {v0}, Lrj;->a(Lrj;)Lro;

    move-result-object v0

    invoke-interface {v0, p1}, Lro;->a(Lclh;)Lrx/o;

    move-result-object v0

    invoke-virtual {v0}, Lrx/o;->n()Lrx/ap;

    .line 90
    :cond_0
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 84
    check-cast p1, Lclh;

    invoke-virtual {p0, p1}, Lrm;->a(Lclh;)V

    return-void
.end method
