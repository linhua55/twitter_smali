.class Lcom/twitter/android/tb;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/base/m;


# instance fields
.field final synthetic a:Lcom/twitter/model/core/Tweet;

.field final synthetic b:Lcom/twitter/library/client/Session;

.field final synthetic c:Lcom/twitter/library/util/FriendshipCache;

.field final synthetic d:Lcom/twitter/library/widget/av;

.field final synthetic e:Lcom/twitter/android/sn;


# direct methods
.method constructor <init>(Lcom/twitter/android/sn;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/client/Session;Lcom/twitter/library/util/FriendshipCache;Lcom/twitter/library/widget/av;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/twitter/android/tb;->e:Lcom/twitter/android/sn;

    iput-object p2, p0, Lcom/twitter/android/tb;->a:Lcom/twitter/model/core/Tweet;

    iput-object p3, p0, Lcom/twitter/android/tb;->b:Lcom/twitter/library/client/Session;

    iput-object p4, p0, Lcom/twitter/android/tb;->c:Lcom/twitter/library/util/FriendshipCache;

    iput-object p5, p0, Lcom/twitter/android/tb;->d:Lcom/twitter/library/widget/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;II)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 409
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/twitter/android/tb;->e:Lcom/twitter/android/sn;

    const-string/jumbo v1, "block_dialog"

    const-string/jumbo v2, "block"

    iget-object v3, p0, Lcom/twitter/android/tb;->a:Lcom/twitter/model/core/Tweet;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/twitter/android/sn;->a(Lcom/twitter/android/sn;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    .line 411
    iget-object v0, p0, Lcom/twitter/android/tb;->e:Lcom/twitter/android/sn;

    iget-object v0, v0, Lcom/twitter/android/sn;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    new-instance v1, Lbrc;

    iget-object v2, p0, Lcom/twitter/android/tb;->e:Lcom/twitter/android/sn;

    iget-object v2, v2, Lcom/twitter/android/sn;->g:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/android/tb;->b:Lcom/twitter/library/client/Session;

    iget-object v4, p0, Lcom/twitter/android/tb;->a:Lcom/twitter/model/core/Tweet;

    iget-wide v4, v4, Lcom/twitter/model/core/Tweet;->o:J

    iget-object v6, p0, Lcom/twitter/android/tb;->a:Lcom/twitter/model/core/Tweet;

    .line 413
    invoke-virtual {v6}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v6

    invoke-direct/range {v1 .. v7}, Lbrc;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;I)V

    new-instance v2, Lcom/twitter/android/tc;

    invoke-direct {v2, p0}, Lcom/twitter/android/tc;-><init>(Lcom/twitter/android/tb;)V

    .line 411
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 423
    iget-object v0, p0, Lcom/twitter/android/tb;->d:Lcom/twitter/library/widget/av;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/twitter/android/tb;->d:Lcom/twitter/library/widget/av;

    invoke-interface {v0, v7}, Lcom/twitter/library/widget/av;->d(Z)V

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/tb;->e:Lcom/twitter/android/sn;

    const-string/jumbo v1, "block_dialog"

    const-string/jumbo v2, "cancel"

    iget-object v3, p0, Lcom/twitter/android/tb;->a:Lcom/twitter/model/core/Tweet;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/twitter/android/sn;->a(Lcom/twitter/android/sn;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    goto :goto_0
.end method
