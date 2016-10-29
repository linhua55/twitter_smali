.class Lcom/twitter/library/av/playback/av;
.super Landroid/content/BroadcastReceiver;
.source "Twttr"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation


# instance fields
.field private final a:Lcom/twitter/library/av/playback/AVPlayer;

.field private final b:Lcom/twitter/library/av/playback/bf;


# direct methods
.method constructor <init>(Lcom/twitter/library/av/playback/AVPlayer;Lcom/twitter/library/av/playback/bf;)V
    .locals 0

    .prologue
    .line 1687
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1688
    iput-object p1, p0, Lcom/twitter/library/av/playback/av;->a:Lcom/twitter/library/av/playback/AVPlayer;

    .line 1689
    iput-object p2, p0, Lcom/twitter/library/av/playback/av;->b:Lcom/twitter/library/av/playback/bf;

    .line 1690
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1694
    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1695
    iget-object v0, p0, Lcom/twitter/library/av/playback/av;->b:Lcom/twitter/library/av/playback/bf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/bf;->a(Z)V

    .line 1696
    iget-object v0, p0, Lcom/twitter/library/av/playback/av;->a:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1697
    iget-object v0, p0, Lcom/twitter/library/av/playback/av;->a:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->t()V

    .line 1699
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/playback/av;->a:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0, v2}, Lcom/twitter/library/av/playback/AVPlayer;->a(Z)J

    .line 1704
    :cond_1
    :goto_0
    return-void

    .line 1700
    :cond_2
    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1701
    iget-object v0, p0, Lcom/twitter/library/av/playback/av;->b:Lcom/twitter/library/av/playback/bf;

    invoke-virtual {v0, v2}, Lcom/twitter/library/av/playback/bf;->a(Z)V

    .line 1702
    iget-object v0, p0, Lcom/twitter/library/av/playback/av;->a:Lcom/twitter/library/av/playback/AVPlayer;

    invoke-virtual {v0}, Lcom/twitter/library/av/playback/AVPlayer;->m()V

    goto :goto_0
.end method
