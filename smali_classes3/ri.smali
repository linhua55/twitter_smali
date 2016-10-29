.class Lri;
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
.field final synthetic a:J

.field final synthetic b:Lrg;


# direct methods
.method constructor <init>(Lrg;J)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lri;->b:Lrg;

    iput-wide p2, p0, Lri;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lclh;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lri;->b:Lrg;

    iget-wide v2, p0, Lri;->a:J

    invoke-static {v0, v2, v3}, Lrg;->a(Lrg;J)Lclh;

    move-result-object v0

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
    .line 60
    invoke-virtual {p0}, Lri;->a()Lclh;

    move-result-object v0

    return-object v0
.end method
