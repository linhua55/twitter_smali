.class public Lary;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lasa;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/library/client/bk;

.field private final c:Lcom/twitter/library/client/bd;

.field private final d:Lasb;

.field private final e:Lcom/twitter/model/core/Tweet;

.field private final f:Lcom/twitter/library/util/FriendshipCache;

.field private final g:Lcom/twitter/library/scribe/TwitterScribeItem;

.field private final h:Lcom/twitter/library/widget/av;

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Larz;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Larz;->a(Larz;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lary;->a:Landroid/content/Context;

    .line 39
    invoke-static {p1}, Larz;->b(Larz;)Lcom/twitter/library/client/bk;

    move-result-object v0

    iput-object v0, p0, Lary;->b:Lcom/twitter/library/client/bk;

    .line 40
    invoke-static {p1}, Larz;->c(Larz;)Lcom/twitter/library/client/bd;

    move-result-object v0

    iput-object v0, p0, Lary;->c:Lcom/twitter/library/client/bd;

    .line 41
    invoke-static {p1}, Larz;->d(Larz;)Lasb;

    move-result-object v0

    iput-object v0, p0, Lary;->d:Lasb;

    .line 42
    invoke-static {p1}, Larz;->e(Larz;)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    iput-object v0, p0, Lary;->e:Lcom/twitter/model/core/Tweet;

    .line 43
    invoke-static {p1}, Larz;->f(Larz;)Lcom/twitter/library/util/FriendshipCache;

    move-result-object v0

    iput-object v0, p0, Lary;->f:Lcom/twitter/library/util/FriendshipCache;

    .line 44
    invoke-static {p1}, Larz;->g(Larz;)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    iput-object v0, p0, Lary;->g:Lcom/twitter/library/scribe/TwitterScribeItem;

    .line 45
    invoke-static {p1}, Larz;->h(Larz;)Lcom/twitter/library/widget/av;

    move-result-object v0

    iput-object v0, p0, Lary;->h:Lcom/twitter/library/widget/av;

    .line 46
    invoke-static {p1}, Larz;->i(Larz;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lary;->i:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 52
    iget-object v0, p0, Lary;->f:Lcom/twitter/library/util/FriendshipCache;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    const-string/jumbo v2, "FriendshipCache is null in FollowAction"

    invoke-static {v0, v2}, Lcom/twitter/util/h;->a(ZLjava/lang/String;)Z

    .line 53
    iget-object v0, p0, Lary;->f:Lcom/twitter/library/util/FriendshipCache;

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lary;->f:Lcom/twitter/library/util/FriendshipCache;

    iget-object v2, p0, Lary;->e:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v2, Lcom/twitter/model/core/Tweet;->o:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/util/FriendshipCache;->k(J)Z

    move-result v0

    if-nez v0, :cond_4

    .line 55
    :goto_1
    iget-object v0, p0, Lary;->h:Lcom/twitter/library/widget/av;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lary;->h:Lcom/twitter/library/widget/av;

    invoke-interface {v0, v1}, Lcom/twitter/library/widget/av;->c(Z)V

    .line 59
    :cond_0
    iget-object v0, p0, Lary;->b:Lcom/twitter/library/client/bk;

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v3

    .line 61
    if-eqz v1, :cond_5

    .line 62
    iget-object v0, p0, Lary;->d:Lasb;

    iget-object v1, p0, Lary;->i:Ljava/lang/String;

    const-string/jumbo v2, "follow"

    iget-object v4, p0, Lary;->e:Lcom/twitter/model/core/Tweet;

    iget-object v5, p0, Lary;->g:Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-virtual {v0, v1, v2, v4, v5}, Lasb;->a(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    .line 63
    iget-object v0, p0, Lary;->c:Lcom/twitter/library/client/bd;

    new-instance v1, Lbtz;

    iget-object v2, p0, Lary;->a:Landroid/content/Context;

    iget-object v4, p0, Lary;->e:Lcom/twitter/model/core/Tweet;

    iget-wide v4, v4, Lcom/twitter/model/core/Tweet;->o:J

    iget-object v6, p0, Lary;->e:Lcom/twitter/model/core/Tweet;

    .line 64
    invoke-virtual {v6}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lbtz;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;)V

    .line 63
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lary;->f:Lcom/twitter/library/util/FriendshipCache;

    iget-object v1, p0, Lary;->e:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v1, Lcom/twitter/model/core/Tweet;->o:J

    .line 66
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/util/FriendshipCache;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lary;->f:Lcom/twitter/library/util/FriendshipCache;

    iget-object v1, p0, Lary;->e:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v1, Lcom/twitter/model/core/Tweet;->o:J

    .line 67
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/util/FriendshipCache;->j(J)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 68
    :cond_1
    or-int/lit8 v0, v7, 0x1

    or-int/lit8 v0, v0, 0x40

    .line 70
    iget-object v1, p0, Lary;->f:Lcom/twitter/library/util/FriendshipCache;

    iget-object v2, p0, Lary;->e:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v2, Lcom/twitter/model/core/Tweet;->o:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/twitter/library/util/FriendshipCache;->b(JI)V

    .line 79
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v7

    .line 52
    goto :goto_0

    :cond_4
    move v1, v7

    .line 54
    goto :goto_1

    .line 72
    :cond_5
    iget-object v0, p0, Lary;->d:Lasb;

    iget-object v1, p0, Lary;->i:Ljava/lang/String;

    const-string/jumbo v2, "unfollow"

    iget-object v4, p0, Lary;->e:Lcom/twitter/model/core/Tweet;

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lasb;->a(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    .line 73
    iget-object v0, p0, Lary;->c:Lcom/twitter/library/client/bd;

    new-instance v1, Lbuc;

    iget-object v2, p0, Lary;->a:Landroid/content/Context;

    iget-object v4, p0, Lary;->e:Lcom/twitter/model/core/Tweet;

    iget-wide v4, v4, Lcom/twitter/model/core/Tweet;->o:J

    iget-object v6, p0, Lary;->e:Lcom/twitter/model/core/Tweet;

    .line 75
    invoke-virtual {v6}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lbuc;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;)V

    .line 73
    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lary;->f:Lcom/twitter/library/util/FriendshipCache;

    iget-object v1, p0, Lary;->e:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v1, Lcom/twitter/model/core/Tweet;->o:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/util/FriendshipCache;->c(J)V

    goto :goto_2
.end method
