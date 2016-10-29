.class Lcom/twitter/android/livevideo/player/o;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/livevideo/player/t;


# instance fields
.field final synthetic a:Lcom/twitter/android/livevideo/player/LiveVideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/livevideo/player/LiveVideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/twitter/android/livevideo/player/o;->a:Lcom/twitter/android/livevideo/player/LiveVideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/twitter/android/livevideo/player/o;->a:Lcom/twitter/android/livevideo/player/LiveVideoPlayerActivity;

    invoke-virtual {v0}, Lcom/twitter/android/livevideo/player/LiveVideoPlayerActivity;->finish()V

    .line 40
    return-void
.end method
