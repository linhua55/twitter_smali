.class Lale;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/media/request/c;


# instance fields
.field final synthetic a:Lald;


# direct methods
.method constructor <init>(Lald;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lale;->a:Lald;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/media/request/ImageResponse;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lale;->a:Lald;

    invoke-static {v0}, Lald;->a(Lald;)Lrx/subjects/a;

    move-result-object v0

    iget-object v1, p0, Lale;->a:Lald;

    invoke-virtual {v0, v1}, Lrx/subjects/a;->b_(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lale;->a:Lald;

    invoke-static {v0}, Lald;->a(Lald;)Lrx/subjects/a;

    move-result-object v0

    invoke-virtual {v0}, Lrx/subjects/a;->bt_()V

    .line 81
    return-void
.end method

.method public bridge synthetic a(Lcom/twitter/media/request/ResourceResponse;)V
    .locals 0

    .prologue
    .line 76
    check-cast p1, Lcom/twitter/media/request/ImageResponse;

    invoke-virtual {p0, p1}, Lale;->a(Lcom/twitter/media/request/ImageResponse;)V

    return-void
.end method
