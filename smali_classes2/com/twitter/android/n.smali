.class Lcom/twitter/android/n;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field final synthetic b:Lcom/twitter/android/ActivityFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/ActivityFragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/twitter/android/n;->b:Lcom/twitter/android/ActivityFragment;

    iput-object p2, p0, Lcom/twitter/android/n;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 286
    .line 287
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoi;

    .line 288
    check-cast p1, Lcom/twitter/library/widget/ActionButton;

    .line 289
    invoke-virtual {p1}, Lcom/twitter/library/widget/ActionButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    invoke-virtual {p1, v7}, Lcom/twitter/library/widget/ActionButton;->setChecked(Z)V

    .line 291
    iget-object v1, p0, Lcom/twitter/android/n;->b:Lcom/twitter/android/ActivityFragment;

    invoke-static {v1}, Lcom/twitter/android/ActivityFragment;->c(Lcom/twitter/android/ActivityFragment;)Lcom/twitter/library/util/FriendshipCache;

    move-result-object v1

    iget-object v2, v0, Laoi;->a:Lcom/twitter/model/core/TwitterUser;

    iget-wide v2, v2, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-virtual {v1, v2, v3}, Lcom/twitter/library/util/FriendshipCache;->c(J)V

    .line 292
    iget-object v1, p0, Lcom/twitter/android/n;->b:Lcom/twitter/android/ActivityFragment;

    invoke-static {v1}, Lcom/twitter/android/ActivityFragment;->e(Lcom/twitter/android/ActivityFragment;)Lcom/twitter/library/client/bd;

    move-result-object v8

    new-instance v1, Lbuc;

    iget-object v2, p0, Lcom/twitter/android/n;->b:Lcom/twitter/android/ActivityFragment;

    invoke-virtual {v2}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/n;->b:Lcom/twitter/android/ActivityFragment;

    invoke-static {v3}, Lcom/twitter/android/ActivityFragment;->d(Lcom/twitter/android/ActivityFragment;)Lcom/twitter/library/client/Session;

    move-result-object v3

    iget-object v4, v0, Laoi;->a:Lcom/twitter/model/core/TwitterUser;

    iget-wide v4, v4, Lcom/twitter/model/core/TwitterUser;->c:J

    iget-object v6, v0, Laoi;->a:Lcom/twitter/model/core/TwitterUser;

    iget-object v6, v6, Lcom/twitter/model/core/TwitterUser;->B:Lcss;

    invoke-direct/range {v1 .. v6}, Lbuc;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;)V

    invoke-virtual {v8, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 294
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/n;->b:Lcom/twitter/android/ActivityFragment;

    invoke-static {v2}, Lcom/twitter/android/ActivityFragment;->f(Lcom/twitter/android/ActivityFragment;)Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v2, v0, Laoi;->a:Lcom/twitter/model/core/TwitterUser;

    iget-wide v2, v2, Lcom/twitter/model/core/TwitterUser;->c:J

    iget-object v4, v0, Laoi;->a:Lcom/twitter/model/core/TwitterUser;

    iget-object v4, v4, Lcom/twitter/model/core/TwitterUser;->B:Lcss;

    iget-object v0, v0, Laoi;->a:Lcom/twitter/model/core/TwitterUser;

    .line 296
    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->h()Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(JLcss;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/android/n;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v3, ""

    const-string/jumbo v4, "user"

    const-string/jumbo v5, "unfollow"

    .line 297
    invoke-static {v2, v3, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/n;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 298
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 294
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 316
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-virtual {p1, v9}, Lcom/twitter/library/widget/ActionButton;->setChecked(Z)V

    .line 301
    iget-object v1, p0, Lcom/twitter/android/n;->b:Lcom/twitter/android/ActivityFragment;

    .line 302
    invoke-static {v1}, Lcom/twitter/android/ActivityFragment;->c(Lcom/twitter/android/ActivityFragment;)Lcom/twitter/library/util/FriendshipCache;

    move-result-object v1

    iget-object v2, v0, Laoi;->a:Lcom/twitter/model/core/TwitterUser;

    iget-wide v2, v2, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-virtual {v1, v2, v3}, Lcom/twitter/library/util/FriendshipCache;->a(J)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/twitter/android/n;->b:Lcom/twitter/android/ActivityFragment;

    .line 303
    invoke-static {v1}, Lcom/twitter/android/ActivityFragment;->c(Lcom/twitter/android/ActivityFragment;)Lcom/twitter/library/util/FriendshipCache;

    move-result-object v1

    iget-object v2, v0, Laoi;->a:Lcom/twitter/model/core/TwitterUser;

    iget-wide v2, v2, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-virtual {v1, v2, v3}, Lcom/twitter/library/util/FriendshipCache;->j(J)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 304
    :goto_1
    or-int/lit8 v1, v1, 0x1

    or-int/lit8 v1, v1, 0x40

    .line 305
    iget-object v2, p0, Lcom/twitter/android/n;->b:Lcom/twitter/android/ActivityFragment;

    invoke-static {v2}, Lcom/twitter/android/ActivityFragment;->c(Lcom/twitter/android/ActivityFragment;)Lcom/twitter/library/util/FriendshipCache;

    move-result-object v2

    iget-object v3, v0, Laoi;->a:Lcom/twitter/model/core/TwitterUser;

    iget-wide v4, v3, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-virtual {v2, v4, v5, v1}, Lcom/twitter/library/util/FriendshipCache;->b(JI)V

    .line 306
    iget-object v1, p0, Lcom/twitter/android/n;->b:Lcom/twitter/android/ActivityFragment;

    invoke-static {v1}, Lcom/twitter/android/ActivityFragment;->g(Lcom/twitter/android/ActivityFragment;)Lcom/twitter/library/client/Session;

    move-result-object v3

    .line 307
    iget-object v1, p0, Lcom/twitter/android/n;->b:Lcom/twitter/android/ActivityFragment;

    invoke-static {v1}, Lcom/twitter/android/ActivityFragment;->h(Lcom/twitter/android/ActivityFragment;)Lcom/twitter/library/client/bd;

    move-result-object v8

    new-instance v1, Lbtz;

    iget-object v2, p0, Lcom/twitter/android/n;->b:Lcom/twitter/android/ActivityFragment;

    invoke-virtual {v2}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v4, v0, Laoi;->a:Lcom/twitter/model/core/TwitterUser;

    iget-wide v4, v4, Lcom/twitter/model/core/TwitterUser;->c:J

    iget-object v6, v0, Laoi;->a:Lcom/twitter/model/core/TwitterUser;

    iget-object v6, v6, Lcom/twitter/model/core/TwitterUser;->B:Lcss;

    invoke-direct/range {v1 .. v6}, Lbtz;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;)V

    invoke-virtual {v8, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 309
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/n;->b:Lcom/twitter/android/ActivityFragment;

    invoke-static {v2}, Lcom/twitter/android/ActivityFragment;->i(Lcom/twitter/android/ActivityFragment;)Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v2, v0, Laoi;->a:Lcom/twitter/model/core/TwitterUser;

    iget-wide v2, v2, Lcom/twitter/model/core/TwitterUser;->c:J

    iget-object v4, v0, Laoi;->a:Lcom/twitter/model/core/TwitterUser;

    iget-object v4, v4, Lcom/twitter/model/core/TwitterUser;->B:Lcss;

    iget-object v0, v0, Laoi;->a:Lcom/twitter/model/core/TwitterUser;

    .line 311
    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->h()Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->b(JLcss;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/android/n;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v3, ""

    const-string/jumbo v4, "user"

    const-string/jumbo v5, "follow"

    .line 312
    invoke-static {v2, v3, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    new-array v1, v9, [Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/android/n;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v3, ""

    const-string/jumbo v4, "user"

    const-string/jumbo v5, "follow"

    .line 313
    invoke-static {v2, v3, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/n;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 314
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 309
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_0

    :cond_1
    move v1, v7

    .line 303
    goto/16 :goto_1
.end method
