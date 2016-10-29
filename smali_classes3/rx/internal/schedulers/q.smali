.class Lrx/internal/schedulers/q;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldje;


# instance fields
.field final synthetic a:Ldly;

.field final synthetic b:Ldje;

.field final synthetic c:Lrx/ap;

.field final synthetic d:Lrx/internal/schedulers/o;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/o;Ldly;Ldje;Lrx/ap;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lrx/internal/schedulers/q;->d:Lrx/internal/schedulers/o;

    iput-object p2, p0, Lrx/internal/schedulers/q;->a:Ldly;

    iput-object p3, p0, Lrx/internal/schedulers/q;->b:Ldje;

    iput-object p4, p0, Lrx/internal/schedulers/q;->c:Lrx/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lrx/internal/schedulers/q;->a:Ldly;

    invoke-virtual {v0}, Ldly;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lrx/internal/schedulers/q;->d:Lrx/internal/schedulers/o;

    iget-object v1, p0, Lrx/internal/schedulers/q;->b:Ldje;

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/o;->a(Ldje;)Lrx/ap;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lrx/internal/schedulers/q;->a:Ldly;

    invoke-virtual {v1, v0}, Ldly;->a(Lrx/ap;)V

    .line 143
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lrx/internal/schedulers/ScheduledAction;

    if-ne v1, v2, :cond_0

    .line 146
    check-cast v0, Lrx/internal/schedulers/ScheduledAction;

    iget-object v1, p0, Lrx/internal/schedulers/q;->c:Lrx/ap;

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/ScheduledAction;->a(Lrx/ap;)V

    goto :goto_0
.end method
