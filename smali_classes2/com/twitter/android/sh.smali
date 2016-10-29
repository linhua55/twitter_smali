.class Lcom/twitter/android/sh;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/widget/r;


# instance fields
.field private final a:Lcom/twitter/util/object/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/i",
            "<",
            "Lcom/twitter/android/hn;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/twitter/library/client/bk;

.field private final c:Lcom/twitter/library/client/bd;

.field private final d:Landroid/content/Context;

.field private final e:Lcia;

.field private final f:Lcom/twitter/android/sn;

.field private final g:Lcom/twitter/library/util/FriendshipCache;


# direct methods
.method constructor <init>(Lcom/twitter/util/object/i;Lcom/twitter/library/client/bk;Lcom/twitter/library/client/bd;Landroid/content/Context;Lcia;Lcom/twitter/android/sn;Lcom/twitter/library/util/FriendshipCache;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/object/i",
            "<",
            "Lcom/twitter/android/hn;",
            ">;",
            "Lcom/twitter/library/client/bk;",
            "Lcom/twitter/library/client/bd;",
            "Landroid/content/Context;",
            "Lcia;",
            "Lcom/twitter/android/sn;",
            "Lcom/twitter/library/util/FriendshipCache;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/twitter/android/sh;->a:Lcom/twitter/util/object/i;

    .line 47
    iput-object p2, p0, Lcom/twitter/android/sh;->b:Lcom/twitter/library/client/bk;

    .line 48
    iput-object p3, p0, Lcom/twitter/android/sh;->c:Lcom/twitter/library/client/bd;

    .line 49
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/sh;->d:Landroid/content/Context;

    .line 50
    iput-object p5, p0, Lcom/twitter/android/sh;->e:Lcia;

    .line 51
    iput-object p6, p0, Lcom/twitter/android/sh;->f:Lcom/twitter/android/sn;

    .line 52
    iput-object p7, p0, Lcom/twitter/android/sh;->g:Lcom/twitter/library/util/FriendshipCache;

    .line 53
    return-void
.end method

.method private a(Lcom/twitter/android/timeline/bp;Lcom/twitter/model/timeline/i;Z)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/twitter/android/sh;->d:Landroid/content/Context;

    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/twitter/android/sh;->a(Landroid/content/Context;Lcom/twitter/model/timeline/i;Lcom/twitter/android/timeline/bp;Z)Lbrv;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/twitter/android/sh;->c:Lcom/twitter/library/client/bd;

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 97
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/twitter/model/timeline/i;Lcom/twitter/android/timeline/bp;Z)Lbrv;
    .locals 9
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 104
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v6

    .line 105
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v7

    .line 106
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v8

    .line 107
    invoke-virtual {p3, v6, v7, v8}, Lcom/twitter/android/timeline/bp;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 108
    new-instance v0, Lbrv;

    new-instance v2, Lcom/twitter/library/service/ab;

    iget-object v1, p0, Lcom/twitter/android/sh;->b:Lcom/twitter/library/client/bk;

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/twitter/library/service/ab;-><init>(Lcom/twitter/library/client/Session;)V

    iget-object v4, p3, Lcom/twitter/android/timeline/bp;->o:Lcom/twitter/model/timeline/al;

    move-object v1, p1

    move-object v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v8}, Lbrv;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;Lcom/twitter/model/timeline/i;Lcom/twitter/model/timeline/al;ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public a(Lcom/twitter/library/widget/InlineDismissView;Lcom/twitter/model/timeline/i;)V
    .locals 3

    .prologue
    .line 59
    const v0, 0x7f13006f

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/InlineDismissView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/bp;

    .line 60
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/twitter/android/sh;->a(Lcom/twitter/android/timeline/bp;Lcom/twitter/model/timeline/i;Z)V

    .line 61
    iget-object v1, p0, Lcom/twitter/android/sh;->e:Lcia;

    iget-object v0, v0, Lcom/twitter/android/timeline/bp;->o:Lcom/twitter/model/timeline/al;

    const-string/jumbo v2, "click"

    invoke-virtual {v1, v0, p2, v2}, Lcia;->a(Lcom/twitter/model/timeline/al;Lcom/twitter/model/timeline/i;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public b(Lcom/twitter/library/widget/InlineDismissView;Lcom/twitter/model/timeline/i;)V
    .locals 3

    .prologue
    .line 68
    const v0, 0x7f13006f

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/InlineDismissView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/bp;

    .line 69
    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/twitter/android/sh;->a(Lcom/twitter/android/timeline/bp;Lcom/twitter/model/timeline/i;Z)V

    .line 70
    iget-object v1, p0, Lcom/twitter/android/sh;->e:Lcia;

    iget-object v0, v0, Lcom/twitter/android/timeline/bp;->o:Lcom/twitter/model/timeline/al;

    const-string/jumbo v2, "undo"

    invoke-virtual {v1, v0, p2, v2}, Lcia;->a(Lcom/twitter/model/timeline/al;Lcom/twitter/model/timeline/i;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public c(Lcom/twitter/library/widget/InlineDismissView;Lcom/twitter/model/timeline/i;)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 76
    const v0, 0x7f13006f

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/InlineDismissView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/twitter/android/timeline/bp;

    .line 77
    instance-of v0, v8, Lcom/twitter/android/timeline/cn;

    if-eqz v0, :cond_0

    move-object v0, v8

    .line 78
    check-cast v0, Lcom/twitter/android/timeline/cn;

    iget-object v2, v0, Lcom/twitter/android/timeline/cn;->b:Lcom/twitter/model/core/Tweet;

    .line 80
    invoke-virtual {v8}, Lcom/twitter/android/timeline/bp;->c()Lcom/twitter/android/timeline/bj;

    move-result-object v0

    iget v0, v0, Lcom/twitter/android/timeline/bj;->n:I

    .line 79
    invoke-static {v0}, Lcom/twitter/android/eg;->a(I)Lcom/twitter/model/core/TweetActionType;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/twitter/android/sh;->f:Lcom/twitter/android/sn;

    iget-object v3, p0, Lcom/twitter/android/sh;->g:Lcom/twitter/library/util/FriendshipCache;

    .line 83
    invoke-virtual {v8}, Lcom/twitter/android/timeline/bp;->d()Ljava/lang/String;

    move-result-object v6

    move-object v5, v4

    move-object v7, v4

    .line 82
    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/TweetActionType;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/util/FriendshipCache;Lcom/twitter/library/scribe/TwitterScribeItem;Lcom/twitter/library/widget/av;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/sh;->a:Lcom/twitter/util/object/i;

    invoke-interface {v0}, Lcom/twitter/util/object/i;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/hn;

    invoke-interface {v0, p1, v8}, Lcom/twitter/android/hn;->b(Lcom/twitter/library/widget/InlineDismissView;Lcom/twitter/android/timeline/bp;)V

    .line 88
    const/4 v0, 0x1

    invoke-direct {p0, v8, p2, v0}, Lcom/twitter/android/sh;->a(Lcom/twitter/android/timeline/bp;Lcom/twitter/model/timeline/i;Z)V

    .line 89
    iget-object v0, p0, Lcom/twitter/android/sh;->e:Lcia;

    iget-object v1, v8, Lcom/twitter/android/timeline/bp;->o:Lcom/twitter/model/timeline/al;

    const-string/jumbo v2, "undo"

    invoke-virtual {v0, v1, p2, v2}, Lcia;->a(Lcom/twitter/model/timeline/al;Lcom/twitter/model/timeline/i;Ljava/lang/String;)V

    .line 90
    return-void
.end method
