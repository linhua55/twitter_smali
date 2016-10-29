.class public Lcom/twitter/android/moments/ui/guide/ae;
.super Lcom/twitter/android/moments/ui/guide/ad;
.source "Twttr"


# instance fields
.field public final a:Lcom/twitter/model/moments/t;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/model/moments/t;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 116
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/guide/ad;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/twitter/android/moments/ui/guide/ae;->a:Lcom/twitter/model/moments/t;

    .line 118
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/ae;->c:Landroid/content/Intent;

    const-string/jumbo v1, "guide_category_id"

    iget-object v2, p1, Lcom/twitter/model/moments/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "guide_category_name"

    iget-object v2, p1, Lcom/twitter/model/moments/t;->b:Ljava/lang/String;

    .line 119
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "guide_type"

    .line 120
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, v3}, Lcom/twitter/android/moments/ui/guide/ae;->d(Z)Lcom/twitter/app/common/base/z;

    .line 123
    return-void
.end method
