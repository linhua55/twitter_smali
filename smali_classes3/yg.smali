.class Lyg;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lxz;


# direct methods
.method constructor <init>(Lxz;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lyg;->a:Lxz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 438
    new-instance v1, Lcom/twitter/android/av/bj;

    invoke-direct {v1}, Lcom/twitter/android/av/bj;-><init>()V

    new-instance v2, Lcom/twitter/library/av/playback/bv;

    invoke-direct {v2}, Lcom/twitter/library/av/playback/bv;-><init>()V

    iget-object v0, p0, Lyg;->a:Lxz;

    iget-object v0, v0, Lxz;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    .line 439
    invoke-virtual {v2, v0}, Lcom/twitter/library/av/playback/bv;->a(Lcom/twitter/model/dms/l;)Lcom/twitter/library/av/playback/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/bv;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/av/playback/AVDataSource;

    invoke-virtual {v1, v0}, Lcom/twitter/android/av/bj;->a(Lcom/twitter/library/av/playback/AVDataSource;)Lcom/twitter/library/av/ap;

    move-result-object v0

    iget-object v1, p0, Lyg;->a:Lxz;

    .line 440
    invoke-static {v1}, Lxz;->a(Lxz;)Lcom/twitter/library/scribe/TwitterScribeAssociation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/ap;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/library/av/ap;

    move-result-object v0

    iget-object v1, p0, Lyg;->a:Lxz;

    iget-object v1, v1, Lxz;->g:Landroid/content/Context;

    .line 441
    invoke-virtual {v0, v1}, Lcom/twitter/library/av/ap;->a(Ljava/lang/Object;)V

    .line 442
    return-void
.end method
