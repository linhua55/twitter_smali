.class Lrh;
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
        "Lclh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lclh;

.field final synthetic b:Lrg;


# direct methods
.method constructor <init>(Lrg;Lclh;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lrh;->b:Lrg;

    iput-object p2, p0, Lrh;->a:Lclh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lclh;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lrh;->b:Lrg;

    iget-object v1, p0, Lrh;->a:Lclh;

    invoke-static {v0, v1}, Lrg;->a(Lrg;Lclh;)J

    .line 51
    iget-object v0, p0, Lrh;->b:Lrg;

    iget-object v1, p0, Lrh;->a:Lclh;

    invoke-static {v0, v1}, Lrg;->b(Lrg;Lclh;)V

    .line 52
    iget-object v0, p0, Lrh;->a:Lclh;

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
    .line 47
    invoke-virtual {p0}, Lrh;->a()Lclh;

    move-result-object v0

    return-object v0
.end method
