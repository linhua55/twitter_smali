.class public Lcom/twitter/android/moments/data/as;
.super Lcom/twitter/android/sn;
.source "Twttr"


# instance fields
.field private final a:Lcet;

.field private final b:Ldby;

.field private final j:Lrx/t;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcet;Ldby;Lrx/t;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/sn;-><init>(Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 38
    iput-object p3, p0, Lcom/twitter/android/moments/data/as;->a:Lcet;

    .line 39
    iput-object p4, p0, Lcom/twitter/android/moments/data/as;->b:Ldby;

    .line 40
    iput-object p5, p0, Lcom/twitter/android/moments/data/as;->j:Lrx/t;

    .line 41
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/util/FriendshipCache;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/Session;Lcom/twitter/library/widget/av;)V
    .locals 7

    .prologue
    .line 47
    new-instance v0, Lcom/twitter/android/moments/data/at;

    iget-object v3, p0, Lcom/twitter/android/moments/data/as;->a:Lcet;

    iget-object v4, p0, Lcom/twitter/android/moments/data/as;->b:Ldby;

    iget-object v5, p0, Lcom/twitter/android/moments/data/as;->j:Lrx/t;

    move-object v1, p5

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/moments/data/at;-><init>(Lcom/twitter/library/widget/av;Lcom/twitter/model/core/Tweet;Lcet;Ldby;Lrx/t;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v0

    invoke-super/range {v1 .. v6}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/util/FriendshipCache;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/Session;Lcom/twitter/library/widget/av;)V

    .line 50
    return-void
.end method
