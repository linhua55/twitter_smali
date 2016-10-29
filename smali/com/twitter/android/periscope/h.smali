.class Lcom/twitter/android/periscope/h;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldmy;


# instance fields
.field final a:Ljava/util/List;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/twitter/media/request/ImageResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/twitter/library/media/manager/l;


# direct methods
.method constructor <init>(Lcom/twitter/library/media/manager/l;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/twitter/android/periscope/h;->b:Lcom/twitter/library/media/manager/l;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/periscope/h;->a:Ljava/util/List;

    .line 45
    return-void
.end method

.method private a(Lcom/twitter/media/request/a;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/twitter/android/periscope/h;->b:Lcom/twitter/library/media/manager/l;

    invoke-virtual {v0, p1}, Lcom/twitter/library/media/manager/l;->b(Lcom/twitter/media/request/a;)Lcom/twitter/util/concurrent/j;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/twitter/android/periscope/h;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v1, Lcom/twitter/android/periscope/j;

    invoke-direct {v1, p0, v0}, Lcom/twitter/android/periscope/j;-><init>(Lcom/twitter/android/periscope/h;Lcom/twitter/util/concurrent/j;)V

    invoke-interface {v0, v1}, Lcom/twitter/util/concurrent/j;->a(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/j;

    .line 80
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 107
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/twitter/android/periscope/h;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 108
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 109
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/periscope/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 112
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 90
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    const/16 v0, 0x100

    .line 84
    invoke-static {v0, v0}, Lcom/twitter/util/math/Size;->a(II)Lcom/twitter/util/math/Size;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;Lcom/twitter/util/math/Size;)Lcom/twitter/media/request/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/media/request/b;->a()Lcom/twitter/media/request/a;

    move-result-object v0

    .line 85
    invoke-virtual {p0, v0, p3}, Lcom/twitter/android/periscope/h;->a(Lcom/twitter/media/request/a;Landroid/widget/ImageView;)V

    .line 86
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;D)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;D)V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {p4, p5}, Lcom/twitter/util/math/Size;->a(D)Lcom/twitter/util/math/Size;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/twitter/media/request/a;->a(Ljava/lang/String;Lcom/twitter/util/math/Size;)Lcom/twitter/media/request/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/media/request/b;->a()Lcom/twitter/media/request/a;

    move-result-object v0

    .line 57
    invoke-virtual {p0, v0, p3}, Lcom/twitter/android/periscope/h;->a(Lcom/twitter/media/request/a;Ljava/util/Map;)V

    .line 58
    return-void
.end method

.method a(Lcom/twitter/media/request/a;Landroid/widget/ImageView;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lcom/twitter/android/periscope/k;

    invoke-direct {v0, p0, p2}, Lcom/twitter/android/periscope/k;-><init>(Lcom/twitter/android/periscope/h;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v0}, Lcom/twitter/media/request/a;->a(Lcom/twitter/media/request/i;)V

    .line 101
    invoke-direct {p0, p1}, Lcom/twitter/android/periscope/h;->a(Lcom/twitter/media/request/a;)V

    .line 102
    return-void
.end method

.method a(Lcom/twitter/media/request/a;Ljava/util/Map;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/media/request/a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lcom/twitter/android/periscope/i;

    invoke-direct {v0, p0, p2}, Lcom/twitter/android/periscope/i;-><init>(Lcom/twitter/android/periscope/h;Ljava/util/Map;)V

    invoke-virtual {p1, v0}, Lcom/twitter/media/request/a;->a(Lcom/twitter/media/request/i;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/twitter/android/periscope/h;->a(Lcom/twitter/media/request/a;)V

    .line 69
    return-void
.end method
