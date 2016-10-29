.class Lcom/twitter/android/tn;
.super Ljava/lang/Object;
.source "Twttr"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lciv;Ljava/util/List;Ljava/util/List;Lcom/twitter/model/core/Tweet;Ljava/lang/String;Lcom/twitter/library/util/FriendshipCache;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Lciv;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TweetActionType;",
            ">;",
            "Lcom/twitter/model/core/Tweet;",
            "Ljava/lang/String;",
            "Lcom/twitter/library/util/FriendshipCache;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 342
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/twitter/util/h;->b(Z)Z

    .line 343
    new-instance v1, Lcom/twitter/android/widget/ec;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/twitter/android/widget/ec;-><init>(I)V

    .line 344
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/ec;->a([Ljava/lang/CharSequence;)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 345
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v8

    new-instance v0, Lcom/twitter/android/to;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/to;-><init>(Lcom/twitter/android/tn;Lciv;Ljava/util/List;Lcom/twitter/model/core/Tweet;Ljava/lang/String;Lcom/twitter/library/util/FriendshipCache;Ljava/lang/String;)V

    .line 346
    invoke-virtual {v8, v0}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Lcom/twitter/app/common/base/m;)Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    .line 353
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 354
    return-void

    .line 342
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
