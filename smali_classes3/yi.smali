.class Lyi;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/model/dms/bk;

.field final synthetic b:Lxz;


# direct methods
.method constructor <init>(Lxz;Lcom/twitter/model/dms/bk;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lyi;->b:Lxz;

    iput-object p2, p0, Lyi;->a:Lcom/twitter/model/dms/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 509
    iget-object v0, p0, Lyi;->b:Lxz;

    iget-object v0, v0, Lxz;->g:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lyi;->b:Lxz;

    iget-object v2, v2, Lxz;->g:Landroid/content/Context;

    const-class v3, Lcom/twitter/android/GalleryActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "dm"

    const/4 v3, 0x1

    .line 510
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "show_tw"

    const/4 v3, 0x0

    .line 511
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "media"

    iget-object v3, p0, Lyi;->a:Lcom/twitter/model/dms/bk;

    iget-object v3, v3, Lcom/twitter/model/dms/bk;->e:Lcom/twitter/model/core/MediaEntity;

    sget-object v4, Lcom/twitter/model/core/MediaEntity;->a:Lcom/twitter/util/serialization/ah;

    .line 513
    invoke-static {v3, v4}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v3

    .line 512
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "source_tweet_id"

    iget-object v3, p0, Lyi;->a:Lcom/twitter/model/dms/bk;

    iget-object v3, v3, Lcom/twitter/model/dms/bk;->e:Lcom/twitter/model/core/MediaEntity;

    iget-wide v4, v3, Lcom/twitter/model/core/MediaEntity;->i:J

    .line 514
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "association"

    iget-object v3, p0, Lyi;->b:Lxz;

    .line 516
    invoke-static {v3}, Lxz;->a(Lxz;)Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 509
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 517
    return-void
.end method
