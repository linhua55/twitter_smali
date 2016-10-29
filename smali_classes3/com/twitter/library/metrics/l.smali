.class Lcom/twitter/library/metrics/l;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/util/h;


# instance fields
.field final synthetic a:Layj;

.field final synthetic b:Lcom/twitter/library/metrics/k;


# direct methods
.method constructor <init>(Lcom/twitter/library/metrics/k;Layj;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/twitter/library/metrics/l;->b:Lcom/twitter/library/metrics/k;

    iput-object p2, p0, Lcom/twitter/library/metrics/l;->a:Layj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Layj;->b()Layj;

    move-result-object v0

    .line 104
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Layj;->a(Z)V

    .line 105
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/twitter/library/metrics/l;->a:Layj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Layj;->a(Z)V

    .line 113
    return-void
.end method
