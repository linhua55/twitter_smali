.class Lcom/facebook/datasource/k;
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
.field final synthetic a:Lcom/facebook/datasource/j;


# direct methods
.method private constructor <init>(Lcom/facebook/datasource/j;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/facebook/datasource/k;->a:Lcom/facebook/datasource/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/datasource/j;Lcom/facebook/datasource/i;)V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/facebook/datasource/k;-><init>(Lcom/facebook/datasource/j;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/datasource/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/d",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 221
    invoke-interface {p1}, Lcom/facebook/datasource/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/facebook/datasource/k;->a:Lcom/facebook/datasource/j;

    invoke-static {v0, p1}, Lcom/facebook/datasource/j;->b(Lcom/facebook/datasource/j;Lcom/facebook/datasource/d;)V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    invoke-interface {p1}, Lcom/facebook/datasource/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/facebook/datasource/k;->a:Lcom/facebook/datasource/j;

    invoke-static {v0, p1}, Lcom/facebook/datasource/j;->a(Lcom/facebook/datasource/j;Lcom/facebook/datasource/d;)V

    goto :goto_0
.end method

.method public b(Lcom/facebook/datasource/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/d",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/facebook/datasource/k;->a:Lcom/facebook/datasource/j;

    invoke-static {v0, p1}, Lcom/facebook/datasource/j;->a(Lcom/facebook/datasource/j;Lcom/facebook/datasource/d;)V

    .line 213
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
    .line 217
    return-void
.end method

.method public d(Lcom/facebook/datasource/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/d",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/facebook/datasource/k;->a:Lcom/facebook/datasource/j;

    invoke-virtual {v0}, Lcom/facebook/datasource/j;->g()F

    move-result v0

    .line 231
    iget-object v1, p0, Lcom/facebook/datasource/k;->a:Lcom/facebook/datasource/j;

    invoke-interface {p1}, Lcom/facebook/datasource/d;->g()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/datasource/j;->a(F)Z

    .line 232
    return-void
.end method
