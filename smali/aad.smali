.class Laad;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/media/request/c;


# instance fields
.field final synthetic a:Lzw;

.field final synthetic b:Laac;


# direct methods
.method constructor <init>(Laac;Lzw;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Laad;->b:Laac;

    iput-object p2, p0, Laad;->a:Lzw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/media/request/ImageResponse;)V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Laad;->a:Lzw;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Laad;->a:Lzw;

    iget-object v1, p0, Laad;->b:Laac;

    iget v1, v1, Laac;->a:I

    invoke-interface {v0, v1}, Lzw;->c(I)V

    .line 100
    :cond_0
    invoke-virtual {p1}, Lcom/twitter/media/request/ImageResponse;->c()Z

    move-result v1

    .line 101
    iget-object v0, p0, Laad;->b:Laac;

    iget-object v2, v0, Laac;->f:Laab;

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v2, Laab;->e:Z

    .line 102
    if-eqz v1, :cond_1

    .line 103
    iget-object v0, p0, Laad;->b:Laac;

    iget-object v1, p0, Laad;->b:Laac;

    iget-object v1, v1, Laac;->f:Laab;

    invoke-virtual {v0, v1}, Laac;->a(Laab;)V

    .line 105
    :cond_1
    return-void

    .line 101
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/twitter/media/request/ResourceResponse;)V
    .locals 0

    .prologue
    .line 93
    check-cast p1, Lcom/twitter/media/request/ImageResponse;

    invoke-virtual {p0, p1}, Laad;->a(Lcom/twitter/media/request/ImageResponse;)V

    return-void
.end method
