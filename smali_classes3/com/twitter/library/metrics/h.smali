.class Lcom/twitter/library/metrics/h;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbje;


# instance fields
.field final synthetic a:Lcea;

.field final synthetic b:Lcom/twitter/library/metrics/g;


# direct methods
.method constructor <init>(Lcom/twitter/library/metrics/g;Lcea;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/twitter/library/metrics/h;->b:Lcom/twitter/library/metrics/g;

    iput-object p2, p0, Lcom/twitter/library/metrics/h;->a:Lcea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/twitter/library/metrics/h;->a:Lcea;

    invoke-virtual {v0}, Lcea;->f()V

    .line 72
    return-void
.end method
