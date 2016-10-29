.class public Lcom/twitter/android/ActivityFragment;
.super Lcom/twitter/app/common/list/TwitterListFragment;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/list/af;


# annotations
.annotation build Lcom/twitter/app/AutoSaveState;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/app/common/list/TwitterListFragment",
        "<",
        "Lckn;",
        "Lcom/twitter/android/jj;",
        ">;",
        "Lcom/twitter/app/common/list/af;"
    }
.end annotation


# instance fields
.field a:Z
    .annotation build Lcom/twitter/app/SaveState;
    .end annotation
.end field

.field b:Z
    .annotation build Lcom/twitter/app/SaveState;
    .end annotation
.end field

.field c:Z
    .annotation build Lcom/twitter/app/SaveState;
    .end annotation
.end field

.field private final d:Lcom/twitter/library/client/bj;

.field private final e:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private f:I

.field private g:J

.field private h:J

.field private i:Landroid/view/View;

.field private j:Lcom/twitter/android/vw;

.field private k:Z

.field private final l:Lcom/twitter/library/util/FriendshipCache;

.field private m:Landroid/content/SharedPreferences;

.field private n:Lcom/twitter/android/r;

.field private o:Z

.field private p:Lcom/twitter/android/util/ah;

.field private q:Lcom/twitter/library/widget/TweetView;

.field private r:Z

.field private s:Lcom/twitter/android/platform/DeviceStorageLowReceiver;

.field private t:Z

.field private u:Lcbv;

.field private v:Lcom/twitter/android/notificationtimeline/a;

.field private w:Z

.field private x:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/twitter/app/common/list/TwitterListFragment;-><init>()V

    .line 133
    new-instance v0, Lcom/twitter/android/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/p;-><init>(Lcom/twitter/android/ActivityFragment;Lcom/twitter/android/l;)V

    iput-object v0, p0, Lcom/twitter/android/ActivityFragment;->d:Lcom/twitter/library/client/bj;

    .line 134
    new-instance v0, Lcom/twitter/android/l;

    invoke-direct {v0, p0}, Lcom/twitter/android/l;-><init>(Lcom/twitter/android/ActivityFragment;)V

    iput-object v0, p0, Lcom/twitter/android/ActivityFragment;->e:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/ActivityFragment;->f:I

    .line 153
    new-instance v0, Lcom/twitter/library/util/FriendshipCache;

    invoke-direct {v0}, Lcom/twitter/library/util/FriendshipCache;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/ActivityFragment;->l:Lcom/twitter/library/util/FriendshipCache;

    return-void
.end method

.method private C()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 953
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 954
    invoke-static {}, Lcal;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 955
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v1

    .line 956
    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/twitter/model/account/UserSettings;->z:Ljava/lang/String;

    const-string/jumbo v2, "enabled"

    invoke-static {v1, v2}, Lcom/twitter/util/aj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 964
    :cond_0
    :goto_0
    return v0

    .line 959
    :cond_1
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v2

    .line 960
    if-eqz v2, :cond_0

    .line 961
    new-instance v0, Lcom/twitter/library/client/l;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v0, v3, v4, v5}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    const-string/jumbo v1, "quality_filter"

    iget-boolean v2, v2, Lcom/twitter/model/core/TwitterUser;->n:Z

    .line 962
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/l;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private F()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 977
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 978
    invoke-static {}, Lcal;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 979
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v1

    .line 980
    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/twitter/model/account/UserSettings;->A:Ljava/lang/String;

    const-string/jumbo v2, "following"

    invoke-static {v1, v2}, Lcom/twitter/util/aj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 982
    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v2, Lcom/twitter/library/client/l;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    const-string/jumbo v1, "notifications_follow_only"

    .line 983
    invoke-virtual {v2, v1, v0}, Lcom/twitter/library/client/l;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private G()Z
    .locals 4

    .prologue
    .line 990
    invoke-direct {p0}, Lcom/twitter/android/ActivityFragment;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    iget-boolean v0, p0, Lcom/twitter/android/ActivityFragment;->a:Z

    .line 993
    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/twitter/library/client/l;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    const-string/jumbo v1, "connect_tab"

    const/4 v2, 0x0

    .line 994
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/l;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private H()Z
    .locals 2

    .prologue
    .line 998
    iget-boolean v0, p0, Lcom/twitter/android/ActivityFragment;->a:Z

    invoke-direct {p0}, Lcom/twitter/android/ActivityFragment;->G()Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private M()Z
    .locals 2

    .prologue
    .line 1002
    iget-boolean v0, p0, Lcom/twitter/android/ActivityFragment;->x:Z

    invoke-direct {p0}, Lcom/twitter/android/ActivityFragment;->F()Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private O()Z
    .locals 2

    .prologue
    .line 1006
    iget-boolean v0, p0, Lcom/twitter/android/ActivityFragment;->w:Z

    invoke-direct {p0}, Lcom/twitter/android/ActivityFragment;->C()Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private P()Z
    .locals 1

    .prologue
    .line 1010
    invoke-direct {p0}, Lcom/twitter/android/ActivityFragment;->H()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/twitter/android/ActivityFragment;->M()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/twitter/android/ActivityFragment;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Q()V
    .locals 1

    .prologue
    .line 1019
    invoke-direct {p0}, Lcom/twitter/android/ActivityFragment;->G()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/ActivityFragment;->a:Z

    .line 1020
    invoke-direct {p0}, Lcom/twitter/android/ActivityFragment;->F()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/ActivityFragment;->x:Z

    .line 1021
    invoke-direct {p0}, Lcom/twitter/android/ActivityFragment;->C()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/ActivityFragment;->w:Z

    .line 1022
    return-void
.end method

.method private R()Z
    .locals 1

    .prologue
    .line 1025
    invoke-direct {p0}, Lcom/twitter/android/ActivityFragment;->S()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcal;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private S()Z
    .locals 1

    .prologue
    .line 1029
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    .line 1030
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/twitter/model/core/TwitterUser;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Laom;)Lcom/twitter/android/jj;
    .locals 9

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->aZ()Lcom/twitter/app/common/base/TwitterFragmentActivity;

    move-result-object v1

    .line 273
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v4

    .line 274
    instance-of v0, v1, Lcom/twitter/app/main/MainActivity;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/twitter/app/main/MainActivity;

    .line 275
    invoke-virtual {v0}, Lcom/twitter/app/main/MainActivity;->r()Lcom/twitter/app/main/r;

    move-result-object v8

    .line 276
    :goto_0
    new-instance v0, Lcom/twitter/android/jj;

    iget-object v2, p0, Lcom/twitter/android/ActivityFragment;->l:Lcom/twitter/library/util/FriendshipCache;

    iget-object v3, p0, Lcom/twitter/android/ActivityFragment;->p:Lcom/twitter/android/util/ah;

    iget-object v5, p0, Lcom/twitter/android/ActivityFragment;->n:Lcom/twitter/android/r;

    .line 277
    invoke-direct {p0}, Lcom/twitter/android/ActivityFragment;->n()Landroid/view/View$OnClickListener;

    move-result-object v6

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/twitter/android/jj;-><init>(Lcom/twitter/app/common/base/TwitterFragmentActivity;Lcom/twitter/library/util/FriendshipCache;Lcom/twitter/android/util/ah;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/android/r;Landroid/view/View$OnClickListener;Laom;Lcom/twitter/app/main/r;)V

    .line 276
    return-object v0

    .line 275
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private a(JI)V
    .locals 5

    .prologue
    const v3, 0x7f0a0045

    .line 624
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 625
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/ActivityDetailActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v0, "type"

    iget v2, p0, Lcom/twitter/android/ActivityFragment;->f:I

    .line 626
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "event_type"

    .line 627
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "user_tag"

    .line 628
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "status_tag"

    .line 629
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    .line 631
    packed-switch p3, :pswitch_data_0

    .line 669
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Tried to start ActivityDetailActivity for unsupported type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lckl;->a:Ljava/util/Map;

    .line 670
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 669
    invoke-static {v1}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 677
    :goto_0
    return-void

    .line 634
    :pswitch_1
    const-string/jumbo v0, "title_res_id"

    const v2, 0x7f0a03c2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 674
    :goto_1
    sget-object v0, Lckl;->a:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/twitter/android/ActivityFragment;->b(Ljava/lang/String;)V

    .line 676
    invoke-virtual {p0, v1}, Lcom/twitter/android/ActivityFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 641
    :pswitch_2
    const-string/jumbo v0, "title_res_id"

    const v2, 0x7f0a0044

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 645
    :pswitch_3
    const-string/jumbo v0, "title_res_id"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 649
    :pswitch_4
    const-string/jumbo v0, "title_res_id"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 653
    :pswitch_5
    const-string/jumbo v0, "title_res_id"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 657
    :pswitch_6
    const-string/jumbo v0, "title_res_id"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 631
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method

.method private a(JLjava/lang/String;)V
    .locals 7

    .prologue
    .line 597
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "user_id"

    .line 598
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "screen_name"

    .line 599
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 600
    const-string/jumbo v2, "association"

    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 601
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    const/4 v3, 0x5

    .line 602
    invoke-virtual {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(I)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-wide v4, p0, Lcom/twitter/android/ActivityFragment;->aa:J

    .line 603
    invoke-virtual {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a(J)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    .line 600
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 605
    invoke-virtual {p0, v1}, Lcom/twitter/android/ActivityFragment;->startActivity(Landroid/content/Intent;)V

    .line 606
    return-void
.end method

.method private a(JLjava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 610
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/app/lists/ListTabActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "list_id"

    .line 611
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "list_name"

    .line 612
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "list_fullname"

    .line 613
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "creator_id"

    .line 614
    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 615
    invoke-virtual {p0, v0}, Lcom/twitter/android/ActivityFragment;->startActivity(Landroid/content/Intent;)V

    .line 616
    return-void
.end method

.method private a(IJ)Z
    .locals 8

    .prologue
    const/16 v0, 0x14

    const/4 v1, 0x0

    .line 727
    invoke-virtual {p0, p1}, Lcom/twitter/android/ActivityFragment;->a_(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 763
    :goto_0
    return v1

    .line 732
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 748
    :goto_1
    :pswitch_0
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 749
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v1

    .line 750
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v2

    .line 751
    invoke-virtual {v2}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, p1}, Lcom/twitter/android/ActivityFragment;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 752
    new-instance v3, Lcom/twitter/library/api/activity/FetchActivityTimeline;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v5

    iget v6, p0, Lcom/twitter/android/ActivityFragment;->f:I

    iget-boolean v1, v1, Lcom/twitter/model/core/TwitterUser;->n:Z

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/twitter/library/api/activity/FetchActivityTimeline;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;IZ)V

    .line 753
    invoke-virtual {v3, v2}, Lcom/twitter/library/api/activity/FetchActivityTimeline;->a(Ljava/lang/String;)Lcom/twitter/library/api/activity/FetchActivityTimeline;

    move-result-object v1

    .line 754
    invoke-direct {p0, p1}, Lcom/twitter/android/ActivityFragment;->c(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/twitter/library/api/activity/FetchActivityTimeline;->c(J)Lbss;

    move-result-object v1

    .line 755
    invoke-direct {p0, p1}, Lcom/twitter/android/ActivityFragment;->d(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lbss;->b(J)Lbss;

    move-result-object v1

    .line 756
    invoke-virtual {v1, v0}, Lbss;->c(I)Lbss;

    move-result-object v0

    iget v1, p0, Lcom/twitter/android/ActivityFragment;->f:I

    .line 752
    invoke-virtual {p0, v0, v1, p1}, Lcom/twitter/android/ActivityFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 758
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    .line 759
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/jj;

    .line 760
    invoke-virtual {v0, p2, p3}, Lcom/twitter/android/jj;->a(J)V

    .line 761
    invoke-virtual {v0}, Lcom/twitter/android/jj;->notifyDataSetChanged()V

    .line 763
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 740
    goto :goto_1

    .line 732
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/twitter/android/ActivityFragment;)Z
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->aO()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/twitter/android/ActivityFragment;Z)Z
    .locals 0

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/twitter/android/ActivityFragment;->o:Z

    return p1
.end method

.method private a(Lcom/twitter/library/service/x;)Z
    .locals 4

    .prologue
    .line 863
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->N()Lcom/twitter/library/service/ab;

    move-result-object v0

    .line 864
    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/twitter/library/service/ab;->c:J

    iget-wide v2, p0, Lcom/twitter/android/ActivityFragment;->aa:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/android/ActivityFragment;)Lcvt;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->aP()Lcvt;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 591
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 592
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v3

    const-string/jumbo v4, ""

    const-string/jumbo v5, "click"

    invoke-static {v3, p1, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 593
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 591
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 594
    return-void
.end method

.method private c(I)J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 773
    packed-switch p1, :pswitch_data_0

    .line 795
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid fetch type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 776
    :pswitch_1
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 777
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/jj;

    invoke-virtual {v0}, Lcom/twitter/android/jj;->i()Lcmf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcmf;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckn;

    .line 778
    if-eqz v0, :cond_0

    .line 779
    iget-object v0, v0, Lckn;->a:Lckm;

    iget-wide v0, v0, Lckm;->b:J

    .line 791
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    .line 782
    goto :goto_0

    .line 786
    :pswitch_2
    iget-wide v0, p0, Lcom/twitter/android/ActivityFragment;->h:J

    goto :goto_0

    :pswitch_3
    move-wide v0, v2

    .line 791
    goto :goto_0

    .line 773
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lcom/twitter/android/ActivityFragment;)Lcom/twitter/library/util/FriendshipCache;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->l:Lcom/twitter/library/util/FriendshipCache;

    return-object v0
.end method

.method private d(I)J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 807
    packed-switch p1, :pswitch_data_0

    .line 832
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid fetch type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move-wide v0, v2

    .line 828
    :goto_0
    return-wide v0

    .line 815
    :pswitch_2
    iget-wide v0, p0, Lcom/twitter/android/ActivityFragment;->g:J

    goto :goto_0

    .line 819
    :pswitch_3
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/jj;

    invoke-virtual {v0}, Lcom/twitter/android/jj;->i()Lcmf;

    move-result-object v0

    .line 821
    invoke-virtual {v0}, Lcmf;->g()Z

    move-result v1

    if-nez v1, :cond_0

    .line 822
    invoke-virtual {v0}, Lcmf;->bb_()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcmf;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckn;

    .line 823
    if-eqz v0, :cond_0

    .line 824
    iget-object v0, v0, Lckn;->a:Lckm;

    iget-wide v0, v0, Lckm;->c:J

    goto :goto_0

    :cond_0
    move-wide v0, v2

    .line 828
    goto :goto_0

    .line 807
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic d(Lcom/twitter/android/ActivityFragment;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/android/ActivityFragment;)Lcom/twitter/library/client/bd;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->ab:Lcom/twitter/library/client/bd;

    return-object v0
.end method

.method static synthetic f(Lcom/twitter/android/ActivityFragment;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/twitter/android/ActivityFragment;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/twitter/android/ActivityFragment;)Lcom/twitter/library/client/bd;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->ab:Lcom/twitter/library/client/bd;

    return-object v0
.end method

.method static synthetic i(Lcom/twitter/android/ActivityFragment;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/twitter/android/ActivityFragment;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lcom/twitter/android/ActivityFragment;)Lcbv;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->u:Lcbv;

    return-object v0
.end method

.method static synthetic l(Lcom/twitter/android/ActivityFragment;)I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/twitter/android/ActivityFragment;->f:I

    return v0
.end method

.method static synthetic m(Lcom/twitter/android/ActivityFragment;)Lcom/twitter/android/util/ah;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->p:Lcom/twitter/android/util/ah;

    return-object v0
.end method

.method private n()Landroid/view/View$OnClickListener;
    .locals 2

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v0

    .line 283
    new-instance v1, Lcom/twitter/android/n;

    invoke-direct {v1, p0, v0}, Lcom/twitter/android/n;-><init>(Lcom/twitter/android/ActivityFragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    return-object v1
.end method

.method private o()V
    .locals 4

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v0

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":stream::results"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    iget-object v1, p0, Lcom/twitter/android/ActivityFragment;->n:Lcom/twitter/android/r;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/twitter/android/r;->a(JLjava/lang/String;)V

    .line 325
    return-void
.end method

.method private t()Z
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->s:Lcom/twitter/android/platform/DeviceStorageLowReceiver;

    invoke-virtual {v0}, Lcom/twitter/android/platform/DeviceStorageLowReceiver;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/ActivityFragment;->t:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private u()V
    .locals 4

    .prologue
    .line 849
    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->i:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->aC()Z

    move-result v0

    if-nez v0, :cond_1

    .line 860
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 854
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040024

    const/4 v3, 0x0

    .line 855
    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/ActivityFragment;->i:Landroid/view/View;

    .line 856
    iget-object v1, p0, Lcom/twitter/android/ActivityFragment;->i:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 857
    iget-object v1, p0, Lcom/twitter/android/ActivityFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 858
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v1

    iget-object v1, v1, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private v()V
    .locals 3

    .prologue
    .line 868
    iget-boolean v0, p0, Lcom/twitter/android/ActivityFragment;->o:Z

    if-nez v0, :cond_0

    .line 869
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/ActivityFragment;->o:Z

    .line 870
    new-instance v0, Lcom/twitter/library/api/activity/g;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/twitter/library/api/activity/g;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    const/16 v1, 0x1e62

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/ActivityFragment;->c(Lcom/twitter/library/service/x;II)Z

    .line 873
    :cond_0
    return-void
.end method

.method private w()V
    .locals 4

    .prologue
    .line 902
    invoke-direct {p0}, Lcom/twitter/android/ActivityFragment;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    invoke-direct {p0}, Lcom/twitter/android/ActivityFragment;->Q()V

    .line 904
    iget-boolean v0, p0, Lcom/twitter/android/ActivityFragment;->c:Z

    iget-boolean v1, p0, Lcom/twitter/android/ActivityFragment;->x:Z

    iget-boolean v2, p0, Lcom/twitter/android/ActivityFragment;->w:Z

    iget-boolean v3, p0, Lcom/twitter/android/ActivityFragment;->a:Z

    invoke-static {v0, v1, v2, v3}, Lckr;->a(ZZZZ)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/ActivityFragment;->f:I

    .line 906
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/ActivityFragment;->a(Z)V

    .line 908
    :cond_0
    return-void
.end method

.method private x()Landroid/view/View;
    .locals 2

    .prologue
    .line 933
    new-instance v0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;-><init>(Landroid/content/Context;)V

    .line 934
    new-instance v1, Lcom/twitter/android/notificationtimeline/a;

    invoke-direct {v1, v0, p0}, Lcom/twitter/android/notificationtimeline/a;-><init>(Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;Lcom/twitter/android/ActivityFragment;)V

    iput-object v1, p0, Lcom/twitter/android/ActivityFragment;->v:Lcom/twitter/android/notificationtimeline/a;

    .line 935
    invoke-direct {p0}, Lcom/twitter/android/ActivityFragment;->y()V

    .line 936
    invoke-virtual {v0}, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private y()V
    .locals 2

    .prologue
    .line 940
    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->v:Lcom/twitter/android/notificationtimeline/a;

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->v:Lcom/twitter/android/notificationtimeline/a;

    invoke-direct {p0}, Lcom/twitter/android/ActivityFragment;->S()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/notificationtimeline/a;->a(Z)V

    .line 943
    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 329
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->a()V

    .line 330
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/ActivityFragment;->d:Lcom/twitter/library/client/bj;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bk;->a(Lcom/twitter/library/client/bj;)V

    .line 332
    invoke-direct {p0}, Lcom/twitter/android/ActivityFragment;->v()V

    .line 334
    invoke-direct {p0}, Lcom/twitter/android/ActivityFragment;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/twitter/app/main/MainActivity;

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/main/MainActivity;

    invoke-virtual {v0}, Lcom/twitter/app/main/MainActivity;->r()Lcom/twitter/app/main/r;

    move-result-object v0

    invoke-direct {p0}, Lcom/twitter/android/ActivityFragment;->x()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/main/r;->a(Landroid/view/View;)V

    .line 340
    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/ActivityFragment;->w()V

    .line 341
    return-void
.end method

.method protected a(JJ)V
    .locals 7

    .prologue
    .line 531
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/ActivityFragment;->o:Z

    .line 532
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/twitter/library/client/bk;->b(J)Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 533
    iget-object v1, p0, Lcom/twitter/android/ActivityFragment;->p:Lcom/twitter/android/util/ah;

    iget v2, p0, Lcom/twitter/android/ActivityFragment;->f:I

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/twitter/android/util/ah;->a(IJ)V

    .line 534
    return-void
.end method

.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8

    .prologue
    const/4 v4, 0x6

    .line 556
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 557
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckw;

    .line 558
    instance-of v2, v1, Laoj;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 559
    check-cast v0, Laoj;

    .line 560
    iget-object v1, v0, Laoj;->e:Lcom/twitter/model/core/TwitterUser;

    if-eqz v1, :cond_0

    .line 561
    iget-object v1, v0, Laoj;->e:Lcom/twitter/model/core/TwitterUser;

    iget-wide v2, v1, Lcom/twitter/model/core/TwitterUser;->c:J

    iget-object v0, v0, Laoj;->e:Lcom/twitter/model/core/TwitterUser;

    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v0}, Lcom/twitter/android/ActivityFragment;->a(JLjava/lang/String;)V

    .line 563
    :cond_0
    const-string/jumbo v0, "joined_twitter"

    invoke-direct {p0, v0}, Lcom/twitter/android/ActivityFragment;->b(Ljava/lang/String;)V

    .line 588
    :cond_1
    :goto_0
    return-void

    .line 564
    :cond_2
    if-eqz v0, :cond_5

    instance-of v1, v1, Lany;

    if-eqz v1, :cond_5

    .line 565
    iget-object v1, v0, Lckw;->b:Lcks;

    check-cast v1, Lcle;

    .line 566
    iget v2, v1, Lcle;->d:I

    if-ne v2, v4, :cond_3

    .line 567
    invoke-virtual {v0}, Lckw;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckg;

    .line 568
    if-eqz v0, :cond_1

    .line 569
    iget-wide v2, v0, Lckg;->b:J

    iget-object v4, v0, Lckg;->c:Ljava/lang/String;

    iget-object v5, v0, Lckg;->d:Ljava/lang/String;

    iget-wide v6, v0, Lckg;->e:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/twitter/android/ActivityFragment;->a(JLjava/lang/String;Ljava/lang/String;J)V

    .line 570
    const-string/jumbo v0, "list_member_added"

    invoke-direct {p0, v0}, Lcom/twitter/android/ActivityFragment;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 572
    :cond_3
    iget v2, v1, Lcle;->d:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    invoke-virtual {v1}, Lcle;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 573
    invoke-virtual {v1}, Lcle;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 574
    if-eqz v0, :cond_1

    .line 575
    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v2

    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v0}, Lcom/twitter/android/ActivityFragment;->a(JLjava/lang/String;)V

    .line 576
    const-string/jumbo v0, "follow"

    invoke-direct {p0, v0}, Lcom/twitter/android/ActivityFragment;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 579
    :cond_4
    iget-object v1, v0, Lckw;->b:Lcks;

    check-cast v1, Lcle;

    invoke-virtual {v1}, Lcle;->a()J

    move-result-wide v2

    iget-object v0, v0, Lckw;->b:Lcks;

    check-cast v0, Lcle;

    iget v0, v0, Lcle;->d:I

    invoke-direct {p0, v2, v3, v0}, Lcom/twitter/android/ActivityFragment;->a(JI)V

    goto :goto_0

    .line 581
    :cond_5
    if-eqz v0, :cond_1

    iget-object v1, v0, Lckw;->b:Lcks;

    check-cast v1, Lcle;

    iget v1, v1, Lcle;->d:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 582
    iget-object v0, v0, Lckw;->b:Lcks;

    check-cast v0, Lcle;

    .line 583
    invoke-virtual {v0}, Lcle;->d()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/android/ActivityFragment;->g:J

    .line 584
    invoke-virtual {v0}, Lcle;->e()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/android/ActivityFragment;->h:J

    .line 585
    invoke-virtual {v0}, Lcle;->e()J

    move-result-wide v0

    invoke-direct {p0, v4, v0, v1}, Lcom/twitter/android/ActivityFragment;->a(IJ)Z

    .line 586
    const-string/jumbo v0, "gap"

    invoke-direct {p0, v0}, Lcom/twitter/android/ActivityFragment;->b(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected a(Lcmf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<",
            "Lckn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 456
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcmf;)V

    .line 458
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/jj;

    .line 459
    invoke-virtual {v0}, Lcom/twitter/android/jj;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/ActivityFragment;->a(I)Z

    .line 462
    :cond_0
    iget-boolean v0, p0, Lcom/twitter/android/ActivityFragment;->k:Z

    if-eqz v0, :cond_1

    .line 463
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/ActivityFragment;->k:Z

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->i:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 467
    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->i:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 468
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/ActivityFragment;->i:Landroid/view/View;

    .line 470
    :cond_2
    return-void
.end method

.method protected a(Lcom/twitter/app/common/inject/v;)V
    .locals 0

    .prologue
    .line 538
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcom/twitter/app/common/inject/v;)V

    .line 539
    check-cast p1, Lcom/twitter/app/common/list/aa;

    .line 541
    invoke-virtual {p1, p0}, Lcom/twitter/app/common/list/aa;->a(Lcom/twitter/app/common/list/af;)V

    .line 543
    return-void
.end method

.method protected a(Lcom/twitter/library/service/x;II)V
    .locals 6

    .prologue
    .line 474
    invoke-direct {p0, p1}, Lcom/twitter/android/ActivityFragment;->a(Lcom/twitter/library/service/x;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Lcom/twitter/library/service/x;II)V

    .line 479
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    .line 480
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->N()Lcom/twitter/library/service/ab;

    move-result-object v1

    .line 484
    const/16 v2, 0x1e62

    if-ne p2, v2, :cond_2

    .line 485
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/twitter/android/ActivityFragment;->o:Z

    .line 486
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->U()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 487
    iget-object v2, p0, Lcom/twitter/android/ActivityFragment;->p:Lcom/twitter/android/util/ah;

    iget-wide v4, v1, Lcom/twitter/library/service/ab;->c:J

    iget-object v0, v0, Lcom/twitter/library/service/aa;->c:Landroid/os/Bundle;

    const-string/jumbo v1, "act_read_pos"

    .line 488
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 487
    invoke-virtual {v2, v4, v5, v0, v1}, Lcom/twitter/android/util/ah;->a(JJ)V

    goto :goto_0

    .line 494
    :cond_2
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/library/service/ab;->a(Lcom/twitter/library/client/Session;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    iget v0, p0, Lcom/twitter/android/ActivityFragment;->f:I

    if-ne p2, v0, :cond_3

    .line 507
    invoke-virtual {p1}, Lcom/twitter/library/service/x;->U()Z

    move-result v0

    if-nez v0, :cond_3

    .line 510
    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->a_:Landroid/content/Context;

    const v1, 0x7f0a0043

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 511
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 515
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    if-ne p3, v0, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/jj;

    .line 517
    invoke-virtual {v0}, Lcom/twitter/android/jj;->b()V

    .line 518
    invoke-virtual {v0}, Lcom/twitter/android/jj;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 4

    .prologue
    .line 524
    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->p:Lcom/twitter/android/util/ah;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/util/ah;->a(Z)V

    .line 525
    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->p:Lcom/twitter/android/util/ah;

    iget v1, p0, Lcom/twitter/android/ActivityFragment;->f:I

    iget-wide v2, p0, Lcom/twitter/android/ActivityFragment;->aa:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/util/ah;->a(IJ)V

    .line 526
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->a(Z)V

    .line 527
    return-void
.end method

.method public a(ZZ)V
    .locals 2

    .prologue
    .line 889
    iget-boolean v0, p0, Lcom/twitter/android/ActivityFragment;->x:Z

    iget-boolean v1, p0, Lcom/twitter/android/ActivityFragment;->w:Z

    .line 890
    invoke-static {p2, v0, v1, p1}, Lckr;->a(ZZZZ)I

    move-result v0

    .line 892
    iget v1, p0, Lcom/twitter/android/ActivityFragment;->f:I

    if-eq v0, v1, :cond_0

    .line 893
    iput v0, p0, Lcom/twitter/android/ActivityFragment;->f:I

    .line 894
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/ActivityFragment;->a(Z)V

    .line 897
    :cond_0
    iput-boolean p1, p0, Lcom/twitter/android/ActivityFragment;->a:Z

    .line 898
    iput-boolean p2, p0, Lcom/twitter/android/ActivityFragment;->c:Z

    .line 899
    return-void
.end method

.method protected a(I)Z
    .locals 2

    .prologue
    .line 722
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/android/ActivityFragment;->a(IJ)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/widget/AbsListView;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 699
    if-eq p2, v0, :cond_0

    if-nez p2, :cond_1

    .line 700
    :cond_0
    if-ne p2, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/twitter/android/ActivityFragment;->e(Z)V

    .line 702
    :cond_1
    return v1

    :cond_2
    move v0, v1

    .line 700
    goto :goto_0
.end method

.method public a(Landroid/widget/AbsListView;IIIZ)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 682
    if-lez p3, :cond_0

    if-nez p2, :cond_0

    .line 687
    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->p:Lcom/twitter/android/util/ah;

    invoke-virtual {v0}, Lcom/twitter/android/util/ah;->b()V

    .line 690
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/twitter/app/main/MainActivity;

    if-eqz v0, :cond_0

    .line 691
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/main/MainActivity;

    sget-object v1, Lcom/twitter/app/main/MainActivity;->d:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/twitter/app/main/MainActivity;->a(Landroid/net/Uri;IZ)V

    .line 694
    :cond_0
    return v3
.end method

.method protected d()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 346
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->d()V

    .line 348
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->aI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/client/y;->a(Landroid/content/Context;)Lcom/twitter/android/client/y;

    move-result-object v0

    .line 350
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 349
    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/client/y;->c(J)V

    .line 354
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->p()Lcom/twitter/app/common/list/w;

    move-result-object v0

    .line 356
    const-string/jumbo v1, "ref_event"

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/w;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/twitter/android/ActivityFragment;->b:Z

    if-nez v1, :cond_2

    .line 357
    const-string/jumbo v1, "ref_event"

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/w;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    iput-boolean v4, p0, Lcom/twitter/android/ActivityFragment;->b:Z

    move-object v1, v0

    .line 362
    :goto_0
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v2, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 363
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v4

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "impression"

    invoke-static {v4, v5, v6, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 364
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 362
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 366
    invoke-direct {p0}, Lcom/twitter/android/ActivityFragment;->R()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/android/vit/VitNotificationsEducationOverlay;->a(Landroid/content/Context;Lcom/twitter/model/core/TwitterUser;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/vit/VitNotificationsEducationOverlay;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 371
    :cond_1
    return-void

    .line 360
    :cond_2
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0
.end method

.method protected e()V
    .locals 2

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->ax()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    invoke-direct {p0}, Lcom/twitter/android/ActivityFragment;->o()V

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->p:Lcom/twitter/android/util/ah;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/util/ah;->a(Z)V

    .line 380
    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->i:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->i:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 384
    :cond_1
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/ActivityFragment;->d:Lcom/twitter/library/client/bj;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bk;->b(Lcom/twitter/library/client/bj;)V

    .line 386
    invoke-direct {p0}, Lcom/twitter/android/ActivityFragment;->R()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 388
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/twitter/app/main/MainActivity;

    if-eqz v0, :cond_2

    .line 389
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/main/MainActivity;

    invoke-virtual {v0}, Lcom/twitter/app/main/MainActivity;->r()Lcom/twitter/app/main/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/main/r;->a()V

    .line 393
    :cond_2
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->e()V

    .line 394
    return-void
.end method

.method protected f()Lavm;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lavm",
            "<",
            "Lcmf",
            "<",
            "Lckn;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 439
    new-instance v0, Lcom/twitter/android/o;

    invoke-direct {v0, p0}, Lcom/twitter/android/o;-><init>(Lcom/twitter/android/ActivityFragment;)V

    .line 451
    new-instance v1, Lcom/twitter/android/g;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/android/ActivityFragment;->u:Lcbv;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/twitter/android/g;-><init>(Landroid/support/v4/app/LoaderManager;ILcom/twitter/util/object/i;Lcbv;)V

    return-object v1
.end method

.method protected g()V
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->p:Lcom/twitter/android/util/ah;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/util/ah;->a(Z)V

    .line 549
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/ActivityFragment;->a(I)Z

    .line 550
    return-void
.end method

.method protected h()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 707
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/jj;

    invoke-virtual {v0}, Lcom/twitter/android/jj;->i()Lcmf;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/t;

    .line 708
    iget-boolean v3, p0, Lcom/twitter/android/ActivityFragment;->r:Z

    if-eqz v3, :cond_2

    .line 709
    invoke-direct {p0}, Lcom/twitter/android/ActivityFragment;->t()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 710
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->aG()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/twitter/android/t;->w_()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    iget-boolean v0, p0, Lcom/twitter/android/ActivityFragment;->k:Z

    if-nez v0, :cond_1

    .line 711
    invoke-virtual {p0, v2}, Lcom/twitter/android/ActivityFragment;->a(I)Z

    .line 712
    iput-boolean v2, p0, Lcom/twitter/android/ActivityFragment;->k:Z

    .line 714
    :cond_1
    return-void

    .line 709
    :cond_2
    invoke-virtual {v0}, Lcom/twitter/android/t;->bb_()I

    move-result v3

    const/16 v4, 0x320

    if-ge v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 840
    const-string/jumbo v0, "connect"

    return-object v0
.end method

.method protected j()Z
    .locals 1

    .prologue
    .line 845
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/twitter/android/ActivityFragment;->a(I)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 911
    iget-boolean v0, p0, Lcom/twitter/android/ActivityFragment;->c:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 915
    iget-boolean v0, p0, Lcom/twitter/android/ActivityFragment;->a:Z

    return v0
.end method

.method public m()V
    .locals 5

    .prologue
    .line 920
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 921
    invoke-static {}, Lcal;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 922
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/twitter/android/settings/NewNotificationsTimelineSettingsActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "extra_account_id"

    .line 923
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "sync_settings"

    const/4 v2, 0x1

    .line 924
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 928
    :goto_0
    invoke-virtual {p0, v0}, Lcom/twitter/android/ActivityFragment;->startActivity(Landroid/content/Intent;)V

    .line 929
    return-void

    .line 926
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/twitter/android/settings/NotificationsTimelineSettingsActivity;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    .line 215
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 216
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v10

    .line 217
    new-instance v2, Lcom/twitter/android/sn;

    invoke-direct {v2, p0, v10}, Lcom/twitter/android/sn;-><init>(Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 218
    new-instance v0, Lciy;

    invoke-direct {v0}, Lciy;-><init>()V

    const-string/jumbo v1, "tweet:::platform_photo_card:click"

    .line 219
    invoke-virtual {v0, v1}, Lciy;->c(Ljava/lang/String;)Lciy;

    move-result-object v0

    const-string/jumbo v1, "tweet:::platform_player_card:click"

    .line 220
    invoke-virtual {v0, v1}, Lciy;->d(Ljava/lang/String;)Lciy;

    move-result-object v0

    const-string/jumbo v1, "tweet"

    const-string/jumbo v3, "avatar"

    const-string/jumbo v4, "profile_click"

    .line 221
    invoke-static {v10, v1, v3, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lciy;->a(Ljava/lang/String;)Lciy;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    invoke-virtual {v10}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "::tweet:link:open_link"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lciy;->b(Ljava/lang/String;)Lciy;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Lciy;->a()Lciw;

    move-result-object v0

    .line 225
    new-instance v1, Lcom/twitter/android/vw;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v10, v3, v0}, Lcom/twitter/android/vw;-><init>(Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Lciw;)V

    iput-object v1, p0, Lcom/twitter/android/ActivityFragment;->j:Lcom/twitter/android/vw;

    .line 226
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v6

    .line 227
    iget-object v3, v6, Lcom/twitter/app/common/list/aa;->a:Landroid/widget/ListView;

    .line 229
    new-instance v0, Lcom/twitter/android/tj;

    iget-object v1, p0, Lcom/twitter/android/ActivityFragment;->a_:Landroid/content/Context;

    .line 231
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/tj;-><init>(Lcom/twitter/app/common/list/TwitterListFragment;Lciv;Landroid/widget/ListView;IZ)V

    .line 232
    invoke-virtual {v6, v0}, Lcom/twitter/app/common/list/aa;->a(Landroid/view/View$OnTouchListener;)V

    .line 234
    new-instance v2, Lcom/twitter/android/m;

    invoke-direct {v2, p0, v0}, Lcom/twitter/android/m;-><init>(Lcom/twitter/android/ActivityFragment;Lcom/twitter/android/tj;)V

    .line 240
    new-instance v0, Laom;

    iget-object v1, p0, Lcom/twitter/android/ActivityFragment;->j:Lcom/twitter/android/vw;

    iget-object v3, p0, Lcom/twitter/android/ActivityFragment;->l:Lcom/twitter/library/util/FriendshipCache;

    .line 241
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/twitter/android/ActivityFragment;->a_:Landroid/content/Context;

    .line 242
    invoke-static {v5}, Lcom/twitter/android/client/w;->a(Landroid/content/Context;)Lcom/twitter/android/client/w;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/android/client/w;->a()Z

    move-result v6

    .line 243
    invoke-static {}, Lcom/twitter/util/collection/ReferenceList;->a()Lcom/twitter/util/collection/ReferenceList;

    move-result-object v7

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->aM()Z

    move-result v8

    .line 244
    invoke-static {}, Lcbe;->a()Lcbe;

    move-result-object v5

    invoke-virtual {v5}, Lcbe;->b()Z

    move-result v9

    move-object v5, v10

    invoke-direct/range {v0 .. v9}, Laom;-><init>(Lcom/twitter/android/vw;Landroid/view/View$OnLongClickListener;Lcom/twitter/library/util/FriendshipCache;Landroid/app/Activity;Lcom/twitter/library/scribe/TwitterScribeAssociation;ZLcom/twitter/util/collection/ReferenceList;ZZ)V

    .line 245
    invoke-direct {p0, v0}, Lcom/twitter/android/ActivityFragment;->a(Laom;)Lcom/twitter/android/jj;

    move-result-object v1

    .line 247
    invoke-virtual {p0, v1}, Lcom/twitter/android/ActivityFragment;->a(Lcom/twitter/android/client/v;)Lcom/twitter/app/common/list/TwitterListFragment;

    .line 249
    if-eqz p1, :cond_2

    .line 251
    const-string/jumbo v0, "spinning_gap_ids"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    .line 252
    if-eqz v2, :cond_1

    .line 253
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-wide v4, v2, v0

    .line 254
    invoke-virtual {v1, v4, v5}, Lcom/twitter/android/jj;->a(J)V

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {v1}, Lcom/twitter/android/jj;->notifyDataSetChanged()V

    .line 258
    :cond_1
    const-string/jumbo v0, "state_show_stork"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    invoke-direct {p0}, Lcom/twitter/android/ActivityFragment;->u()V

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->m:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "show_stork_text"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 264
    invoke-direct {p0}, Lcom/twitter/android/ActivityFragment;->u()V

    .line 265
    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->m:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "show_stork_text"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 268
    :cond_3
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->aE()Lcom/twitter/app/common/list/aa;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/list/aa;->a(Lcvt;)V

    .line 269
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 180
    new-instance v0, Lcbv;

    invoke-direct {v0}, Lcbv;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/ActivityFragment;->u:Lcbv;

    .line 182
    invoke-static {p0, p1}, Lcom/twitter/android/ActivityFragmentSavedState;->a(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 183
    invoke-direct {p0}, Lcom/twitter/android/ActivityFragment;->Q()V

    .line 185
    iget-boolean v0, p0, Lcom/twitter/android/ActivityFragment;->c:Z

    iget-boolean v1, p0, Lcom/twitter/android/ActivityFragment;->x:Z

    iget-boolean v2, p0, Lcom/twitter/android/ActivityFragment;->w:Z

    iget-boolean v3, p0, Lcom/twitter/android/ActivityFragment;->a:Z

    invoke-static {v0, v1, v2, v3}, Lckr;->a(ZZZZ)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/ActivityFragment;->f:I

    .line 188
    iget v0, p0, Lcom/twitter/android/ActivityFragment;->f:I

    invoke-static {v0}, Lcom/twitter/library/api/activity/e;->a(I)Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ActivityFragment;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 190
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 191
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/ActivityFragment;->m:Landroid/content/SharedPreferences;

    .line 192
    iget-object v1, p0, Lcom/twitter/android/ActivityFragment;->m:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/twitter/android/ActivityFragment;->e:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 194
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 195
    new-instance v2, Lcom/twitter/android/util/ah;

    iget v3, p0, Lcom/twitter/android/ActivityFragment;->f:I

    .line 196
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/twitter/android/util/ah;-><init>(Landroid/content/Context;IJ)V

    iput-object v2, p0, Lcom/twitter/android/ActivityFragment;->p:Lcom/twitter/android/util/ah;

    .line 199
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/util/bu;->a(Lcom/twitter/model/core/TwitterUser;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/ActivityFragment;->r:Z

    .line 200
    iget-boolean v1, p0, Lcom/twitter/android/ActivityFragment;->r:Z

    if-eqz v1, :cond_1

    .line 201
    if-eqz p1, :cond_0

    .line 203
    const-string/jumbo v1, "is_device_storage_low"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/ActivityFragment;->t:Z

    .line 205
    :cond_0
    new-instance v1, Lcom/twitter/android/platform/DeviceStorageLowReceiver;

    invoke-direct {v1}, Lcom/twitter/android/platform/DeviceStorageLowReceiver;-><init>()V

    iput-object v1, p0, Lcom/twitter/android/ActivityFragment;->s:Lcom/twitter/android/platform/DeviceStorageLowReceiver;

    .line 206
    iget-object v1, p0, Lcom/twitter/android/ActivityFragment;->s:Lcom/twitter/android/platform/DeviceStorageLowReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 210
    :cond_1
    new-instance v0, Lcom/twitter/android/r;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->aZ()Lcom/twitter/app/common/base/TwitterFragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->aT()Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/r;-><init>(Landroid/content/Context;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    iput-object v0, p0, Lcom/twitter/android/ActivityFragment;->n:Lcom/twitter/android/r;

    .line 211
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 407
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->onDestroy()V

    .line 408
    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->m:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/twitter/android/ActivityFragment;->e:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 410
    iget-boolean v0, p0, Lcom/twitter/android/ActivityFragment;->r:Z

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 412
    iget-object v1, p0, Lcom/twitter/android/ActivityFragment;->s:Lcom/twitter/android/platform/DeviceStorageLowReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 413
    iget-object v1, p0, Lcom/twitter/android/ActivityFragment;->ab:Lcom/twitter/library/client/bd;

    .line 414
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->bf()Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 413
    invoke-static {v0, v2}, Lcom/twitter/android/util/bu;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;)Lcom/twitter/android/util/bv;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 416
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 420
    invoke-super {p0, p1}, Lcom/twitter/app/common/list/TwitterListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 421
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->aP()Lcvt;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/jj;

    invoke-virtual {v0}, Lcom/twitter/android/jj;->ah_()Ljava/util/List;

    move-result-object v0

    .line 423
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 424
    const-string/jumbo v1, "spinning_gap_ids"

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->e(Ljava/util/Collection;)[J

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->i:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 428
    const-string/jumbo v0, "state_show_stork"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->s:Lcom/twitter/android/platform/DeviceStorageLowReceiver;

    if-eqz v0, :cond_2

    .line 431
    const-string/jumbo v0, "is_device_storage_low"

    invoke-direct {p0}, Lcom/twitter/android/ActivityFragment;->t()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 433
    :cond_2
    new-instance v0, Lcom/twitter/android/ActivityFragmentSavedState;

    invoke-direct {v0, p0}, Lcom/twitter/android/ActivityFragmentSavedState;-><init>(Lcom/twitter/android/ActivityFragment;)V

    invoke-virtual {v0, p1}, Lcom/twitter/android/ActivityFragmentSavedState;->a(Landroid/os/Bundle;)V

    .line 434
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 398
    invoke-super {p0}, Lcom/twitter/app/common/list/TwitterListFragment;->onStop()V

    .line 399
    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->q:Lcom/twitter/library/widget/TweetView;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->q:Lcom/twitter/library/widget/TweetView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/TweetView;->setHighlighted(Z)V

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/ActivityFragment;->q:Lcom/twitter/library/widget/TweetView;

    .line 403
    :cond_0
    return-void
.end method
