.class final Lcom/twitter/android/k;
.super Lcom/twitter/android/yb;
.source "Twttr"


# instance fields
.field private final a:Z


# direct methods
.method constructor <init>(Landroid/content/Context;ILcom/twitter/library/widget/e;Lcom/twitter/library/util/FriendshipCache;ZZ)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/twitter/library/widget/e",
            "<",
            "Lcom/twitter/library/widget/UserView;",
            ">;",
            "Lcom/twitter/library/util/FriendshipCache;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 703
    invoke-direct/range {p0 .. p5}, Lcom/twitter/android/yb;-><init>(Landroid/content/Context;ILcom/twitter/library/widget/e;Lcom/twitter/library/util/FriendshipCache;Z)V

    .line 704
    iput-boolean p6, p0, Lcom/twitter/android/k;->a:Z

    .line 705
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 710
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 711
    const v1, 0x7f040027

    const/4 v2, 0x0

    .line 712
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ActivityUserView;

    .line 713
    invoke-virtual {p0, v0}, Lcom/twitter/android/k;->a(Lcom/twitter/library/widget/UserView;)Lcom/twitter/library/widget/UserView;

    .line 714
    return-object v0
.end method

.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 697
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/k;->a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/twitter/library/widget/UserView;)Lcom/twitter/library/widget/UserView;
    .locals 2

    .prologue
    .line 720
    const v0, 0x7f0200bd

    iget-object v1, p0, Lcom/twitter/android/k;->f:Lcom/twitter/library/widget/e;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/library/widget/UserView;->a(ILcom/twitter/library/widget/e;)V

    .line 721
    const v0, 0x7f0200be

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/UserView;->setFollowBackgroundResource(I)V

    .line 722
    new-instance v0, Lcom/twitter/android/xy;

    invoke-direct {v0, p1}, Lcom/twitter/android/xy;-><init>(Lcom/twitter/library/widget/BaseUserView;)V

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/UserView;->setTag(Ljava/lang/Object;)V

    .line 723
    return-object p1
.end method

.method public a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6

    .prologue
    .line 728
    invoke-static {p3}, Lcom/twitter/android/h;->a(Landroid/database/Cursor;)Lcom/twitter/model/core/TwitterUser;

    move-result-object v2

    move-object v0, p1

    .line 729
    check-cast v0, Lcom/twitter/android/widget/ActivityUserView;

    .line 730
    iget-wide v4, v2, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-virtual {v0, v4, v5}, Lcom/twitter/android/widget/ActivityUserView;->setUserId(J)V

    .line 731
    iget-object v1, p0, Lcom/twitter/android/k;->g:Lcom/twitter/library/util/FriendshipCache;

    iget-boolean v3, p0, Lcom/twitter/android/k;->a:Z

    iget-wide v4, p0, Lcom/twitter/android/k;->h:J

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/widget/ActivityUserView;->a(Lcom/twitter/library/util/FriendshipCache;Lcom/twitter/model/core/TwitterUser;ZJ)V

    .line 732
    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 697
    check-cast p3, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/k;->a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    return-void
.end method
