.class Lcom/twitter/android/oy;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/widget/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/library/widget/e",
        "<",
        "Lcom/twitter/library/widget/UserView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/ov;

.field private b:Lcss;

.field private c:I


# direct methods
.method constructor <init>(Lcom/twitter/android/ov;)V
    .locals 1

    .prologue
    .line 987
    iput-object p1, p0, Lcom/twitter/android/oy;->a:Lcom/twitter/android/ov;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 984
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/oy;->b:Lcss;

    .line 985
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/android/oy;->c:I

    .line 988
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 995
    iput p1, p0, Lcom/twitter/android/oy;->c:I

    .line 996
    return-void
.end method

.method public bridge synthetic a(Lcom/twitter/library/widget/BaseUserView;JII)V
    .locals 6

    .prologue
    .line 983
    move-object v1, p1

    check-cast v1, Lcom/twitter/library/widget/UserView;

    move-object v0, p0

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/oy;->a(Lcom/twitter/library/widget/UserView;JII)V

    return-void
.end method

.method public a(Lcom/twitter/library/widget/UserView;JII)V
    .locals 8

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/twitter/android/oy;->a:Lcom/twitter/android/ov;

    invoke-static {v0}, Lcom/twitter/android/ov;->b(Lcom/twitter/android/ov;)I

    move-result v0

    .line 1005
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1007
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/oy;->a:Lcom/twitter/android/ov;

    invoke-static {v1}, Lcom/twitter/android/ov;->c(Lcom/twitter/android/ov;)Lcom/twitter/app/common/base/TwitterFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 1008
    invoke-static {v2}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v7

    .line 1009
    iget-object v1, p0, Lcom/twitter/android/oy;->a:Lcom/twitter/android/ov;

    invoke-static {v1}, Lcom/twitter/android/ov;->d(Lcom/twitter/android/ov;)Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v3

    .line 1011
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1012
    invoke-virtual {p1}, Lcom/twitter/library/widget/UserView;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1013
    new-instance v1, Lbuc;

    iget-object v6, p0, Lcom/twitter/android/oy;->b:Lcss;

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lbuc;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;)V

    invoke-virtual {v7, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 1015
    iget-object v1, p0, Lcom/twitter/android/oy;->a:Lcom/twitter/android/ov;

    invoke-static {v1}, Lcom/twitter/android/ov;->e(Lcom/twitter/android/ov;)Lcom/twitter/library/util/FriendshipCache;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/twitter/library/util/FriendshipCache;->c(J)V

    .line 1016
    iget-object v1, p0, Lcom/twitter/android/oy;->a:Lcom/twitter/android/ov;

    invoke-static {v1}, Lcom/twitter/android/ov;->f(Lcom/twitter/android/ov;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "search:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/oy;->a:Lcom/twitter/android/ov;

    invoke-static {v1}, Lcom/twitter/android/ov;->g(Lcom/twitter/android/ov;)I

    move-result v1

    invoke-static {v1}, Lcom/twitter/model/topic/TwitterTopic;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":people_pivot:user:unfollow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1037
    :goto_1
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/oy;->a:Lcom/twitter/android/ov;

    invoke-static {v2}, Lcom/twitter/android/ov;->d(Lcom/twitter/android/ov;)Lcom/twitter/library/client/bk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 1038
    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v2, p0, Lcom/twitter/android/oy;->a:Lcom/twitter/android/ov;

    .line 1039
    invoke-static {v2}, Lcom/twitter/android/ov;->c(Lcom/twitter/android/ov;)Lcom/twitter/app/common/base/TwitterFragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/android/oy;->a:Lcom/twitter/android/ov;

    invoke-static {v4}, Lcom/twitter/android/ov;->i(Lcom/twitter/android/ov;)Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v1

    .line 1040
    invoke-virtual {p1}, Lcom/twitter/library/widget/UserView;->getPromotedContent()Lcss;

    move-result-object v4

    const/4 v5, 0x0

    iget v6, p0, Lcom/twitter/android/oy;->c:I

    move-wide v2, p2

    invoke-virtual/range {v1 .. v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(JLcss;Ljava/lang/String;I)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 1041
    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/oy;->a:Lcom/twitter/android/ov;

    .line 1042
    invoke-static {v1}, Lcom/twitter/android/ov;->i(Lcom/twitter/android/ov;)Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/oy;->a:Lcom/twitter/android/ov;

    .line 1043
    invoke-static {v1}, Lcom/twitter/android/ov;->h(Lcom/twitter/android/ov;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->g(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1037
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1050
    :goto_2
    return-void

    .line 1005
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1019
    :cond_1
    if-eqz v0, :cond_2

    .line 1020
    const-string/jumbo v0, "search:people:users:user:unfollow"

    goto :goto_1

    .line 1022
    :cond_2
    const-string/jumbo v0, "search:universal::user:unfollow"

    goto :goto_1

    .line 1025
    :cond_3
    new-instance v1, Lbtz;

    iget-object v6, p0, Lcom/twitter/android/oy;->b:Lcss;

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lbtz;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;)V

    invoke-virtual {v7, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 1027
    iget-object v1, p0, Lcom/twitter/android/oy;->a:Lcom/twitter/android/ov;

    invoke-static {v1}, Lcom/twitter/android/ov;->e(Lcom/twitter/android/ov;)Lcom/twitter/library/util/FriendshipCache;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/twitter/library/util/FriendshipCache;->b(J)V

    .line 1028
    iget-object v1, p0, Lcom/twitter/android/oy;->a:Lcom/twitter/android/ov;

    invoke-static {v1}, Lcom/twitter/android/ov;->f(Lcom/twitter/android/ov;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "search:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/oy;->a:Lcom/twitter/android/ov;

    invoke-static {v1}, Lcom/twitter/android/ov;->g(Lcom/twitter/android/ov;)I

    move-result v1

    invoke-static {v1}, Lcom/twitter/model/topic/TwitterTopic;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":people_pivot:user:follow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1031
    :cond_4
    if-eqz v0, :cond_5

    .line 1032
    const-string/jumbo v0, "search:people:users:user:follow"

    goto/16 :goto_1

    .line 1034
    :cond_5
    const-string/jumbo v0, "search:universal::user:follow"

    goto/16 :goto_1

    .line 1045
    :cond_6
    invoke-virtual {p1}, Lcom/twitter/library/widget/UserView;->i()V

    .line 1046
    iget-object v0, p0, Lcom/twitter/android/oy;->a:Lcom/twitter/android/ov;

    invoke-static {v0}, Lcom/twitter/android/ov;->c(Lcom/twitter/android/ov;)Lcom/twitter/app/common/base/TwitterFragmentActivity;

    move-result-object v0

    const/4 v1, 0x4

    .line 1048
    invoke-virtual {p1}, Lcom/twitter/library/widget/UserView;->getBestName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1046
    invoke-static {v0, v1, v2}, Lcom/twitter/android/ip;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    goto :goto_2
.end method

.method public a(Lcss;)V
    .locals 0

    .prologue
    .line 991
    iput-object p1, p0, Lcom/twitter/android/oy;->b:Lcss;

    .line 992
    return-void
.end method
