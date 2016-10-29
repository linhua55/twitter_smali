.class Lcom/twitter/android/ry;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/kn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/android/kn",
        "<",
        "Landroid/view/View;",
        "Lcom/twitter/android/timeline/bp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/TimelineFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/TimelineFragment;)V
    .locals 0

    .prologue
    .line 1831
    iput-object p1, p0, Lcom/twitter/android/ry;->a:Lcom/twitter/android/TimelineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/twitter/android/timeline/bp;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1835
    if-eqz p2, :cond_0

    .line 1836
    const-string/jumbo v0, "position"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1837
    iget-object v1, p0, Lcom/twitter/android/ry;->a:Lcom/twitter/android/TimelineFragment;

    invoke-static {v1}, Lcom/twitter/android/TimelineFragment;->f(Lcom/twitter/android/TimelineFragment;)Lcom/twitter/android/sk;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/twitter/android/sk;->a(Lcom/twitter/android/timeline/bp;I)V

    .line 1839
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1831
    check-cast p2, Lcom/twitter/android/timeline/bp;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/ry;->a(Landroid/view/View;Lcom/twitter/android/timeline/bp;Landroid/os/Bundle;)V

    return-void
.end method
