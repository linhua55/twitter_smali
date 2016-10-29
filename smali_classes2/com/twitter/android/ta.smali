.class Lcom/twitter/android/ta;
.super Lcom/twitter/library/service/z;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/model/core/Tweet;

.field final synthetic b:Lcom/twitter/library/util/FriendshipCache;

.field final synthetic c:Lcom/twitter/android/sn;


# direct methods
.method constructor <init>(Lcom/twitter/android/sn;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/util/FriendshipCache;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/twitter/android/ta;->c:Lcom/twitter/android/sn;

    iput-object p2, p0, Lcom/twitter/android/ta;->a:Lcom/twitter/model/core/Tweet;

    iput-object p3, p0, Lcom/twitter/android/ta;->b:Lcom/twitter/library/util/FriendshipCache;

    invoke-direct {p0}, Lcom/twitter/library/service/z;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 379
    check-cast p1, Lcom/twitter/library/service/x;

    invoke-virtual {p0, p1}, Lcom/twitter/android/ta;->a(Lcom/twitter/library/service/x;)V

    return-void
.end method

.method public a(Lcom/twitter/library/service/x;)V
    .locals 5

    .prologue
    .line 382
    iget-object v1, p0, Lcom/twitter/android/ta;->c:Lcom/twitter/android/sn;

    iget-object v0, p0, Lcom/twitter/android/ta;->a:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v0, Lcom/twitter/model/core/Tweet;->o:J

    invoke-virtual {p1}, Lcom/twitter/library/service/x;->l()Lcom/twitter/internal/android/service/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/service/aa;

    iget-object v4, p0, Lcom/twitter/android/ta;->b:Lcom/twitter/library/util/FriendshipCache;

    invoke-static {v1, v2, v3, v0, v4}, Lcom/twitter/android/sn;->b(Lcom/twitter/android/sn;JLcom/twitter/library/service/aa;Lcom/twitter/library/util/FriendshipCache;)V

    .line 384
    return-void
.end method
