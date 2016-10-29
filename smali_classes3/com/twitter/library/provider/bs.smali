.class Lcom/twitter/library/provider/bs;
.super Landroid/database/DataSetObserver;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/library/provider/bp;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/bp;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/twitter/library/provider/bs;->a:Lcom/twitter/library/provider/bp;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 201
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/twitter/library/provider/bs;->a:Lcom/twitter/library/provider/bp;

    iget-object v0, v0, Lcom/twitter/library/provider/bp;->a:Lcom/twitter/library/provider/br;

    invoke-virtual {v0}, Lcom/twitter/library/provider/br;->notifyChanged()V

    .line 211
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/twitter/library/provider/bs;->a:Lcom/twitter/library/provider/bp;

    iget-object v0, v0, Lcom/twitter/library/provider/bp;->a:Lcom/twitter/library/provider/br;

    invoke-virtual {v0}, Lcom/twitter/library/provider/br;->notifyInvalidated()V

    .line 206
    return-void
.end method
