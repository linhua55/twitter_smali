.class Lcom/twitter/android/client/ar;
.super Lcom/twitter/android/client/o;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private final c:Lcom/twitter/model/core/MediaEntity;

.field private final d:J


# direct methods
.method constructor <init>(Landroid/content/Context;JLcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/model/core/MediaEntity;)V
    .locals 0

    .prologue
    .line 629
    invoke-direct {p0}, Lcom/twitter/android/client/o;-><init>()V

    .line 630
    iput-object p1, p0, Lcom/twitter/android/client/ar;->a:Landroid/content/Context;

    .line 631
    iput-wide p2, p0, Lcom/twitter/android/client/ar;->d:J

    .line 632
    iput-object p4, p0, Lcom/twitter/android/client/ar;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 633
    iput-object p5, p0, Lcom/twitter/android/client/ar;->c:Lcom/twitter/model/core/MediaEntity;

    .line 634
    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 638
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/twitter/android/client/ar;->a:Landroid/content/Context;

    const-class v5, Lcom/twitter/android/GalleryActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v4, "statusId"

    iget-wide v6, p0, Lcom/twitter/android/client/ar;->d:J

    .line 639
    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "show_tw"

    .line 640
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "media"

    iget-object v5, p0, Lcom/twitter/android/client/ar;->c:Lcom/twitter/model/core/MediaEntity;

    sget-object v6, Lcom/twitter/model/core/MediaEntity;->a:Lcom/twitter/util/serialization/ah;

    .line 642
    invoke-static {v5, v6}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v5

    .line 641
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "source_tweet_id"

    iget-object v5, p0, Lcom/twitter/android/client/ar;->c:Lcom/twitter/model/core/MediaEntity;

    iget-wide v6, v5, Lcom/twitter/model/core/MediaEntity;->i:J

    .line 643
    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "association"

    iget-object v5, p0, Lcom/twitter/android/client/ar;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 644
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    .line 646
    iget-object v3, p0, Lcom/twitter/android/client/ar;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    if-eqz v3, :cond_1

    .line 647
    iget-object v3, p0, Lcom/twitter/android/client/ar;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {v3}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a()Ljava/lang/String;

    move-result-object v3

    .line 649
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    move v0, v2

    .line 670
    :goto_1
    :pswitch_0
    if-lez v0, :cond_1

    .line 671
    const-string/jumbo v1, "context"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 674
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/client/ar;->a:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 675
    return-void

    .line 649
    :sswitch_0
    const-string/jumbo v5, "home"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "profile"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "search"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    .line 651
    :pswitch_1
    const/4 v0, 0x4

    .line 652
    goto :goto_1

    .line 660
    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/client/ar;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "cluster"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 661
    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1

    .line 649
    nop

    :sswitch_data_0
    .sparse-switch
        -0x36059a58 -> :sswitch_2
        -0x12717657 -> :sswitch_1
        0x30f4df -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public b()I
    .locals 1

    .prologue
    .line 679
    const/4 v0, 0x1

    return v0
.end method
