.class Lcom/twitter/android/client/ca;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/media/request/c;


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lcom/twitter/model/core/Tweet;

.field final synthetic c:Lcom/twitter/android/client/ce;

.field final synthetic d:I

.field final synthetic e:Lcom/twitter/android/client/WidgetControl;


# direct methods
.method constructor <init>(Lcom/twitter/android/client/WidgetControl;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/twitter/model/core/Tweet;Lcom/twitter/android/client/ce;I)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/twitter/android/client/ca;->e:Lcom/twitter/android/client/WidgetControl;

    iput-object p2, p0, Lcom/twitter/android/client/ca;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/twitter/android/client/ca;->b:Lcom/twitter/model/core/Tweet;

    iput-object p4, p0, Lcom/twitter/android/client/ca;->c:Lcom/twitter/android/client/ce;

    iput p5, p0, Lcom/twitter/android/client/ca;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/media/request/ImageResponse;)V
    .locals 5

    .prologue
    .line 381
    iget-object v0, p0, Lcom/twitter/android/client/ca;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v1, p0, Lcom/twitter/android/client/ca;->e:Lcom/twitter/android/client/WidgetControl;

    iget-object v2, p0, Lcom/twitter/android/client/ca;->b:Lcom/twitter/model/core/Tweet;

    invoke-virtual {p1}, Lcom/twitter/media/request/ImageResponse;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/twitter/android/client/ca;->c:Lcom/twitter/android/client/ce;

    iget v4, p0, Lcom/twitter/android/client/ca;->d:I

    invoke-static {v1, v2, v0, v3, v4}, Lcom/twitter/android/client/WidgetControl;->a(Lcom/twitter/android/client/WidgetControl;Lcom/twitter/model/core/Tweet;Landroid/graphics/Bitmap;Lcom/twitter/android/client/ce;I)V

    .line 385
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lcom/twitter/media/request/ResourceResponse;)V
    .locals 0

    .prologue
    .line 377
    check-cast p1, Lcom/twitter/media/request/ImageResponse;

    invoke-virtual {p0, p1}, Lcom/twitter/android/client/ca;->a(Lcom/twitter/media/request/ImageResponse;)V

    return-void
.end method
