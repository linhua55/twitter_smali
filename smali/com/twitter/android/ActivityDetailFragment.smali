.class public Lcom/twitter/android/ActivityDetailFragment;
.super Lcom/twitter/app/common/list/TwitterListFragment;
.source "Twttr"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/app/common/list/TwitterListFragment",
        "<",
        "Lcom/twitter/android/h;",
        "Lcvt",
        "<",
        "Lcom/twitter/android/h;",
        ">;>;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:J

.field private c:J

.field private d:Lcom/twitter/library/util/FriendshipCache;

.field private e:I

.field private f:I

.field private g:[I

.field private h:Z

.field private i:Lcom/twitter/android/widget/er;

.field private j:Lcom/twitter/android/yb;

.field private k:Lcom/twitter/android/vz;

.field private l:Z

.field private m:Lcom/twitter/android/vs;

.field private final n:Lcom/twitter/android/kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/android/kn",
            "<",
            "Landroid/view/View;",
            "Lcom/twitter/model/core/Tweet;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Lcom/twitter/library/widget/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/library/widget/e",
            "<",
            "Lcom/twitter/library/widget/UserView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 74
    invoke-direct {p0}, Lcom/twitter/app/common/list/TwitterListFragment;-><init>()V

    .line 100
    iput v0, p0, Lcom/twitter/android/ActivityDetailFragment;->e:I

    .line 101
    iput v0, p0, Lcom/twitter/android/ActivityDetailFragment;->f:I

    .line 121
    new-instance v0, Lcom/twitter/android/i;

    invoke-direct {v0, p0}, Lcom/twitter/android/i;-><init>(Lcom/twitter/android/ActivityDetailFragment;)V

    iput-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->n:Lcom/twitter/android/kn;

    .line 130
    invoke-static {}, Lcom/twitter/util/collection/MutableSet;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->o:Ljava/util/Set;

    .line 132
    new-instance v0, Lcom/twitter/android/j;

    invoke-direct {v0, p0}, Lcom/twitter/android/j;-><init>(Lcom/twitter/android/ActivityDetailFragment;)V

    iput-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->p:Lcom/twitter/library/widget/e;

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/ActivityDetailFragment;)Lcom/twitter/android/vs;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->m:Lcom/twitter/android/vs;

    return-object v0
.end method

.method private static a(Lcom/twitter/android/yb;)Lcom/twitter/util/collection/ac;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/yb;",
            ")",
            "Lcom/twitter/util/collection/ac",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 314
    invoke-virtual {p0}, Lcom/twitter/android/yb;->g()Landroid/database/Cursor;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 316
    :cond_0
    const/4 v0, 0x0

    .line 321
    :goto_0
    return-object v0

    .line 319
    :cond_1
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 321
    :goto_1
    invoke-static {v1, v0}, Lcom/twitter/util/collection/ac;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/ac;

    move-result-object v0

    goto :goto_0

    .line 320
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 651
    iget v0, p0, Lcom/twitter/android/ActivityDetailFragment;->a:I

    packed-switch v0, :pswitch_data_0

    .line 692
    :cond_0
    :goto_0
    :pswitch_0
    return-object p1

    .line 653
    :pswitch_1
    const-string/jumbo p1, "favorited_you"

    goto :goto_0

    .line 656
    :pswitch_2
    const-string/jumbo p1, "favorited_retweet"

    goto :goto_0

    .line 659
    :pswitch_3
    const-string/jumbo p1, "favorited_mention"

    goto :goto_0

    .line 662
    :pswitch_4
    const-string/jumbo p1, "retweeted_you"

    goto :goto_0

    .line 665
    :pswitch_5
    const-string/jumbo p1, "retweeted_retweet"

    goto :goto_0

    .line 668
    :pswitch_6
    const-string/jumbo p1, "retweeted_mention"

    goto :goto_0

    .line 671
    :pswitch_7
    if-eqz p2, :cond_0

    const-string/jumbo p1, "followed_you"

    goto :goto_0

    .line 674
    :pswitch_8
    if-eqz p2, :cond_0

    const-string/jumbo p1, "joined_twitter"

    goto :goto_0

    .line 677
    :pswitch_9
    const-string/jumbo p1, "media_tagged_you"

    goto :goto_0

    .line 680
    :pswitch_a
    const-string/jumbo p1, "favorited_media_tag"

    goto :goto_0

    .line 683
    :pswitch_b
    const-string/jumbo p1, "retweeted_media_tag"

    goto :goto_0

    .line 651
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private a(Landroid/view/View;J)V
    .locals 6

    .prologue
    .line 524
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/xy;

    iget-object v0, v0, Lcom/twitter/android/xy;->c:Lcom/twitter/library/widget/BaseUserView;

    .line 525
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "user_id"

    .line 526
    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "screen_name"

    .line 527
    invoke-virtual {v0}, Lcom/twitter/library/widget/BaseUserView;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 528
    const-string/jumbo v2, "association"

    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 529
    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    const/4 v3, 0x5

    .line 530
    invoke-virtual {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(I)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-wide v4, p0, Lcom/twitter/android/ActivityDetailFragment;->aa:J

    .line 531
    invoke-virtual {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(J)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    .line 528
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 533
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->d:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v0, p2, p3}, Lcom/twitter/library/util/FriendshipCache;->j(J)Ljava/lang/Integer;

    move-result-object v0

    .line 534
    if-eqz v0, :cond_0

    .line 535
    const-string/jumbo v2, "friendship"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 537
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/ActivityDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 538
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/ActivityDetailFragment;Lcom/twitter/library/widget/UserView;J)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/ActivityDetailFragment;->a(Lcom/twitter/library/widget/UserView;J)V

    return-void
.end method

.method private a(Lcom/twitter/library/scribe/TwitterScribeItem;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 630
    const/4 v0, 0x0

    invoke-direct {p0, v0, v4}, Lcom/twitter/android/ActivityDetailFragment;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 631
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v2, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ":::unfollow"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 632
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 633
    invoke-virtual {v0, p1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 631
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 634
    return-void
.end method

.method private a(Lcom/twitter/library/widget/UserView;J)V
    .locals 8

    .prologue
    .line 573
    invoke-virtual {p1}, Lcom/twitter/library/widget/UserView;->getScribeItem()Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v7

    .line 574
    invoke-virtual {p1}, Lcom/twitter/library/widget/UserView;->getPromotedContent()Lcss;

    move-result-object v6

    .line 575
    invoke-virtual {p1}, Lcom/twitter/library/widget/UserView;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->o:Ljava/util/Set;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->ab:Lcom/twitter/library/client/bd;

    new-instance v1, Lbuc;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v3

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lbuc;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;)V

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->d:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v0, p2, p3}, Lcom/twitter/library/util/FriendshipCache;->c(J)V

    .line 581
    invoke-direct {p0, v7}, Lcom/twitter/android/ActivityDetailFragment;->a(Lcom/twitter/library/scribe/TwitterScribeItem;)V

    .line 592
    :goto_0
    return-void

    .line 583
    :cond_1
    if-eqz v6, :cond_2

    .line 584
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->ab:Lcom/twitter/library/client/bd;

    new-instance v1, Lbtz;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v3

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lbtz;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;)V

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 589
    :goto_1
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->d:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v0, p2, p3}, Lcom/twitter/library/util/FriendshipCache;->b(J)V

    .line 590
    invoke-virtual {p1}, Lcom/twitter/library/widget/UserView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/xy;

    iget v0, v0, Lcom/twitter/android/xy;->f:I

    invoke-static {v0}, Lcom/twitter/model/core/p;->c(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/twitter/android/ActivityDetailFragment;->a(Ljava/lang/Boolean;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    goto :goto_0

    .line 587
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->o:Ljava/util/Set;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private a(Ljava/lang/Boolean;Lcom/twitter/library/scribe/TwitterScribeItem;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 612
    const/4 v0, 0x0

    invoke-direct {p0, v0, v5}, Lcom/twitter/android/ActivityDetailFragment;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 613
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    .line 614
    invoke-virtual {v0, p2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    new-array v2, v5, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":::follow"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 615
    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 617
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 618
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 619
    new-array v2, v5, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ":::follow_back"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 620
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 622
    :cond_0
    return-void
.end method

.method private b(J)V
    .locals 3

    .prologue
    .line 642
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/ActivityDetailFragment;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 643
    if-eqz v0, :cond_0

    .line 644
    iget-object v1, p0, Lcom/twitter/android/ActivityDetailFragment;->m:Lcom/twitter/android/vs;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "::stream::results"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, p2, v0}, Lcom/twitter/android/vs;->a(JLjava/lang/String;)V

    .line 646
    :cond_0
    return-void
.end method

.method private l()Lcom/twitter/android/yb;
    .locals 7

    .prologue
    .line 276
    new-instance v0, Lcom/twitter/android/k;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0200bd

    iget-object v3, p0, Lcom/twitter/android/ActivityDetailFragment;->p:Lcom/twitter/library/widget/e;

    iget-object v4, p0, Lcom/twitter/android/ActivityDetailFragment;->d:Lcom/twitter/library/util/FriendshipCache;

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/twitter/android/ActivityDetailFragment;->h:Z

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/k;-><init>(Landroid/content/Context;ILcom/twitter/library/widget/e;Lcom/twitter/library/util/FriendshipCache;ZZ)V

    return-object v0
.end method

.method private m()V
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 281
    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->aZ()Lcom/twitter/app/common/base/TwitterFragmentActivity;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_0

    .line 283
    iget-object v1, p0, Lcom/twitter/android/ActivityDetailFragment;->j:Lcom/twitter/android/yb;

    invoke-virtual {v1}, Lcom/twitter/android/yb;->getCount()I

    move-result v1

    .line 285
    iget-object v2, p0, Lcom/twitter/android/ActivityDetailFragment;->j:Lcom/twitter/android/yb;

    invoke-static {v2}, Lcom/twitter/android/ActivityDetailFragment;->a(Lcom/twitter/android/yb;)Lcom/twitter/util/collection/ac;

    move-result-object v2

    .line 286
    if-nez v2, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 305
    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0040

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/twitter/util/collection/ac;->a()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v5, v6

    add-int/lit8 v1, v1, -0x1

    .line 306
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v7

    .line 305
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-static {}, Lcom/twitter/util/ak;->g()Z

    move-result v2

    .line 304
    invoke-static {v1, v2}, Lcom/twitter/util/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->b(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 293
    :pswitch_0
    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a003f

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/twitter/util/collection/ac;->a()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-static {}, Lcom/twitter/util/ak;->g()Z

    move-result v2

    .line 292
    invoke-static {v1, v2}, Lcom/twitter/util/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->b(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 299
    :pswitch_1
    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a0041

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/twitter/util/collection/ac;->a()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v6

    .line 300
    invoke-virtual {v2}, Lcom/twitter/util/collection/ac;->b()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v4, v7

    .line 299
    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-static {}, Lcom/twitter/util/ak;->g()Z

    move-result v2

    .line 298
    invoke-static {v1, v2}, Lcom/twitter/util/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->b(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private n()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 600
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/twitter/android/ActivityDetailFragment;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string/jumbo v2, ":tweet:link:open_link"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 326
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->a()V

    .line 327
    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->ag_()V

    .line 328
    return-void
.end method

.method protected a(JJ)V
    .locals 1

    .prologue
    .line 347
    invoke-super {p0, p1, p2, p3, p4}, Lcom/twitter/app/common/list/TwitterListFragment;->a(JJ)V

    .line 348
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/ActivityDetailFragment;->b(J)V

    .line 349
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->m:Lcom/twitter/android/vs;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/vs;->a(J)V

    .line 350
    return-void
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 476
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 490
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->j:Lcom/twitter/android/yb;

    invoke-virtual {v0}, Lcom/twitter/android/yb;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->k:Lcom/twitter/android/vz;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->k:Lcom/twitter/android/vz;

    .line 491
    invoke-virtual {v0}, Lcom/twitter/android/vz;->k()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 492
    :goto_1
    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v1

    .line 494
    if-eqz v0, :cond_3

    .line 495
    invoke-virtual {v1}, Lcom/twitter/app/common/list/aa;->l()V

    .line 501
    :goto_2
    iget-boolean v0, p0, Lcom/twitter/android/ActivityDetailFragment;->l:Z

    if-eqz v0, :cond_1

    .line 502
    invoke-direct {p0}, Lcom/twitter/android/ActivityDetailFragment;->m()V

    .line 504
    :cond_1
    return-void

    .line 478
    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->j:Lcom/twitter/android/yb;

    new-instance v1, Lcmb;

    invoke-direct {v1, p2}, Lcmb;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/yb;->a(Lcmf;)Lcmf;

    goto :goto_0

    .line 482
    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->k:Lcom/twitter/android/vz;

    invoke-virtual {v0, p2}, Lcom/twitter/android/vz;->c(Landroid/database/Cursor;)V

    goto :goto_0

    .line 491
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 497
    :cond_3
    invoke-virtual {v1}, Lcom/twitter/app/common/list/aa;->m()V

    goto :goto_2

    .line 476
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 543
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->i:Lcom/twitter/android/widget/er;

    if-nez v0, :cond_1

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->i:Lcom/twitter/android/widget/er;

    invoke-virtual {v0, p3}, Lcom/twitter/android/widget/er;->c(I)I

    move-result v0

    .line 547
    iget v1, p0, Lcom/twitter/android/ActivityDetailFragment;->e:I

    if-ne v0, v1, :cond_2

    .line 548
    invoke-direct {p0, p2, p4, p5}, Lcom/twitter/android/ActivityDetailFragment;->a(Landroid/view/View;J)V

    goto :goto_0

    .line 549
    :cond_2
    iget v1, p0, Lcom/twitter/android/ActivityDetailFragment;->f:I

    if-ne v0, v1, :cond_0

    .line 550
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->k:Lcom/twitter/android/vz;

    invoke-virtual {v0, p3}, Lcom/twitter/android/vz;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/cn;

    .line 551
    if-eqz v0, :cond_0

    .line 552
    iget v1, p0, Lcom/twitter/android/ActivityDetailFragment;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 553
    iget-object v1, v0, Lcom/twitter/android/timeline/cn;->b:Lcom/twitter/model/core/Tweet;

    const/16 v2, 0x10

    iput v2, v1, Lcom/twitter/model/core/Tweet;->f:I

    .line 555
    :cond_3
    iget-object v1, p0, Lcom/twitter/android/ActivityDetailFragment;->j:Lcom/twitter/android/yb;

    invoke-static {v1}, Lcom/twitter/android/ActivityDetailFragment;->a(Lcom/twitter/android/yb;)Lcom/twitter/util/collection/ac;

    move-result-object v1

    .line 556
    if-eqz v1, :cond_4

    .line 557
    iget-object v2, v0, Lcom/twitter/android/timeline/cn;->b:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v1}, Lcom/twitter/util/collection/ac;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/twitter/model/core/Tweet;->g:Ljava/lang/String;

    .line 559
    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/twitter/android/TweetActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "tw"

    iget-object v0, v0, Lcom/twitter/android/timeline/cn;->b:Lcom/twitter/model/core/Tweet;

    .line 560
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "association"

    .line 561
    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 559
    invoke-virtual {p0, v0}, Lcom/twitter/android/ActivityDetailFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected a(Lcom/twitter/app/common/list/aj;)V
    .locals 1

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcom/twitter/app/common/list/aj;)V

    .line 192
    const v0, 0x7f04001e

    invoke-virtual {p1, v0}, Lcom/twitter/app/common/list/aj;->d(I)Lcom/twitter/app/common/list/aj;

    .line 193
    return-void
.end method

.method protected a(Z)V
    .locals 6

    .prologue
    .line 387
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Z)V

    .line 388
    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    .line 389
    iget-object v2, p0, Lcom/twitter/android/ActivityDetailFragment;->g:[I

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v2, v0

    .line 390
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 389
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 392
    :cond_0
    return-void
.end method

.method protected ag_()V
    .locals 6

    .prologue
    .line 396
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->ag_()V

    .line 397
    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    .line 398
    iget-object v2, p0, Lcom/twitter/android/ActivityDetailFragment;->g:[I

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v2, v0

    .line 399
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    :cond_0
    return-void
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 406
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 198
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 200
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->i:Lcom/twitter/android/widget/er;

    if-nez v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->aZ()Lcom/twitter/app/common/base/TwitterFragmentActivity;

    move-result-object v1

    .line 210
    iget v0, p0, Lcom/twitter/android/ActivityDetailFragment;->a:I

    packed-switch v0, :pswitch_data_0

    .line 261
    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 213
    :pswitch_1
    invoke-direct {p0}, Lcom/twitter/android/ActivityDetailFragment;->l()Lcom/twitter/android/yb;

    move-result-object v3

    .line 214
    new-instance v1, Lcom/twitter/android/widget/er;

    new-array v0, v7, [Landroid/widget/BaseAdapter;

    aput-object v3, v0, v6

    invoke-direct {v1, v0}, Lcom/twitter/android/widget/er;-><init>([Landroid/widget/BaseAdapter;)V

    .line 216
    new-array v0, v7, [I

    aput v6, v0, v6

    .line 219
    const/4 v2, -0x1

    .line 264
    :goto_0
    iput-object v3, p0, Lcom/twitter/android/ActivityDetailFragment;->j:Lcom/twitter/android/yb;

    .line 265
    iput v6, p0, Lcom/twitter/android/ActivityDetailFragment;->e:I

    .line 266
    iput-object v4, p0, Lcom/twitter/android/ActivityDetailFragment;->k:Lcom/twitter/android/vz;

    .line 267
    iput v2, p0, Lcom/twitter/android/ActivityDetailFragment;->f:I

    .line 268
    iput-object v1, p0, Lcom/twitter/android/ActivityDetailFragment;->i:Lcom/twitter/android/widget/er;

    .line 269
    iput-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->g:[I

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/ActivityDetailFragment;->i:Lcom/twitter/android/widget/er;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 272
    return-void

    .line 231
    :pswitch_2
    invoke-direct {p0}, Lcom/twitter/android/ActivityDetailFragment;->l()Lcom/twitter/android/yb;

    move-result-object v8

    .line 232
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->a_:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/android/client/w;->a(Landroid/content/Context;)Lcom/twitter/android/client/w;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lcom/twitter/android/client/w;->a()Z

    move-result v2

    .line 234
    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v5

    .line 235
    new-instance v0, Lciy;

    invoke-direct {v0}, Lciy;-><init>()V

    const-string/jumbo v3, "tweet:::platform_photo_card:click"

    .line 236
    invoke-virtual {v0, v3}, Lciy;->c(Ljava/lang/String;)Lciy;

    move-result-object v0

    const-string/jumbo v3, "tweet:::platform_player_card:click"

    .line 237
    invoke-virtual {v0, v3}, Lciy;->d(Ljava/lang/String;)Lciy;

    move-result-object v0

    const-string/jumbo v3, "tweet"

    const-string/jumbo v9, "avatar"

    const-string/jumbo v10, "profile_click"

    .line 238
    invoke-static {v5, v3, v9, v10}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lciy;->a(Ljava/lang/String;)Lciy;

    move-result-object v0

    .line 240
    invoke-direct {p0}, Lcom/twitter/android/ActivityDetailFragment;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lciy;->b(Ljava/lang/String;)Lciy;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lciy;->a()Lciw;

    move-result-object v0

    .line 242
    new-instance v3, Lcom/twitter/android/vw;

    invoke-direct {v3, p0, v5, v4, v0}, Lcom/twitter/android/vw;-><init>(Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Lciw;)V

    .line 244
    new-instance v0, Lcom/twitter/android/vz;

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/vz;-><init>(Lcom/twitter/app/common/base/TwitterFragmentActivity;ZLcom/twitter/library/view/aa;Lcom/twitter/library/util/FriendshipCache;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 246
    iget-object v1, p0, Lcom/twitter/android/ActivityDetailFragment;->n:Lcom/twitter/android/kn;

    invoke-virtual {v0, v1}, Lcom/twitter/android/vz;->b(Lcom/twitter/android/kn;)V

    .line 247
    new-instance v2, Lcom/twitter/android/widget/er;

    new-array v1, v11, [Landroid/widget/BaseAdapter;

    aput-object v0, v1, v6

    aput-object v8, v1, v7

    invoke-direct {v2, v1}, Lcom/twitter/android/widget/er;-><init>([Landroid/widget/BaseAdapter;)V

    .line 250
    new-array v1, v11, [I

    fill-array-data v1, :array_0

    move-object v4, v0

    move-object v3, v8

    move-object v0, v1

    move-object v1, v2

    move v2, v6

    move v6, v7

    .line 251
    goto :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 250
    :array_0
    .array-data 4
        0x2
        0x0
    .end array-data
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 363
    packed-switch p1, :pswitch_data_0

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 365
    :pswitch_0
    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    if-eqz p3, :cond_0

    .line 366
    const-string/jumbo v0, "user_id"

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 367
    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-string/jumbo v2, "friendship"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 368
    const-string/jumbo v2, "friendship"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 370
    iget-object v3, p0, Lcom/twitter/android/ActivityDetailFragment;->d:Lcom/twitter/library/util/FriendshipCache;

    .line 371
    invoke-virtual {v3, v0, v1, v2}, Lcom/twitter/library/util/FriendshipCache;->a(JI)Z

    move-result v4

    if-nez v4, :cond_0

    .line 372
    invoke-virtual {v3, v0, v1, v2}, Lcom/twitter/library/util/FriendshipCache;->b(JI)V

    .line 373
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->i:Lcom/twitter/android/widget/er;

    invoke-virtual {v0}, Lcom/twitter/android/widget/er;->notifyDataSetChanged()V

    goto :goto_0

    .line 363
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 148
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->p()Lcom/twitter/app/common/list/w;

    move-result-object v0

    .line 151
    const-string/jumbo v1, "event_type"

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/w;->b(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/ActivityDetailFragment;->a:I

    .line 152
    const-string/jumbo v1, "user_tag"

    invoke-virtual {v0, v1, v8, v9}, Lcom/twitter/app/common/list/w;->a(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/android/ActivityDetailFragment;->b:J

    .line 153
    const-string/jumbo v1, "status_tag"

    invoke-virtual {v0, v1, v8, v9}, Lcom/twitter/app/common/list/w;->a(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/android/ActivityDetailFragment;->c:J

    .line 154
    iput-boolean v4, p0, Lcom/twitter/android/ActivityDetailFragment;->l:Z

    .line 156
    if-eqz p1, :cond_2

    .line 157
    const-string/jumbo v0, "friendship_cache"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    const-string/jumbo v0, "friendship_cache"

    .line 159
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 158
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/util/FriendshipCache;

    iput-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->d:Lcom/twitter/library/util/FriendshipCache;

    .line 163
    :goto_0
    const-string/jumbo v0, "hide_action_button"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/ActivityDetailFragment;->h:Z

    .line 177
    :cond_0
    :goto_1
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>()V

    .line 178
    invoke-virtual {v0, v6}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(I)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v1, "connect"

    .line 179
    invoke-direct {p0, v1, v4}, Lcom/twitter/android/ActivityDetailFragment;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 177
    invoke-virtual {p0, v0}, Lcom/twitter/android/ActivityDetailFragment;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 180
    return-void

    .line 161
    :cond_1
    new-instance v0, Lcom/twitter/library/util/FriendshipCache;

    invoke-direct {v0}, Lcom/twitter/library/util/FriendshipCache;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->d:Lcom/twitter/library/util/FriendshipCache;

    goto :goto_0

    .line 165
    :cond_2
    const-string/jumbo v1, "hide_action_button"

    invoke-virtual {v0, v1, v4}, Lcom/twitter/app/common/list/w;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/ActivityDetailFragment;->h:Z

    .line 166
    new-instance v0, Lcom/twitter/library/util/FriendshipCache;

    invoke-direct {v0}, Lcom/twitter/library/util/FriendshipCache;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->d:Lcom/twitter/library/util/FriendshipCache;

    .line 167
    iget v0, p0, Lcom/twitter/android/ActivityDetailFragment;->a:I

    if-eq v0, v6, :cond_3

    iget v0, p0, Lcom/twitter/android/ActivityDetailFragment;->a:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    .line 168
    :cond_3
    iput-boolean v5, p0, Lcom/twitter/android/ActivityDetailFragment;->l:Z

    .line 170
    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v0, v4}, Lcom/twitter/android/ActivityDetailFragment;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_0

    .line 172
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 173
    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v5

    const-string/jumbo v0, ":::impression"

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 172
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 410
    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 411
    packed-switch p1, :pswitch_data_0

    .line 471
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 413
    :pswitch_1
    new-instance v0, Lcom/twitter/android/bt;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v4, Lcom/twitter/library/provider/dk;->p:Landroid/net/Uri;

    .line 414
    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, v2, v3}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lchs;->a:[Ljava/lang/String;

    const-string/jumbo v4, "user_groups_tag=?"

    new-array v5, v5, [Ljava/lang/String;

    iget-wide v6, p0, Lcom/twitter/android/ActivityDetailFragment;->b:J

    .line 419
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string/jumbo v6, "_id ASC"

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-virtual {v0, v8}, Lcom/twitter/android/bt;->a(Z)Lcom/twitter/android/bt;

    move-result-object v0

    goto :goto_0

    .line 425
    :pswitch_2
    iget v1, p0, Lcom/twitter/android/ActivityDetailFragment;->a:I

    packed-switch v1, :pswitch_data_1

    :pswitch_3
    move-object v2, v0

    .line 458
    :goto_1
    if-eqz v2, :cond_0

    .line 459
    new-instance v0, Lcom/twitter/android/bt;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcho;->a:[Ljava/lang/String;

    const-string/jumbo v4, "status_groups_tag=?"

    new-array v5, v5, [Ljava/lang/String;

    iget-wide v6, p0, Lcom/twitter/android/ActivityDetailFragment;->c:J

    .line 462
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string/jumbo v6, "_id ASC"

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 433
    :pswitch_4
    sget-object v1, Lcom/twitter/library/provider/dh;->m:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    .line 439
    :pswitch_5
    sget-object v1, Lcom/twitter/library/provider/dh;->n:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    .line 411
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 425
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 74
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/ActivityDetailFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 508
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 521
    :goto_0
    :pswitch_0
    return-void

    .line 510
    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->j:Lcom/twitter/android/yb;

    invoke-virtual {v0, v1}, Lcom/twitter/android/yb;->a(Lcmf;)Lcmf;

    goto :goto_0

    .line 514
    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->k:Lcom/twitter/android/vz;

    invoke-virtual {v0, v1}, Lcom/twitter/android/vz;->a(Lcmf;)Lcmf;

    goto :goto_0

    .line 508
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 354
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 355
    const-string/jumbo v0, "hide_action_button"

    iget-boolean v1, p0, Lcom/twitter/android/ActivityDetailFragment;->h:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 356
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->d:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {v0}, Lcom/twitter/library/util/FriendshipCache;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    const-string/jumbo v0, "friendship_cache"

    iget-object v1, p0, Lcom/twitter/android/ActivityDetailFragment;->d:Lcom/twitter/library/util/FriendshipCache;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 359
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 332
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->o:Ljava/util/Set;

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->e(Ljava/util/Collection;)[J

    move-result-object v0

    .line 333
    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 334
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 335
    if-eqz v0, :cond_0

    .line 336
    new-instance v4, Lbub;

    iget-object v5, p0, Lcom/twitter/android/ActivityDetailFragment;->a_:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v1, v0, v6}, Lbub;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;[JZ)V

    invoke-virtual {p0, v4, v7, v7}, Lcom/twitter/android/ActivityDetailFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 338
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->o:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 340
    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/twitter/android/ActivityDetailFragment;->b(J)V

    .line 341
    iget-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->m:Lcom/twitter/android/vs;

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/vs;->a(J)V

    .line 342
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->onStop()V

    .line 343
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 184
    invoke-super {p0, p1, p2}, Lcom/twitter/app/common/list/TwitterListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 185
    new-instance v0, Lcom/twitter/android/vt;

    invoke-direct {v0}, Lcom/twitter/android/vt;-><init>()V

    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/android/ActivityDetailFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 186
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v5

    .line 185
    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/vt;->a(Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeAssociation;ILcom/twitter/library/scribe/TwitterScribeItem;Lcom/twitter/library/client/bk;)Lcom/twitter/android/vs;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ActivityDetailFragment;->m:Lcom/twitter/android/vs;

    .line 187
    return-void
.end method
