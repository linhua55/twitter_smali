.class Lcom/twitter/android/uv;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/TweetFragment;


# direct methods
.method private constructor <init>(Lcom/twitter/android/TweetFragment;)V
    .locals 0

    .prologue
    .line 2608
    iput-object p1, p0, Lcom/twitter/android/uv;->a:Lcom/twitter/android/TweetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/TweetFragment;Lcom/twitter/android/ua;)V
    .locals 0

    .prologue
    .line 2608
    invoke-direct {p0, p1}, Lcom/twitter/android/uv;-><init>(Lcom/twitter/android/TweetFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v1, 0x2

    .line 2613
    iget-object v0, p0, Lcom/twitter/android/uv;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v0}, Lcom/twitter/android/TweetFragment;->d(Lcom/twitter/android/TweetFragment;)Lcom/twitter/model/core/Tweet;

    move-result-object v2

    .line 2614
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 2616
    iget-object v0, p0, Lcom/twitter/android/uv;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v0}, Lcom/twitter/android/TweetFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v4

    const v0, 0x7f13005f

    if-ne v3, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v4, v0}, Lcom/twitter/app/common/list/aa;->b(I)I

    .line 2618
    sparse-switch v3, :sswitch_data_0

    .line 2674
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 2616
    goto :goto_0

    .line 2620
    :sswitch_0
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2621
    iget-object v0, p0, Lcom/twitter/android/uv;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v0}, Lcom/twitter/android/TweetFragment;->O(Lcom/twitter/android/TweetFragment;)Laxg;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2622
    iget-object v0, p0, Lcom/twitter/android/uv;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v0}, Lcom/twitter/android/TweetFragment;->O(Lcom/twitter/android/TweetFragment;)Laxg;

    move-result-object v0

    invoke-interface {v0, v2}, Laxg;->a(Lcom/twitter/model/core/Tweet;)V

    .line 2624
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/uv;->a:Lcom/twitter/android/TweetFragment;

    const-string/jumbo v1, "reply"

    invoke-static {v0, v1}, Lcom/twitter/android/TweetFragment;->a(Lcom/twitter/android/TweetFragment;Ljava/lang/String;)V

    goto :goto_1

    .line 2626
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/uv;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x3

    .line 2627
    invoke-virtual {v2}, Lcom/twitter/model/core/Tweet;->d()Ljava/lang/String;

    move-result-object v2

    .line 2626
    invoke-static {v0, v1, v2}, Lcom/twitter/android/ip;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    goto :goto_1

    .line 2632
    :sswitch_1
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2633
    iget-object v0, p0, Lcom/twitter/android/uv;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v0, p1}, Lcom/twitter/android/TweetFragment;->a(Landroid/view/View;)V

    goto :goto_1

    .line 2635
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/uv;->a:Lcom/twitter/android/TweetFragment;

    invoke-static {v0}, Lcom/twitter/android/TweetFragment;->l(Lcom/twitter/android/TweetFragment;)Lcom/twitter/android/widget/ToggleImageButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/widget/ToggleImageButton;->a()V

    .line 2636
    iget-object v0, p0, Lcom/twitter/android/uv;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    .line 2637
    invoke-virtual {v2}, Lcom/twitter/model/core/Tweet;->d()Ljava/lang/String;

    move-result-object v2

    .line 2636
    invoke-static {v0, v1, v2}, Lcom/twitter/android/ip;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    goto :goto_1

    .line 2642
    :sswitch_2
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2643
    iget-object v0, p0, Lcom/twitter/android/uv;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v0}, Lcom/twitter/android/TweetFragment;->v()V

    goto :goto_1

    .line 2645
    :cond_4
    iget-object v0, p0, Lcom/twitter/android/uv;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 2646
    invoke-virtual {v2}, Lcom/twitter/model/core/Tweet;->d()Ljava/lang/String;

    move-result-object v2

    .line 2645
    invoke-static {v0, v1, v2}, Lcom/twitter/android/ip;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    goto :goto_1

    .line 2651
    :sswitch_3
    iget-object v0, p0, Lcom/twitter/android/uv;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v0}, Lcom/twitter/android/TweetFragment;->C()V

    goto :goto_1

    .line 2655
    :sswitch_4
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2656
    iget-object v0, p0, Lcom/twitter/android/uv;->a:Lcom/twitter/android/TweetFragment;

    const-string/jumbo v1, "share_via_dm"

    invoke-static {v0, v1}, Lcom/twitter/android/TweetFragment;->a(Lcom/twitter/android/TweetFragment;Ljava/lang/String;)V

    .line 2657
    iget-object v0, p0, Lcom/twitter/android/uv;->a:Lcom/twitter/android/TweetFragment;

    iget-object v1, p0, Lcom/twitter/android/uv;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v1}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/dm/w;

    invoke-direct {v2}, Lcom/twitter/android/dm/w;-><init>()V

    new-instance v3, Lcom/twitter/model/core/ay;

    iget-object v4, p0, Lcom/twitter/android/uv;->a:Lcom/twitter/android/TweetFragment;

    .line 2658
    invoke-static {v4}, Lcom/twitter/android/TweetFragment;->d(Lcom/twitter/android/TweetFragment;)Lcom/twitter/model/core/Tweet;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/twitter/model/core/ay;-><init>(Lcom/twitter/model/core/Tweet;)V

    invoke-virtual {v2, v3}, Lcom/twitter/android/dm/w;->a(Lcom/twitter/model/core/ay;)Lcom/twitter/android/dm/w;

    move-result-object v2

    .line 2659
    invoke-virtual {v2}, Lcom/twitter/android/dm/w;->d()Lcom/twitter/android/dm/v;

    move-result-object v2

    .line 2657
    invoke-static {v1, v2}, Lcom/twitter/android/dm/r;->a(Landroid/content/Context;Lcom/twitter/android/dm/v;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/TweetFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2661
    :cond_5
    iget-object v0, p0, Lcom/twitter/android/uv;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0xa

    .line 2662
    invoke-virtual {v2}, Lcom/twitter/model/core/Tweet;->d()Ljava/lang/String;

    move-result-object v2

    .line 2661
    invoke-static {v0, v1, v2}, Lcom/twitter/android/ip;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 2667
    :sswitch_5
    iget-object v0, p0, Lcom/twitter/android/uv;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v0}, Lcom/twitter/android/TweetFragment;->w()V

    goto/16 :goto_1

    .line 2618
    :sswitch_data_0
    .sparse-switch
        0x7f13002d -> :sswitch_1
        0x7f13005f -> :sswitch_0
        0x7f130061 -> :sswitch_2
        0x7f130138 -> :sswitch_4
        0x7f130139 -> :sswitch_5
        0x7f1307cd -> :sswitch_3
    .end sparse-switch
.end method
