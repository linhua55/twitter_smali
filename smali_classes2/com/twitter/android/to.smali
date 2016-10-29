.class Lcom/twitter/android/to;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/base/m;


# instance fields
.field final synthetic a:Lciv;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/twitter/model/core/Tweet;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/twitter/library/util/FriendshipCache;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/twitter/android/tn;


# direct methods
.method constructor <init>(Lcom/twitter/android/tn;Lciv;Ljava/util/List;Lcom/twitter/model/core/Tweet;Ljava/lang/String;Lcom/twitter/library/util/FriendshipCache;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/twitter/android/to;->g:Lcom/twitter/android/tn;

    iput-object p2, p0, Lcom/twitter/android/to;->a:Lciv;

    iput-object p3, p0, Lcom/twitter/android/to;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/twitter/android/to;->c:Lcom/twitter/model/core/Tweet;

    iput-object p5, p0, Lcom/twitter/android/to;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/twitter/android/to;->e:Lcom/twitter/library/util/FriendshipCache;

    iput-object p7, p0, Lcom/twitter/android/to;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;II)V
    .locals 6

    .prologue
    .line 349
    iget-object v0, p0, Lcom/twitter/android/to;->a:Lciv;

    iget-object v1, p0, Lcom/twitter/android/to;->b:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/core/TweetActionType;

    iget-object v2, p0, Lcom/twitter/android/to;->c:Lcom/twitter/model/core/Tweet;

    iget-object v3, p0, Lcom/twitter/android/to;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/android/to;->e:Lcom/twitter/library/util/FriendshipCache;

    iget-object v5, p0, Lcom/twitter/android/to;->f:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lciv;->a(Lcom/twitter/model/core/TweetActionType;Lcom/twitter/model/core/Tweet;Ljava/lang/String;Lcom/twitter/library/util/FriendshipCache;Ljava/lang/String;)Z

    .line 351
    return-void
.end method
