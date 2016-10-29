.class public abstract Lcbm;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/config/f;


# instance fields
.field private final a:Lcom/twitter/library/client/bj;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcbn;

    invoke-direct {v0, p0}, Lcbn;-><init>(Lcbm;)V

    iput-object v0, p0, Lcbm;->a:Lcom/twitter/library/client/bj;

    .line 26
    invoke-static {p0}, Lcom/twitter/config/d;->a(Lcom/twitter/config/f;)V

    .line 27
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    iget-object v1, p0, Lcbm;->a:Lcom/twitter/library/client/bj;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/bj;)V

    .line 28
    invoke-virtual {p0}, Lcbm;->f()V

    .line 29
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 42
    invoke-virtual {p0}, Lcbm;->f()V

    .line 43
    return-void
.end method

.method protected abstract f()V
.end method
