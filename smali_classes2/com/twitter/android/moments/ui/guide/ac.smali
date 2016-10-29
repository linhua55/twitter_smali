.class public Lcom/twitter/android/moments/ui/guide/ac;
.super Lcom/twitter/android/moments/ui/guide/ad;
.source "Twttr"


# instance fields
.field public final a:J
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/guide/ad;-><init>()V

    .line 131
    iput-wide p1, p0, Lcom/twitter/android/moments/ui/guide/ac;->a:J

    .line 132
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/ac;->c:Landroid/content/Intent;

    const-string/jumbo v1, "add_to_moment_tweet_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 133
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/ac;->c:Landroid/content/Intent;

    const-string/jumbo v1, "guide_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/moments/ui/guide/ac;->d(Z)Lcom/twitter/app/common/base/z;

    .line 136
    return-void
.end method
