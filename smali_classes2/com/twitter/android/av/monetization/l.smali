.class public Lcom/twitter/android/av/monetization/l;
.super Lcom/twitter/app/common/base/z;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/app/common/base/z",
        "<",
        "Lcom/twitter/android/av/monetization/l;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/twitter/app/common/base/z;-><init>()V

    .line 102
    iget-object v0, p0, Lcom/twitter/android/av/monetization/l;->c:Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twitter/app/common/base/z;->a(Landroid/content/Intent;Z)Landroid/content/Intent;

    .line 103
    iget-object v0, p0, Lcom/twitter/android/av/monetization/l;->c:Landroid/content/Intent;

    const-string/jumbo v1, "selected_categories"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 104
    return-void
.end method
