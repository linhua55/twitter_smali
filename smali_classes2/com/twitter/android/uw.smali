.class public Lcom/twitter/android/uw;
.super Lcom/twitter/android/sn;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/TweetFragment;


# direct methods
.method public constructor <init>(Lcom/twitter/android/TweetFragment;Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 0

    .prologue
    .line 2544
    iput-object p1, p0, Lcom/twitter/android/uw;->a:Lcom/twitter/android/TweetFragment;

    .line 2545
    invoke-direct {p0, p2, p3}, Lcom/twitter/android/sn;-><init>(Landroid/support/v4/app/Fragment;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 2546
    return-void
.end method


# virtual methods
.method protected a(JZI)V
    .locals 1

    .prologue
    .line 2550
    iget-object v0, p0, Lcom/twitter/android/uw;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/twitter/android/TweetFragment;->a(JZI)V

    .line 2551
    return-void
.end method

.method protected a(Lcom/twitter/model/core/Tweet;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/Session;Lcom/twitter/library/scribe/TwitterScribeItem;)V
    .locals 0

    .prologue
    .line 2556
    invoke-super/range {p0 .. p5}, Lcom/twitter/android/sn;->a(Lcom/twitter/model/core/Tweet;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/client/Session;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    .line 2557
    return-void
.end method
