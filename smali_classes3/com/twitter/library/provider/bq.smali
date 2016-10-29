.class Lcom/twitter/library/provider/bq;
.super Landroid/database/ContentObserver;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/library/provider/bp;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/bp;)V
    .locals 1

    .prologue
    .line 215
    iput-object p1, p0, Lcom/twitter/library/provider/bq;->a:Lcom/twitter/library/provider/bp;

    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 217
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/twitter/library/provider/bq;->a:Lcom/twitter/library/provider/bp;

    iput-boolean p1, v0, Lcom/twitter/library/provider/bp;->h:Z

    .line 222
    iget-object v0, p0, Lcom/twitter/library/provider/bq;->a:Lcom/twitter/library/provider/bp;

    iget-boolean v0, v0, Lcom/twitter/library/provider/bp;->f:Z

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/twitter/library/provider/bq;->a:Lcom/twitter/library/provider/bp;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/twitter/library/provider/bp;->g:Z

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/provider/bq;->a:Lcom/twitter/library/provider/bp;

    invoke-static {v0}, Lcom/twitter/library/provider/bp;->a(Lcom/twitter/library/provider/bp;)Landroid/database/ContentObservable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->dispatchChange(Z)V

    goto :goto_0
.end method
