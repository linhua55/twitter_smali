.class Lcom/facebook/datasource/n;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/facebook/datasource/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/datasource/g",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/datasource/m;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/facebook/datasource/m;I)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/facebook/datasource/n;->a:Lcom/facebook/datasource/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput p2, p0, Lcom/facebook/datasource/n;->b:I

    .line 226
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/datasource/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/d",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 230
    invoke-interface {p1}, Lcom/facebook/datasource/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/facebook/datasource/n;->a:Lcom/facebook/datasource/m;

    iget v1, p0, Lcom/facebook/datasource/n;->b:I

    invoke-static {v0, v1, p1}, Lcom/facebook/datasource/m;->a(Lcom/facebook/datasource/m;ILcom/facebook/datasource/d;)V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-interface {p1}, Lcom/facebook/datasource/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/facebook/datasource/n;->a:Lcom/facebook/datasource/m;

    iget v1, p0, Lcom/facebook/datasource/n;->b:I

    invoke-static {v0, v1, p1}, Lcom/facebook/datasource/m;->b(Lcom/facebook/datasource/m;ILcom/facebook/datasource/d;)V

    goto :goto_0
.end method

.method public b(Lcom/facebook/datasource/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/d",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/facebook/datasource/n;->a:Lcom/facebook/datasource/m;

    iget v1, p0, Lcom/facebook/datasource/n;->b:I

    invoke-static {v0, v1, p1}, Lcom/facebook/datasource/m;->b(Lcom/facebook/datasource/m;ILcom/facebook/datasource/d;)V

    .line 240
    return-void
.end method

.method public c(Lcom/facebook/datasource/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/d",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 244
    return-void
.end method

.method public d(Lcom/facebook/datasource/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/d",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 248
    iget v0, p0, Lcom/facebook/datasource/n;->b:I

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/facebook/datasource/n;->a:Lcom/facebook/datasource/m;

    invoke-interface {p1}, Lcom/facebook/datasource/d;->g()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/datasource/m;->a(F)Z

    .line 251
    :cond_0
    return-void
.end method
