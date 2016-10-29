.class Laus;
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
        "Lauo",
        "<TC;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lauo;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Laut;

.field final synthetic d:Lauq;


# direct methods
.method constructor <init>(Lauq;Lauo;Ljava/lang/Object;Laut;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Laus;->d:Lauq;

    iput-object p2, p0, Laus;->a:Lauo;

    iput-object p3, p0, Laus;->b:Ljava/lang/Object;

    iput-object p4, p0, Laus;->c:Laut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lauo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lauo",
            "<TC;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Laus;->d:Lauq;

    iget-object v1, p0, Laus;->a:Lauo;

    iget-object v2, p0, Laus;->b:Ljava/lang/Object;

    iget-object v3, p0, Laus;->c:Laut;

    invoke-static {v0, v1, v2, v3}, Lauq;->a(Lauq;Lauo;Ljava/lang/Object;Laut;)V

    .line 78
    iget-object v0, p0, Laus;->a:Lauo;

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
    .line 73
    invoke-virtual {p0}, Laus;->a()Lauo;

    move-result-object v0

    return-object v0
.end method
