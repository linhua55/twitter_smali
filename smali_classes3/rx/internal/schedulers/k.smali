.class Lrx/internal/schedulers/k;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldje;


# instance fields
.field final synthetic a:Ldje;

.field final synthetic b:Lrx/internal/schedulers/i;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/i;Ldje;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lrx/internal/schedulers/k;->b:Lrx/internal/schedulers/i;

    iput-object p2, p0, Lrx/internal/schedulers/k;->a:Ldje;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lrx/internal/schedulers/k;->b:Lrx/internal/schedulers/i;

    invoke-virtual {v0}, Lrx/internal/schedulers/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lrx/internal/schedulers/k;->a:Ldje;

    invoke-interface {v0}, Ldje;->a()V

    goto :goto_0
.end method
