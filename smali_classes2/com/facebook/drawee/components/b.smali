.class Lcom/facebook/drawee/components/b;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/drawee/components/a;


# direct methods
.method constructor <init>(Lcom/facebook/drawee/components/a;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/facebook/drawee/components/b;->a:Lcom/facebook/drawee/components/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/drawee/components/b;->a:Lcom/facebook/drawee/components/a;

    invoke-static {v0}, Lcom/facebook/drawee/components/a;->a(Lcom/facebook/drawee/components/a;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/components/c;

    .line 64
    invoke-interface {v0}, Lcom/facebook/drawee/components/c;->b()V

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/components/b;->a:Lcom/facebook/drawee/components/a;

    invoke-static {v0}, Lcom/facebook/drawee/components/a;->a(Lcom/facebook/drawee/components/a;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 67
    return-void
.end method
